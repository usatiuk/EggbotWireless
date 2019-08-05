export enum CommandType {
    unk = "unk",
    G01 = "G01",
    G00 = "G00",
}

export interface GenericCommand {
    type: CommandType;
}

export interface G01Command extends GenericCommand {
    type: CommandType.G01;
    X?: number;
    Y?: number;
    Z?: number;
    F?: number;
}

export interface G00Command extends GenericCommand {
    type: CommandType.G00;
    X?: number;
    Y?: number;
    Z?: number;
    F?: number;
}

export interface UnkCommand extends GenericCommand {
    type: CommandType.unk;
}

export type Command = G01Command | G00Command | UnkCommand;

function getCommandType(type: string): CommandType {
    if (type.toUpperCase() === "G01") {
        return CommandType.G01;
    }
    if (type.toUpperCase() === "G00") {
        return CommandType.G00;
    }

    return CommandType.unk;
}

export function parseCommand(cmd: string): Command {
    const words = cmd.toUpperCase().split(" ");
    let command: Command = { type: getCommandType(words.shift()) };

    const args = words.map(word => {
        const arg = word.slice(0, 1);
        const val = word.slice(1);
        (command as any)[arg] = parseFloat(val);
    });

    console.log(command);
    return command;
}
