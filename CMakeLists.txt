cmake_minimum_required(VERSION 2.80)

project(Logger)


set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})


include_directories(include)
file(GLOB SOURCES "src/Logger.cpp" "src/LoggerGTests.cpp")
add_executable(LoggerGTests ${SOURCES})
target_link_libraries(LoggerGTests ${GTEST_LIBRARIES} pthread)
#add_executable(testline "src/TestLine.cpp")
