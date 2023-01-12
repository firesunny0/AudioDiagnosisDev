cmake_minimum_required(VERSION 3.15.0)

project(on_k210 VERSION 0.1)

set(target_bin on_k210)
message("start build project" ${PROJECT_NAME})


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(PROJCET_BINARY_DIR ${PROJECT_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/libs)

# find_package()
# add_subdirectory()

link_directories(${PROJECT_SOURCE_DIR}/libs)

aux_source_directory(${PROJECT_SOURCE_DIR}/include LIBS)
aux_source_directory(${PROJECT_SOURCE_DIR}/include INCLUDE_FILES)
aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC_FILES)

include_directories(INCLUDE_FILES
)

add_executable(${target_bin} ${SRC_FILES} )
target_link_libraries(${target_bin} ${LIBS})

# set_source_files_properties()
