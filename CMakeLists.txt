cmake_minimum_required(VERSION 3.12)
project(20XD6 LANGUAGES C ASM VERSION 0.1.0)

set(ignoreMe "${CMAKE_CXX_COMPILER}")

file(GLOB_RECURSE 20xd6_SRC
        include/*.h
        src/*.c
        src/*.asm)

add_executable(20XD6 ${20xd6_SRC})

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-visibility -Wno-pragma-pack -Wno-deprecated-declarations -mavx -mavx2")
set(CMAKE_ASM_FLAGS "${CFLAGS}")
#set(CMAKE_ASM_FLAGS "${CFLAGS} -x assembler-with-cpp")

set(includeList ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_include_directories(20XD6 PUBLIC ${includeList})
