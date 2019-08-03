import * as React from "react";
import { IEggbotStatus, getStatus, putCommand } from "~api/eggbot";

interface IGcodeSenderComponentState {
    eggbotStatus: IEggbotStatus | null;
    gcodeSet: boolean;
    gcodeInput: string;

    gcodeLinesSent: string[];
    gcodeLinesQueue: string[];

    executing: boolean;
}

const defaultState: IGcodeSenderComponentState = {
    eggbotStatus: null,
    gcodeSet: false,
    gcodeInput: "",
    executing: false,
    gcodeLinesSent: [],
    gcodeLinesQueue: [],
};

export class GcodeSenderComponent extends React.PureComponent<
    {},
    IGcodeSenderComponentState
> {
    constructor() {
        super(null);
        this.state = defaultState;

        this.handleInputChange = this.handleInputChange.bind(this);
        this.handleSend = this.handleSend.bind(this);
        this.update = this.update.bind(this);

        setInterval(this.update, 100);
    }

    public handleInputChange(
        event:
            | React.FormEvent<HTMLInputElement>
            | React.FormEvent<HTMLTextAreaElement>,
    ) {
        const target = event.currentTarget;
        const value = target.value;
        const name = target.name;

        this.setState({
            [name]: value,
        } as any);
    }

    public handleSend() {
        const lines = this.state.gcodeInput.split("\n");
        this.setState({ gcodeLinesQueue: lines, executing: true });
    }

    public async update() {
        const status = await getStatus();
        console.log(status);
        const gcodeLinesQueue = [...this.state.gcodeLinesQueue];
        const gcodeLinesSent = [...this.state.gcodeLinesSent];
        const { executing } = this.state;
        if (executing && status.commandQueue < 5) {
            if (gcodeLinesQueue && gcodeLinesQueue.length > 0) {
                const command = gcodeLinesQueue.shift();
                putCommand(command.substr(0, 50));
                gcodeLinesSent.push(command);
            }
        }

        this.setState({ gcodeLinesQueue, gcodeLinesSent });
    }

    render() {
        const queuedCommands = this.state.gcodeLinesQueue.map(el => (
            <div>{el}</div>
        ));

        const executedCommands = this.state.gcodeLinesSent.map(el => (
            <div>{el}</div>
        ));

        return (
            <div>
                {this.state.executing ? (
                    <div>
                        <div style={{ color: "green" }}>{executedCommands}</div>
                        <div>{queuedCommands}</div>
                    </div>
                ) : (
                    <div>
                        <textarea
                            name="gcodeInput"
                            value={this.state.gcodeInput}
                            onChange={this.handleInputChange}
                        />
                        <button onClick={this.handleSend}>send</button>
                    </div>
                )}
            </div>
        );
    }
}

export const GcodeSender = GcodeSenderComponent;
