# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_deep_grasp: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iros_deep_grasp:/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_deep_grasp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_custom_target(_ros_deep_grasp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_deep_grasp" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_custom_target(_ros_deep_grasp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_deep_grasp" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_custom_target(_ros_deep_grasp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_deep_grasp" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" "geometry_msgs/Pose:ros_deep_grasp/Grasp:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_custom_target(_ros_deep_grasp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_deep_grasp" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" "std_msgs/Header:ros_deep_grasp/Grasp2D:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
)
_generate_msg_cpp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
)

### Generating Services
_generate_srv_cpp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
)
_generate_srv_cpp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
)

### Generating Module File
_generate_module_cpp(ros_deep_grasp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_deep_grasp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_deep_grasp_generate_messages ros_deep_grasp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_cpp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_cpp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_cpp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_cpp _ros_deep_grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_deep_grasp_gencpp)
add_dependencies(ros_deep_grasp_gencpp ros_deep_grasp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_deep_grasp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
)
_generate_msg_eus(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
)

### Generating Services
_generate_srv_eus(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
)
_generate_srv_eus(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
)

### Generating Module File
_generate_module_eus(ros_deep_grasp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_deep_grasp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_deep_grasp_generate_messages ros_deep_grasp_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_eus _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_eus _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_eus _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_eus _ros_deep_grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_deep_grasp_geneus)
add_dependencies(ros_deep_grasp_geneus ros_deep_grasp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_deep_grasp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
)
_generate_msg_lisp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
)

### Generating Services
_generate_srv_lisp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
)
_generate_srv_lisp(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
)

### Generating Module File
_generate_module_lisp(ros_deep_grasp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_deep_grasp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_deep_grasp_generate_messages ros_deep_grasp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_lisp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_lisp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_lisp _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_lisp _ros_deep_grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_deep_grasp_genlisp)
add_dependencies(ros_deep_grasp_genlisp ros_deep_grasp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_deep_grasp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
)
_generate_msg_nodejs(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
)

### Generating Services
_generate_srv_nodejs(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
)
_generate_srv_nodejs(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
)

### Generating Module File
_generate_module_nodejs(ros_deep_grasp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_deep_grasp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_deep_grasp_generate_messages ros_deep_grasp_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_nodejs _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_nodejs _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_nodejs _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_nodejs _ros_deep_grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_deep_grasp_gennodejs)
add_dependencies(ros_deep_grasp_gennodejs ros_deep_grasp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_deep_grasp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
)
_generate_msg_py(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
)

### Generating Services
_generate_srv_py(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
)
_generate_srv_py(ros_deep_grasp
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
)

### Generating Module File
_generate_module_py(ros_deep_grasp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_deep_grasp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_deep_grasp_generate_messages ros_deep_grasp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_py _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/msg/Grasp2D.msg" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_py _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_py _ros_deep_grasp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/ros_deep_grasp/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(ros_deep_grasp_generate_messages_py _ros_deep_grasp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_deep_grasp_genpy)
add_dependencies(ros_deep_grasp_genpy ros_deep_grasp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_deep_grasp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_deep_grasp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_deep_grasp_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ros_deep_grasp_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ros_deep_grasp_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_deep_grasp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_deep_grasp_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ros_deep_grasp_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ros_deep_grasp_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_deep_grasp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_deep_grasp_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ros_deep_grasp_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ros_deep_grasp_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_deep_grasp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_deep_grasp_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ros_deep_grasp_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ros_deep_grasp_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp)
  install(CODE "execute_process(COMMAND \"/root/grasping_benchmarking/venv/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_deep_grasp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_deep_grasp_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ros_deep_grasp_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ros_deep_grasp_generate_messages_py sensor_msgs_generate_messages_py)
endif()
