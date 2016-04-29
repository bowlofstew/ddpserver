externalproject_add(MONGOOSE
    GIT_TAG 8a81dce0c16ebffc95ca767979e7faece28b23aa
    GIT_REPOSITORY https://github.com/cesanta/mongoose.git
    SOURCE_DIR ${CMAKE_SOURCE_DIR}/third_party/mongoose
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    BUILD_IN_SOURCE 1
)
set(MONGOOSE_INCLUDES ${CMAKE_SOURCE_DIR}/third_party/mongoose)

mark_as_advanced(
    MONGOOSE
    MONGOOSE_INCLUDES
)