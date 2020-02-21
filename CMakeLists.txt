cmake_minimum_required(VERSION 3.15)
project(Numbers)

set(CMAKE_CXX_STANDARD 14)

add_executable(Numbers main.cpp Ratio.cpp Ratio.h Real.cpp Real.h)