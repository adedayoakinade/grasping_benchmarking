# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "top_surface_algo: 1 messages, 2 services")

set(MSG_I_FLAGS "-Itop_surface_algo:/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(top_surface_algo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_custom_target(_top_surface_algo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "top_surface_algo" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_custom_target(_top_surface_algo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "top_surface_algo" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" "top_surface_algo/Grasp:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_custom_target(_top_surface_algo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "top_surface_algo" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" "sensor_msgs/PointField:std_msgs/Header:sensor_msgs/PointCloud2"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo
)

### Generating Services
_generate_srv_cpp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo
)
_generate_srv_cpp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo
)

### Generating Module File
_generate_module_cpp(top_surface_algo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(top_surface_algo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(top_surface_algo_generate_messages top_surface_algo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_cpp _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_cpp _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_cpp _top_surface_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(top_surface_algo_gencpp)
add_dependencies(top_surface_algo_gencpp top_surface_algo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS top_surface_algo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo
)

### Generating Services
_generate_srv_eus(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo
)
_generate_srv_eus(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo
)

### Generating Module File
_generate_module_eus(top_surface_algo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(top_surface_algo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(top_surface_algo_generate_messages top_surface_algo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_eus _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_eus _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_eus _top_surface_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(top_surface_algo_geneus)
add_dependencies(top_surface_algo_geneus top_surface_algo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS top_surface_algo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo
)

### Generating Services
_generate_srv_lisp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo
)
_generate_srv_lisp(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo
)

### Generating Module File
_generate_module_lisp(top_surface_algo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(top_surface_algo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(top_surface_algo_generate_messages top_surface_algo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_lisp _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_lisp _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_lisp _top_surface_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(top_surface_algo_genlisp)
add_dependencies(top_surface_algo_genlisp top_surface_algo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS top_surface_algo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo
)

### Generating Services
_generate_srv_nodejs(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo
)
_generate_srv_nodejs(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo
)

### Generating Module File
_generate_module_nodejs(top_surface_algo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(top_surface_algo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(top_surface_algo_generate_messages top_surface_algo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_nodejs _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_nodejs _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_nodejs _top_surface_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(top_surface_algo_gennodejs)
add_dependencies(top_surface_algo_gennodejs top_surface_algo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS top_surface_algo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo
)

### Generating Services
_generate_srv_py(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv"
  "${MSG_I_FLAGS}"
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo
)
_generate_srv_py(top_surface_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo
)

### Generating Module File
_generate_module_py(top_surface_algo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(top_surface_algo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(top_surface_algo_generate_messages top_surface_algo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/msg/Grasp.msg" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_py _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/GraspPrediction.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_py _top_surface_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/top_surface_algo/srv/EFDGrasp.srv" NAME_WE)
add_dependencies(top_surface_algo_generate_messages_py _top_surface_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(top_surface_algo_genpy)
add_dependencies(top_surface_algo_genpy top_surface_algo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS top_surface_algo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/top_surface_algo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(top_surface_algo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(top_surface_algo_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(top_surface_algo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(top_surface_algo_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/top_surface_algo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(top_surface_algo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(top_surface_algo_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(top_surface_algo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(top_surface_algo_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/top_surface_algo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(top_surface_algo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(top_surface_algo_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(top_surface_algo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(top_surface_algo_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/top_surface_algo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(top_surface_algo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(top_surface_algo_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(top_surface_algo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(top_surface_algo_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo)
  install(CODE "execute_process(COMMAND \"/root/grasping_benchmarking/venv/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/top_surface_algo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(top_surface_algo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(top_surface_algo_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(top_surface_algo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(top_surface_algo_generate_messages_py visualization_msgs_generate_messages_py)
endif()
