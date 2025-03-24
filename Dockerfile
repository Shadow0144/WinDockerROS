FROM osrf/ros:foxy-desktop # Change this to whichever version of ROS you need

RUN apt-get update
RUN apt-get install -y git && apt-get install -y python3-pip
RUN mkdir -p /catkin_ws/src/ && \
    cd /catkin_ws/src/