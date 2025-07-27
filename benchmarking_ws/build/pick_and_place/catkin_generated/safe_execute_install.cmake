execute_process(COMMAND "/root/grasping_benchmarking/benchmarking_ws/build/pick_and_place/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/grasping_benchmarking/benchmarking_ws/build/pick_and_place/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
