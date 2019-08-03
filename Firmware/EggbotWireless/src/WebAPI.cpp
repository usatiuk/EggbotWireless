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

void WebAPI::sendCORS() {
    server.sendHeader("Access-Control-Allow-Origin", "*");
    server.sendHeader("Access-Control-Max-Age", "10000");
    server.sendHeader("Access-Control-Allow-Methods", "PUT,POST,GET,OPTIONS");
    server.sendHeader("Access-Control-Allow-Headers",
                      "X-Requested-With, X-HTTP-Method-Override, "
                      "Content-Type, Cache-Control, Accept");
}

void WebAPI::handleNotFound() {
    if (server.method() == HTTP_OPTIONS) {
        sendCORS();
        server.send(204);
    } else {
        server.send(404, "text/plain", "");
    }
}

void WebAPI::handlePutCommand() {
    sendCORS();
    String cmd = server.arg("plain");
    queueManager.putCommand(cmd.c_str());
    server.send(200, "application/json", getStatusJson());
}

void WebAPI::handleGetStatus() {
    sendCORS();
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