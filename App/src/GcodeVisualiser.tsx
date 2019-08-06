import * as React from "react";
import { Layer, Rect, Stage, Group, Line } from "react-konva";
import { parseCommand, CommandType } from "~GcodeParser";

interface IGcodeVisualiserProps {
    gcodeLinesSent: string[];
    gcodeLinesQueue: string[];
}

const mult = 3;
const width = 500;
const height = 500;

export default class GcodeVisualiser extends React.PureComponent<
    IGcodeVisualiserProps,
    {}
> {
    constructor(props: IGcodeVisualiserProps) {
        super(props);
    }
    render() {
        let lastPos: { x: number; y: number; eng: boolean } = {
            x: 60,
            y: 0,
            eng: false,
        };

        const { gcodeLinesQueue, gcodeLinesSent } = this.props;

        const sentLines = gcodeLinesSent.map(sl => {
            const command = parseCommand(sl);
            if (
                command.type === CommandType.G00 ||
                command.type === CommandType.G01
            ) {
                const line = (
                    <Line
                        points={[
                            lastPos.x * mult,
                            height - lastPos.y * mult,
                            (command.X ? command.X : lastPos.x) * mult,
                            height - (command.Y ? command.Y : lastPos.y) * mult,
                        ]}
                        stroke={
                            (command.Z
                              ? command.Z
                              : lastPos.eng)
                                ? "green"
                                : "blue"
                        }
                        strokeWidth={
                            (command.Z ? command.Z : lastPos.eng) ? 1 : 0.5
                        }
                    />
                );
                if (command.X) {
                    lastPos.x = command.X;
                }
                if (command.Y) {
                    lastPos.y = command.Y;
                }
                if (command.Z) {
                    if (command.Z >= 0) {
                        lastPos.eng = false;
                    } else {
                        lastPos.eng = true;
                    }
                }
                return line;
            }
        });

        const pendLines = gcodeLinesQueue.map(sl => {
            const command = parseCommand(sl);
            if (
                command.type === CommandType.G00 ||
                command.type === CommandType.G01
            ) {
                const line = (
                    <Line
                        points={[
                            lastPos.x * mult,
                            height - lastPos.y * mult,
                            (command.X ? command.X : lastPos.x) * mult,
                            height - (command.Y ? command.Y : lastPos.y) * mult,
                        ]}
                        stroke={
                            (command.Z
                              ? command.Z
                              : lastPos.eng)
                                ? "black"
                                : "blue"
                        }
                        strokeWidth={
                            (command.Z ? command.Z : lastPos.eng) ? 1 : 0.5
                        }
                    />
                );
                if (command.X) {
                    lastPos.x = command.X;
                }
                if (command.Y) {
                    lastPos.y = command.Y;
                }
                if (command.Z) {
                    if (command.Z >= 0) {
                        lastPos.eng = false;
                    } else {
                        lastPos.eng = true;
                    }
                }
                return line;
            }
        });

        return (
            <Stage width={width} height={height}>
                <Layer>{[...sentLines, ...pendLines]}</Layer>
            </Stage>
        );
    }
}
