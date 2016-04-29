externalproject_add(WEBSOCKETPP
    GIT_TAG 378437aecdcb1dfe62096ffd5d944bf1f640ccc3
    GIT_REPOSITORY https://github.com/zaphoyd/websocketpp
    SOURCE_DIR ${CMAKE_SOURCE_DIR}/third_party/websocketpp
    CONFIGURE_COMMAND ""
    BUILD_COMMAND cmake -DBUILD_EXAMPLES=ON
    INSTALL_COMMAND ""
    BUILD_IN_SOURCE 1
)
set(WEBSOCKETPP_INCLUDES ${CMAKE_SOURCE_DIR}/third_party/websocketpp)

mark_as_advanced(
    WEBSOCKETPP
    WEBSOCKETPP_INCLUDES
)