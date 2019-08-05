import * as React from "react";
import { Layer, Rect, Stage, Group } from "react-konva";

interface IGcodeVisualiserProps {
    gcodeLinesSent: string[];
    gcodeLinesQueue: string[];
}

export default class GcodeVisualiser extends React.PureComponent<
    IGcodeVisualiserProps,
    {}
> {
    constructor(props: IGcodeVisualiserProps) {
        super(props);
    }
    render() {
        return (
            <Stage width={700} height={700}>
                <Layer>
                    <Rect
                        x={10}
                        y={10}
                        width={50}
                        height={50}
                        fill={"black"}
                        shadowBlur={10}
                    />
                </Layer>
            </Stage>
        );
    }
}
