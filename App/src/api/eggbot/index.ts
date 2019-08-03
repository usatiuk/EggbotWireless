import { fetchJSON } from "../utils";

export interface IEggbotStatus {
    commandQueue: number;
    eggDia: number;
    eggLen: number;
    feedrate: number;
    mmE: number;
    mmS: number;
    pEng: number;
    xLim: number;
}

export async function putCommand(command: string) {
    return fetchJSON("/putCommand", "POST", command);
}

export async function getStatus() {
    return fetchJSON("/getStatus", "GET");
}
