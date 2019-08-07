import React from "react";

export interface ICommandsListProps {
    gcodeLinesQueue: string[];
    gcodeLinesSent: string[];
}

function CommandsListComponent({
    gcodeLinesQueue,
    gcodeLinesSent,
}: ICommandsListProps) {
    const queuedCommandsList = gcodeLinesQueue.map((el, i) => (
        <li key={i}>{el}</li>
    ));
    const executedCommandsList = gcodeLinesSent.map((el, i) => (
        <li style={{ color: "green" }} key={i}>
            {el}
        </li>
    ));

    return (
        <ul style={{ listStyle: "none" }}>
            {[...executedCommandsList, ...queuedCommandsList]}
        </ul>
    );
}

export const CommandsList = CommandsListComponent;
