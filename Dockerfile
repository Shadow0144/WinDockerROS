# Change this to whichever version of ROS you need
FROM osrf/ros:foxy-desktop

RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip && RUN apt-git install mailutils
RUN mkdir -p /catkin_ws/src/ && \
    cd /catkin_ws/src/

# This will hide a warning from QStandardPaths
RUN export XDG_RUNTIME_DIR=/tmp/runtime-root