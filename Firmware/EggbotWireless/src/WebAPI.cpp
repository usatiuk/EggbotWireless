#include "WebAPI.h"

ESP8266WebServer server(80);

WebAPI::WebAPI() {}

void WebAPI::handleNotFound() {
    server.send(404, "text/plain", "File Not Found\n\n");
}

void WebAPI::init() {
    server.onNotFound(std::bind(&WebAPI::handleNotFound, this));
    server.begin();
}

void WebAPI::loopRoutine() { server.handleClient(); }

WebAPI webApi;