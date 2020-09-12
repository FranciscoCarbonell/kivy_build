#!/bin/bash
#sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get remove -y cython
sudo aptitude install -y python3-dev net-tools build-essential adb aidl openssh-server python3-pip
sudo aptitude install -y git zip unzip openjdk-8-jdk python3-pip autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake
sudo aptitude install -y mesa-common-dev libglu1-mesa-dev freeglut3-dev libffi-dev, libssl-dev
