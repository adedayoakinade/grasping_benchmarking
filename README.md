# grasping benchmarking workspace


docker run   -it -d   --gpus all   --net host   --env DISPLAY=$DISPLAY   --env QT_X11_NO_MITSHM=1   -v /tmp/.X11-unix:/tmp/.X11-unix    -v $XAUTHORITY:$XAUTHORITY   -e XAUTHORITY=$XAUTHORITY   --device /dev/dri   --name grasping_benchmark   adedayoakinade/grasp_benchmarking_image:ros_noetic
