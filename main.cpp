#include "logger/Logger.hpp"
#include "string"
#include <iostream>

/**
 * This function is used to call the log function of the class Logger and
 * write to the file log.txt any input value. Booleans must be logged as
 * true/false, integers don't have floating point
 */

main()
{
    std::string type;
    std::string value;
    // path to log.txt
    std::string p = "/Documents";
    /// user inputs the type and value he wants to log
    std::cout << "Input type: " << std::endl;
    std::cin >> type;
    std::cout << "Input value: " << std::endl;
    std::cin >> value;
    Logger LoggerObj(p);
    /// here the data is logged
    LoggerObj.log(type, value);
}

