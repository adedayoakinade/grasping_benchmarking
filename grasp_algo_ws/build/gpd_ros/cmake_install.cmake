# Install script for directory: /root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/grasping_benchmarking/grasp_algo_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE PROGRAM FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE PROGRAM FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/setup.bash;/root/grasping_benchmarking/grasp_algo_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/setup.bash"
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/setup.sh;/root/grasping_benchmarking/grasp_algo_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/setup.sh"
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/setup.zsh;/root/grasping_benchmarking/grasp_algo_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/setup.zsh"
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/setup.fish;/root/grasping_benchmarking/grasp_algo_ws/install/local_setup.fish")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/setup.fish"
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/local_setup.fish"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/grasp_algo_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/grasp_algo_ws/install" TYPE FILE FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros/msg" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/CloudIndexed.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/CloudSamples.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/CloudSources.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/GraspConfig.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/GraspConfigList.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/SamplesMsg.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/Grasp.msg"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/msg/Grasp2D.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros/srv" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/srv/detect_grasps.srv"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/srv/GraspPrediction.srv"
    "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/srv/Grasp2DPrediction.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros/cmake" TYPE FILE FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/gpd_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/include/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/share/roseus/ros/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/share/common-lisp/ros/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/share/gennodejs/ros/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/root/grasping_benchmarking/venv/bin/python3" -m compileall "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/lib/python3/dist-packages/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/grasping_benchmarking/grasp_algo_ws/devel/.private/gpd_ros/lib/python3/dist-packages/gpd_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/gpd_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros/cmake" TYPE FILE FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/gpd_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros/cmake" TYPE FILE FILES
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/gpd_rosConfig.cmake"
    "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/gpd_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gpd_ros" TYPE FILE FILES "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/gpd_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gpd_ros" TYPE PROGRAM FILES "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/catkin_generated/installspace/service_server.py")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/grasping_benchmarking/grasp_algo_ws/build/gpd_ros/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
