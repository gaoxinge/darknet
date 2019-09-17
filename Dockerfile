FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update
RUN apt-get install -y git vim wget

# install python
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-setuptools
RUN easy_install3 -U pip

# install opencv
RUN apt-get install -y libopencv-dev python-opencv

WORKDIR /

RUN git clone https://github.com/gaoxinge/darknet.git

CMD ["sleep", "infinity"]
