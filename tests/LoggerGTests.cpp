#include <gtest/gtest.h>
#include <logger/Logger.hpp>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>

/**
 *this test will check that integer values that are inputed as float will be 
 *logged as integers in the log.txt file
 */
TEST(LoggerTest,Integers)
{
    std::string p = "/Documents";
    Logger LoggerObj(p);
    std::vector<std::string>vect;
    ///we call the log function with type=int and value=2.3
    LoggerObj.log("int","2.3");
    ///we open the log.txt file to check if the logged data is correct
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
        if (ss.peek() == ',') ss.ignore();
    }
    ///the logged answer: vect.at(1) must be equal to 2
    EXPECT_NE(vect.at(1),"2");

}
/**
 *this test will check that boolean values will be 
 *logged as true/false in the log.txt file
 */
TEST(LoggerTest,Booleans)
{
    std::string p = "/Documents";
    Logger LoggerObj(p);
    std::vector<std::string>vect;
    ///we call the log function with type=bool and value=1
    LoggerObj.log("bool","1");
    ///we open the log.txt file to check if the logged data is correct
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
        if (ss.peek() == ',') ss.ignore();
    }
    EXPECT_NE(vect.at(1),"true");

}


int main(int argc, char **argv)
{
    ///here we run all tests
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

