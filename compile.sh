#!/bin/bash

VULKAN_SDK_PATH="/usr"
GLFW_PATH="/usr/include/GLFW"
CPP_COMPILER="g++"   # Change this to "gcc" for C code
CPP_FLAGS="-std=c++11 -I$VULKAN_SDK_PATH/include -I$GLFW_PATH"
LINKER_FLAGS="-L$VULKAN_SDK_PATH/lib -L$GLFW_PATH -lvulkan -lglfw"
SOURCE_FILE="main.cpp"
OUTPUT_FILE="vulkan_application"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FULL_SOURCE_PATH="$SCRIPT_DIR/$SOURCE_FILE"
COMPILE_COMMAND="$CPP_COMPILER $CPP_FLAGS $FULL_SOURCE_PATH $LINKER_FLAGS -o $OUTPUT_FILE"

cd "$SCRIPT_DIR"
if $COMPILE_COMMAND ; then
  ./$OUTPUT_FILE
fi
