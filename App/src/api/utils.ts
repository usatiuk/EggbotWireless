const root = "http://eggbot.local";

export async function fetchJSON(
    path: string,
    method: string,
    body?: string | object,
    headers?: Record<string, string>,
) {
    if (typeof body === "object") {
        body = JSON.stringify(body);
    }
    const response = await fetch(root + path, {
        method,
        body,
        headers: {
            ...headers,
            "Content-Type": "application/json",
        },
    });
    const json = await response.json();
    return json;
}
