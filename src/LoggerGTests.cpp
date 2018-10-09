#include <gtest/gtest.h>
#include <Logger.hpp>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>


TEST(LoggerTest,Integers)
{
    std::string p = "/Documents";
    Logger LoggerObj(p);
    std::vector<std::string>vect;
    
    LoggerObj.log("int","2.3");
    std::ifstream file("log.txt");
    std::string str;
    std::string fin; 
    while (std::getline(file, str))
    {
        fin = str;
    }
    std::cout << fin <<std::endl;
    std::stringstream ss(fin);
    std::string i;
    while (ss >> i)
    {
        vect.push_back(i);
        if (ss.peek() == ',')
             ss.ignore();
    }
    EXPECT_NE(vect.at(1),"2");

}

TEST(LoggerTest,Booleans)
{
    std::string p = "/Documents";
    Logger LoggerObj(p);
    std::vector<std::string>vect;

    LoggerObj.log("bool","1");
    std::ifstream file("log.txt");
    std::string str;
    std::string fin; 
    while (std::getline(file, str))
    {
        fin = str;
    }
    std::cout << fin <<std::endl;
    std::stringstream ss(fin);
    std::string i;
    while (ss >> i)
    {
        vect.push_back(i);
        if (ss.peek() == ',')
             ss.ignore();
    }
    EXPECT_NE(vect.at(1),"true");

}


int main(int argc, char **argv)
{
    //std::string type;
    //std::string value;
    //path to log.txt
    //std::string p = "/Documents";
    //std::cout<<"Input type: "<<std::endl;
    //std::cin>>type;
    //std::cout<<"Input value: "<<std::endl;
    //std::cin>>value;
   // Logger LoggerObj(p);
    //LoggerObj.log(type, value);
    //begin testing
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

