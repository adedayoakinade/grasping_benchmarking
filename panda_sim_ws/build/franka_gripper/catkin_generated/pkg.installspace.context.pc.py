# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/ros/noetic/include".split(';') if "${prefix}/include;/opt/ros/noetic/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_runtime;control_msgs;actionlib;sensor_msgs;xmlrpcpp;actionlib_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfranka_gripper;/opt/ros/noetic/lib/x86_64-linux-gnu/libfranka.so.0.9.2".split(';') if "-lfranka_gripper;/opt/ros/noetic/lib/x86_64-linux-gnu/libfranka.so.0.9.2" != "" else []
PROJECT_NAME = "franka_gripper"
PROJECT_SPACE_DIR = "/root/grasping_benchmarking/panda_sim_ws/install"
PROJECT_VERSION = "0.7.0"
