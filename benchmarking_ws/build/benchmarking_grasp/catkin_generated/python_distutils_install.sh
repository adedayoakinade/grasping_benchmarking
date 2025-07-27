#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_grasp"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/grasping_benchmarking/benchmarking_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/grasping_benchmarking/benchmarking_ws/install/lib/python3/dist-packages:/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_grasp/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_grasp" \
    "/root/grasping_benchmarking/venv/bin/python3" \
    "/root/grasping_benchmarking/benchmarking_ws/src/benchmarking_vision_based_grasping/benchmarking_grasp/setup.py" \
    egg_info --egg-base /root/grasping_benchmarking/benchmarking_ws/build/benchmarking_grasp \
    build --build-base "/root/grasping_benchmarking/benchmarking_ws/build/benchmarking_grasp" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/grasping_benchmarking/benchmarking_ws/install" --install-scripts="/root/grasping_benchmarking/benchmarking_ws/install/bin"
