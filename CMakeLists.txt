cmake_minimum_required(VERSION 3.16)
project(studentai)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_SOURCE_DIR})

add_library(studentas_lib STATIC
    funkcijos.cpp
    skaiciavimai.cpp
    studentas.cpp
    spausdinimas.cpp
    failu_skaitymas.cpp
    failu_generavimas.cpp
)

add_executable(studentai main.cpp)

target_link_libraries(studentai PRIVATE studentas_lib)

set_target_properties(studentai PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/bin/Debug"
    RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/bin/Release"
)

