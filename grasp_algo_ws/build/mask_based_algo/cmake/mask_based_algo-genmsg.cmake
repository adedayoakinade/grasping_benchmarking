# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mask_based_algo: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imask_based_algo:/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mask_based_algo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_custom_target(_mask_based_algo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mask_based_algo" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" ""
)

get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_custom_target(_mask_based_algo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mask_based_algo" "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" "sensor_msgs/Image:std_msgs/Header:mask_based_algo/Grasp2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_based_algo
)

### Generating Services
_generate_srv_cpp(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_based_algo
)

### Generating Module File
_generate_module_cpp(mask_based_algo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_based_algo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mask_based_algo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mask_based_algo_generate_messages mask_based_algo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_cpp _mask_based_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_cpp _mask_based_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_based_algo_gencpp)
add_dependencies(mask_based_algo_gencpp mask_based_algo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_based_algo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_based_algo
)

### Generating Services
_generate_srv_eus(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_based_algo
)

### Generating Module File
_generate_module_eus(mask_based_algo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_based_algo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mask_based_algo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mask_based_algo_generate_messages mask_based_algo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_eus _mask_based_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_eus _mask_based_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_based_algo_geneus)
add_dependencies(mask_based_algo_geneus mask_based_algo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_based_algo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_based_algo
)

### Generating Services
_generate_srv_lisp(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_based_algo
)

### Generating Module File
_generate_module_lisp(mask_based_algo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_based_algo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mask_based_algo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mask_based_algo_generate_messages mask_based_algo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_lisp _mask_based_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_lisp _mask_based_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_based_algo_genlisp)
add_dependencies(mask_based_algo_genlisp mask_based_algo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_based_algo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_based_algo
)

### Generating Services
_generate_srv_nodejs(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_based_algo
)

### Generating Module File
_generate_module_nodejs(mask_based_algo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_based_algo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mask_based_algo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mask_based_algo_generate_messages mask_based_algo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_nodejs _mask_based_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_nodejs _mask_based_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_based_algo_gennodejs)
add_dependencies(mask_based_algo_gennodejs mask_based_algo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_based_algo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo
)

### Generating Services
_generate_srv_py(mask_based_algo
  "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo
)

### Generating Module File
_generate_module_py(mask_based_algo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mask_based_algo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mask_based_algo_generate_messages mask_based_algo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/msg/Grasp2D.msg" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_py _mask_based_algo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/grasping_benchmarking/grasp_algo_ws/src/grasp_synthesis/mask_based_algo/srv/Grasp2DPrediction.srv" NAME_WE)
add_dependencies(mask_based_algo_generate_messages_py _mask_based_algo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_based_algo_genpy)
add_dependencies(mask_based_algo_genpy mask_based_algo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_based_algo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_based_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_based_algo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mask_based_algo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mask_based_algo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mask_based_algo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mask_based_algo_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_based_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_based_algo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mask_based_algo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mask_based_algo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mask_based_algo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mask_based_algo_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_based_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_based_algo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mask_based_algo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mask_based_algo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mask_based_algo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mask_based_algo_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_based_algo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_based_algo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mask_based_algo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mask_based_algo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mask_based_algo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mask_based_algo_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo)
  install(CODE "execute_process(COMMAND \"/root/grasping_benchmarking/venv/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_based_algo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mask_based_algo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mask_based_algo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mask_based_algo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mask_based_algo_generate_messages_py sensor_msgs_generate_messages_py)
endif()
