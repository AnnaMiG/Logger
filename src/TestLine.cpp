#include <fstream>
#include <string>
#include "iostream"
int main() 
{ 
    std::ifstream file("log.txt");
    std::string str;
    std::string fin; 
    while (std::getline(file, str))
    {
        fin = str;
    }
    std::cout << fin <<std::endl;
}
