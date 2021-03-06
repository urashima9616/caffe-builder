message(STATUS "Using custom FindGlog module")
set(glog_DIR "${CMAKE_INSTALL_PREFIX}/lib/cmake/glog" CACHE PATH "")
find_package(glog CONFIG NO_CMAKE_PACKAGE_REGISTRY NO_CMAKE_SYSTEM_PACKAGE_REGISTRY)
if(glog_FOUND)
    set(GLOG_INCLUDE_DIR ${glog_INCLUDE_DIRS})
    set(GLOG_LIBRARIES ${glog_LIBRARIES})
endif()
set(GLOG_FOUND ${glog_FOUND})