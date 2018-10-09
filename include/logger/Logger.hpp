#ifndef LOGGER_HPP
#define LOGGER_HPP
#include "string"

class Logger
{
public:
    Logger(std::string p);
    void log(std::string type, std::string value);
private:
    std::string path;
    long double unixTimeStamp();
};

#endif
