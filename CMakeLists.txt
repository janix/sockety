cmake_minimum_required(VERSION 3.10)

# set the project name
project(sockety)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# add the executable
add_executable(client client.c)
add_executable(server server.c)
add_executable(http_client http_client.c)
add_executable(http_server http_server.c)

