#!/bin/bash

# Roscore terminal window (Single tab)
gnome-terminal --window -- bash -c "source ./venv/bin/activate; source /opt/ros/$ROS_DISTRO/setup.bash; roscore; exec bash"

# First terminal window (Single tab)
gnome-terminal --window -- bash -c "source ./venv/bin/activate; source /opt/ros/$ROS_DISTRO/setup.bash; cd ./panda_sim_ws; source /devel/setup.bash; roslaunch panda_simulation panda_simulation.launch; exec bash"

# First terminal window (Single tab)
gnome-terminal --window -- bash -c "source ./venv/bin/activate; source /opt/ros/$ROS_DISTRO/setup.bash; pwd; exec bash"


# Wait 10 seconds before launching the next window
sleep 10

# # Second terminal window (Multiple tabs)
# gnome-terminal --tab -- bash -c "source ./venv/bin/activate; source ./grasp_algo_ws/devel/setup.bash; rosrun ggcnn service_server.py; exec bash" 
# gnome-terminal --tab -- bash -c "source ./venv/bin/activate; source ./grasp_algo_ws/devel/setup.bash; rosrun ros_deep_grasp service_server.py; exec bash"  
# gnome-terminal --tab -- bash -c "source ./venv/bin/activate; source ./grasp_algo_ws/devel/setup.bash; rosrun mask_based_algo service_server.py; exec bash"
# gnome-terminal --tab -- bash -c "source ./venv/bin/activate; source ./grasp_algo_ws/devel/setup.bash; roslaunch top_surface_algo top_surface.launch; exec bash"

# # Wait 10 seconds before launching the final window
# sleep 10

# # Third terminal window (Single tab)
# gnome-terminal --window -- bash -c "export PYTHONPATH=$PYTHONPATH:/usr/lib/python3/dist-packages/; source ./venv/bin/activate; source ./benchmarking_ws/devel/setup.bash; roslaunch benchmarking_grasp run_benchmark.launch sim_mode:=true; exec bash"

