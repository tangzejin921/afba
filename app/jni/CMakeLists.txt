cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_C_STANDARD 11)

set(CMAKE_C_FLAGS "-fpermissive -Wno-error")
set(CMAKE_CXXFLAGS "-std=c++11 -Wno-error=c++11-narrowing")

ADD_SUBDIRECTORY(libpng)
ADD_SUBDIRECTORY(SDL)
ADD_SUBDIRECTORY(src)