#Tensorflow on Raspberry Pi 2 using Python 3 kernel
[![Docker Pulls](https://img.shields.io/docker/pulls/mfandreas/rpi-tensorflow-py3.svg?maxAge=2592000)](https://hub.docker.com/r/mfandreas/rpi-tensorflow-py3/)

##Reference
1. [TensorFlow Offical Dockerfile](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile)
2. [@samjabrahams tensorflow-on-raspberry-pi](https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/tag/v0.8.0)
3. [Docker+Qemu on X86 for RPi](http://www.slideshare.net/philipzh/docker-qemu-on-x86-for-raspberry-pi)
4. [Building ARM containers on any x86 machine, even  DockerHub](https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/)

## Use
Just on RPi 2 install Docker, and docker pull mfandreas/rpi-tensorflow-py3. And......

`docker run -d -p 8888:8888 mfandreas/rpi-tensorflow-py3`

Open browser, http://localhost:8888/

