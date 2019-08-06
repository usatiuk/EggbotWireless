#ifndef WEB_API_H
#define WEB_API_H

#include <Arduino.h>
#include <ESP8266WebServer.h>
#include <ArduinoJson.h>
#include <FS.h>

class WebAPI {
   private:
    void handleNotFound();
    void handlePutCommand();
    void handleGetStatus();
    void sendCORS();
    bool getFile(String filename);
    String getContentType(String filename);

    String getStatusJson();
   public:
    WebAPI();
    void init();
    void loopRoutine();
};

extern WebAPI webApi;

#endif  // WEB_API_H