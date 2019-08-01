#include "WebAPI.h"
#include "QueueManager.h"

ESP8266WebServer server(80);

WebAPI::WebAPI() {}

void WebAPI::handleNotFound() {
    server.send(404, "text/plain", "File Not Found\n\n");
}

void WebAPI::handlePutCommand() {
    queueManager.putCommand(server.arg("plain").c_str());
    server.send(200, "text/plain", String(queueManager.execQueueSize()));
}

void WebAPI::init() {
    server.on("/putCommand", HTTP_POST, std::bind(&WebAPI::handlePutCommand, this));
    server.onNotFound(std::bind(&WebAPI::handleNotFound, this));
    server.begin();
}

void WebAPI::loopRoutine() { server.handleClient(); }

WebAPI webApi;