cmake_minimum_required(VERSION 3.17)
project(Project_Euler CXX)

set(CMAKE_CXX_STANDARD 20)

add_executable(p020 p020.cpp)
add_executable(p021 p021.cpp)
add_executable(p022 p022.cpp)

add_custom_command(TARGET p022 PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/data/ $<TARGET_FILE_DIR:p022>/data/)