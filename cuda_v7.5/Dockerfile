FROM ubuntu:14.04
MAINTAINER Taehoon Kim <carpedm20@gmail.com>

# Install wget and build-essential
RUN apt-get update && apt-get install -y \
  build-essential \
  wget

# Change to the /tmp directory
RUN cd /tmp && \
# Download run file
  wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb && \
# Install CUDA
  dpkg -i cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb && \
  apt-get update && \
  apt-get install cuda && \

# Add to path
ENV PATH=/usr/local/cuda/bin:$PATH \
  LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

