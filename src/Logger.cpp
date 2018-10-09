//this is the Logger file
#include <fstream>
#include <iostream>
#include <string>
#include <time.h>       // time_t, time (for timestamp in second)
#include <sys/time.h>   // gettimeofday, timeval (for timestamp in microsecond)
#include <iomanip>
#include "Logger.hpp"
 
long double unixTimeStamp()
{
    time_t time_stamp_sec; // timestamp in seconds
    time(&time_stamp_sec);  
    struct timeval timer_usec; 
    long double time_stamp_usec; // timestamp in microsecond
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


    //! @name class members
    //@{

        std::string path;
        int in_1;
        std::string in_2;
        long double in_3;
        int temp;
    //@}

        //constructor takes path to file as argument
Logger::Logger(std::string p): path(p){
}
void Logger::log(std::string type, std::string value)
            {
            if(type == "bool")
            {
                if(value == "1" || value == "true") in_2 = "true";
                else in_2 = "false";
            }
            else if(type == "int")
            {
                temp = std::stoi(value);
                in_2 = std::to_string(temp);
            }
            else  in_2 = value;
            in_3 = unixTimeStamp();
            int num = 0;
            char c;
            std::fstream f;
            std::string file_name = "log.txt";
            f.open(file_name.c_str());
            f.get(c);
            while(f)
            {
                while(f && c != '\n')
                {
                    f.get(c);
                }
                num = num + 1;
                f.get(c);
            }
            f.close();
            std::ofstream f_out;
            f_out.open(file_name.c_str(), std::ios_base::app | std::ios_base::out);
            //cout<<"num = "<<num<<endl;
            in_1 = num + 1;
            f_out<<in_1<<" , "<<in_2<<" , "<<std::fixed<<std::setprecision(6)<<in_3<<std::endl;
            f_out.close();
            }


//main()
//{
//    std::string type;
//    std::string value;
//    //path to log.txt
//    std::string p = "/Documents";
//    std::cout<<"Input type: "<<std::endl;
//    std::cin>>type;
//    std::cout<<"Input value: "<<std::endl;
//    std::cin>>value;
//    Logger LoggerObj(p);
//    LoggerObj.log(type, value);
//}

