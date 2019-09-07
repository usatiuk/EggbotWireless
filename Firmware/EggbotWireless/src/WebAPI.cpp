#include "WebAPI.h"
#include "Config.h"
#include "QueueManager.h"

ESP8266WebServer server(80);

WebAPI::WebAPI() {}

float getVin(float r1, float r2, float vout) { return ((r1 + r2) * vout) / r2; }

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
    doc["batt"] = getVin(battR1, battR2, analogRead(A0) / 1000.0);

    String out;
    serializeJson(doc, out);
    return out;
}

String WebAPI::getContentType(String filename) {
    if (server.hasArg("download")) {
        return "application/octet-stream";
    } else if (filename.endsWith(".html")) {
        return "text/html";
    } else if (filename.endsWith(".css")) {
        return "text/css";
    } else if (filename.endsWith(".js")) {
        return "application/javascript";
    } else if (filename.endsWith(".png")) {
        return "image/png";
    } else if (filename.endsWith(".gif")) {
        return "image/gif";
    } else if (filename.endsWith(".jpg")) {
        return "image/jpeg";
    } else if (filename.endsWith(".ico")) {
        return "image/x-icon";
    } else if (filename.endsWith(".xml")) {
        return "text/xml";
    } else if (filename.endsWith(".gz")) {
        return "application/x-gzip";
    }
    return "text/plain";
}

bool WebAPI::getFile(String filename) {
    if (filename.endsWith("/")) {
        filename += "index.html";
    }
    String contentType = getContentType(filename);
    String pathWithGz = filename + ".gz";
    if (SPIFFS.exists(pathWithGz) || SPIFFS.exists(filename)) {
        if (SPIFFS.exists(pathWithGz)) {
            filename += ".gz";
        }
        File file = SPIFFS.open(filename, "r");
        server.streamFile(file, contentType);
        file.close();
        return true;
    }
    return false;
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
        if (!getFile(server.uri())) {
            server.send(404, "text/plain", "");
        }
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

    SPIFFS.begin();
    server.begin();
}

void WebAPI::loopRoutine() { server.handleClient(); }

WebAPI webApi;