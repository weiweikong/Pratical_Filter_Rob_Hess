 
cmake_minimum_required(VERSION 2.8)

set( SRC_LIST track1.c
              observation.c
              particles.c
              utils.c)
              

#set(CMAKE_GSL_CXX_FLAGS "-g -Wall") 

add_executable( track1  ${SRC_LIST} )
target_link_libraries( track1 ${OpenCV_LIBS}
                              gsl
                              gslcblas)
                              
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)