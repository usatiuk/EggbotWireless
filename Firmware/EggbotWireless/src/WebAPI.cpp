#include "WebAPI.h"
#include "QueueManager.h"

ESP8266WebServer server(80);

WebAPI::WebAPI() {}

String WebAPI::getStatusJson() {
    StaticJsonDocument<256> doc;
    Status status = executor.status();

    doc["commandQueue"] = queueManager.execQueueSize();
    doc["eggDia"] = status.eggDia;
    doc["eggLen"] = status.eggLen;
    doc["feedrate"] = status.feedrate;
    doc["mmE"] = status.mmE;
    doc["mmS"] = status.mmS;
    doc["pEng"] = status.pEng;
    doc["xLim"] = status.xLim;

    String out;
    serializeJson(doc, out);
    return out;
}

void WebAPI::handleNotFound() {
    server.send(404, "text/plain", "File Not Found\n\n");
}

void WebAPI::handlePutCommand() {
    queueManager.putCommand(server.arg("plain").c_str());
    server.send(200, "application/json", getStatusJson());
}

void WebAPI::handleGetStatus() {
    server.send(200, "application/json", getStatusJson());
}

void WebAPI::init() {
    server.on("/putCommand", HTTP_POST,
              std::bind(&WebAPI::handlePutCommand, this));
    server.on("/getStatus", HTTP_GET,
              std::bind(&WebAPI::handleGetStatus, this));

    server.onNotFound(std::bind(&WebAPI::handleNotFound, this));
    server.begin();
}

void WebAPI::loopRoutine() { server.handleClient(); }

WebAPI webApi;