# Install script for directory: /root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/grasping_benchmarking/benchmarking_ws/install")
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
   "/root/grasping_benchmarking/benchmarking_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE PROGRAM FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE PROGRAM FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/setup.bash;/root/grasping_benchmarking/benchmarking_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/setup.bash"
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/setup.sh;/root/grasping_benchmarking/benchmarking_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/setup.sh"
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/setup.zsh;/root/grasping_benchmarking/benchmarking_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/setup.zsh"
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/setup.fish;/root/grasping_benchmarking/benchmarking_ws/install/local_setup.fish")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/setup.fish"
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/local_setup.fish"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/grasping_benchmarking/benchmarking_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/grasping_benchmarking/benchmarking_ws/install" TYPE FILE FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs/msg" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/msg/Grasp.msg"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/msg/Grasp2D.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs/srv" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/ProcessAndExecute.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/GraspPrediction.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/Grasp2DPrediction.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/EndEffectorWaypoint.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/GripperCommand.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/CurrentPose.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/SetJointVelocity.srv"
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/srv/MoveJointRelative.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs/cmake" TYPE FILE FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/benchmarking_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/include/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/share/roseus/ros/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/share/common-lisp/ros/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/share/gennodejs/ros/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/root/grasping_benchmarking/venv/bin/python3" -m compileall "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/lib/python3/dist-packages/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/grasping_benchmarking/benchmarking_ws/devel/.private/benchmarking_msgs/lib/python3/dist-packages/benchmarking_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/benchmarking_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs/cmake" TYPE FILE FILES "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/benchmarking_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs/cmake" TYPE FILE FILES
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/benchmarking_msgsConfig.cmake"
    "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/catkin_generated/installspace/benchmarking_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/benchmarking_msgs" TYPE FILE FILES "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
