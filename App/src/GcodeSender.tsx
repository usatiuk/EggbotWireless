import * as React from "react";
import { IEggbotStatus, getStatus, putCommand } from "~api/eggbot";
import GcodeVisualiser from "~GcodeVisualiser";
import { parseCommand } from "~GcodeParser";

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
    constructor(props: {}) {
        super(props);
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
        const gcodeLinesQueue = [...this.state.gcodeLinesQueue];
        const gcodeLinesSent = [...this.state.gcodeLinesSent];
        const { executing } = this.state;
        if (executing && status.commandQueue < 10) {
            if (gcodeLinesQueue && gcodeLinesQueue.length > 0) {
                const command = gcodeLinesQueue.shift();
                console.log(parseCommand(command));
                putCommand(command.substr(0, 50));
                gcodeLinesSent.push(command);
            }
        }

        await this.setState({ gcodeLinesQueue, gcodeLinesSent });
    }

    render() {
        const { gcodeLinesQueue, gcodeLinesSent } = this.state;

        const queuedCommandsList = gcodeLinesQueue.map(el => <div>{el}</div>);

        const executedCommandsList = gcodeLinesSent.map(el => <div>{el}</div>);

        return (
            <>
                <div>
                    {this.state.executing ? (
                        <div>
                            <div style={{ color: "green" }}>
                                {executedCommandsList}
                            </div>
                            <div>{queuedCommandsList}</div>
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
                <GcodeVisualiser
                    gcodeLinesQueue={gcodeLinesQueue}
                    gcodeLinesSent={gcodeLinesSent}
                />
            </>
        );
    }
}

export const GcodeSender = GcodeSenderComponent;
