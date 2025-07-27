# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moveit_adapter: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveit_adapter_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_custom_target(_moveit_adapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_adapter" "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_cpp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
)

### Generating Module File
_generate_module_cpp(moveit_adapter
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveit_adapter_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveit_adapter_generate_messages moveit_adapter_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_cpp _moveit_adapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_adapter_gencpp)
add_dependencies(moveit_adapter_gencpp moveit_adapter_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_adapter_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)
_generate_srv_eus(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
)

### Generating Module File
_generate_module_eus(moveit_adapter
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moveit_adapter_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moveit_adapter_generate_messages moveit_adapter_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_eus _moveit_adapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_adapter_geneus)
add_dependencies(moveit_adapter_geneus moveit_adapter_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_adapter_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)
_generate_srv_lisp(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
)

### Generating Module File
_generate_module_lisp(moveit_adapter
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveit_adapter_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveit_adapter_generate_messages moveit_adapter_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_lisp _moveit_adapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_adapter_genlisp)
add_dependencies(moveit_adapter_genlisp moveit_adapter_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_adapter_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)
_generate_srv_nodejs(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
)

### Generating Module File
_generate_module_nodejs(moveit_adapter
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moveit_adapter_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moveit_adapter_generate_messages moveit_adapter_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_nodejs _moveit_adapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_adapter_gennodejs)
add_dependencies(moveit_adapter_gennodejs moveit_adapter_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_adapter_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)
_generate_srv_py(moveit_adapter
  "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
)

### Generating Module File
_generate_module_py(moveit_adapter
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveit_adapter_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveit_adapter_generate_messages moveit_adapter_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/EndEffectorWaypoint.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/GripperCommand.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/CurrentPose.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/SetJointVelocity.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/StopMovement.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/panda_sim_ws/src/panda_simulation/moveit_adapter/srv/MoveJointRelative.srv" NAME_WE)
add_dependencies(moveit_adapter_generate_messages_py _moveit_adapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_adapter_genpy)
add_dependencies(moveit_adapter_genpy moveit_adapter_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_adapter_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_adapter
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(moveit_adapter_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(moveit_adapter_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(moveit_adapter_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_adapter
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(moveit_adapter_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(moveit_adapter_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(moveit_adapter_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_adapter
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(moveit_adapter_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(moveit_adapter_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(moveit_adapter_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_adapter
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(moveit_adapter_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(moveit_adapter_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(moveit_adapter_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter)
  install(CODE "execute_process(COMMAND \"/root/grasping_benchmarking/venv/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_adapter
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(moveit_adapter_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(moveit_adapter_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(moveit_adapter_generate_messages_py sensor_msgs_generate_messages_py)
endif()
