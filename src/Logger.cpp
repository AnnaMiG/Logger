//this is the Logger class
#include <fstream>
#include <iostream>
#include <string>
#include <time.h>       // time_t, time (for timestamp in second)
#include <sys/time.h>   // gettimeofday, timeval (for timestamp in microsecond)
#include <iomanip>
#include "logger/Logger.hpp"
 
       
Logger::Logger(std::string p) : path(p) { }  //constructor takes path to file as argument


///@return unix time

long double Logger::unixTimeStamp()
{
    time_t time_stamp_sec; // timestamp in seconds
    time(&time_stamp_sec);  
    struct timeval timer_usec; 
    long double time_stamp_usec = 0.0; // timestamp in microseconds
    if (!gettimeofday(&timer_usec, NULL)) 
    {
        time_stamp_usec = ((long long int) timer_usec.tv_sec) + (long long int) timer_usec.tv_usec* 0.000001;
    }
    else
    {
        time_stamp_usec = -1;
    }
    return time_stamp_usec;
}

/**
 *this function is used to log to the file log.txt
 *it logs input values in any format followed by a timestamp
 *@param the type and the value of what we want to log
 *if the type is a boolean it must be logged as false/true
 *if the type is an integer it must not have decimal point
 */
void Logger::log(std::string type, std::string value)
{
    std::string path = " ";
    ///the three arguments that will be logged to log.txt
    int in_1 = 0;
    std::string in_2 = " ";
    long double in_3 = 0.0;
    ///temp is used to convert float to int
    int temp = 0;
    if (type == "bool")
    {
        if (value == "1" || value == "true") in_2 = "true";
        else in_2 = "false";
    }
    else if (type == "int")
    {
        temp = std::stoi(value);
        in_2 = std::to_string(temp);
    }
    else  in_2 = value;
    in_3 = unixTimeStamp();
    ///num will be used to find out how many lines are in log.txt
    int num = 0;
    char c = ' ';
    std::fstream f;
    std::string file_name = "log.txt";
    f.open(file_name.c_str());
    f.get(c);
    while (f)
    {
        while (f && c != '\n')
        {
            f.get(c);
        }
        num = num + 1;
        f.get(c);
    }
    f.close();
    std::ofstream f_out;
    f_out.open(file_name.c_str(), std::ios_base::app | std::ios_base::out);
    in_1 = num + 1;
    ///write into log.txt the 3 arguments in_1, in_2, in_3
    f_out << in_1 << " , " << in_2 << " , " << std::fixed << std::setprecision(6) << in_3 << std::endl;
    f_out.close();
}



