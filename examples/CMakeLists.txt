#include(mongoose)
include(websocketpp)

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost REQUIRED COMPONENTS
        system
        )

set(DDP_INCLUDES "../include")

file(GLOB DDP_HEADERS
        "${DDP_INCLUDES}/*.h"
        )

set(JVAR_INCLUDES ${CMAKE_SOURCE_DIR}/third_party/jvar/include)

include_directories(
        ${DDP_INCLUDES}
        ${JVAR_INCLUDES}
        ${MONGOOSE_INCLUDES}
        ${WEBSOCKETPP_INCLUDES}
        ${Boost_INCLUDE_DIR}
)

#TODO: Check compiler for modern C++ support
if (CMAKE_COMPILER_IS_GNUCXX)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -Wall")
endif (CMAKE_COMPILER_IS_GNUCXX)

# NOTE: We need to 
#add_executable(mongoose_server mongoose.cpp)
#add_executable(websockets libwebsockets.cpp)
add_executable(websocketpp websocketpp.cpp)
target_link_libraries(websocketpp
        ${Boost_LIBRARIES}
)