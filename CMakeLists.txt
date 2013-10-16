cmake_minimum_required(VERSION 2.8)
project( DisplayImage )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} 
		      ${PROJECT_SOURCE_DIR}/include
		    )

ADD_SUBDIRECTORY(src)



SET (CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/CMake)

FIND_PACKAGE(GSL REQUIRED)
include_directories(${GSL_INCLUDE_DIRS})




