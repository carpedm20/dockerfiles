FROM ubuntu:14.04
MAINTAINER Taehoon Kim <carpedm20@gmail.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  wget

# Install CUDA
RUN cd /tmp && \
  wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda_7.5.18_linux.run && \
  chmod +x cuda_*_linux.run && ./cuda_*_linux.run -extract=`pwd` && \
  ./NVIDIA-Linux-x86_64-*.run -s --no-kernel-module && \
  ./cuda-linux64-rel-*.run -noprompt && \
  ./cuda-samples-linux-*.run -noprompt -cudaprefix=/usr/local/cuda/ && \
  rm -rf *

# Add to path
ENV PATH=/usr/local/cuda/bin:$PATH \
  LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Install cuDNN
RUN cd /tmp && \
  wget http://carpedm20.iptime.org/cudnn-7.0-linux-x64-v3.0-prod.tgz && \
  tar -xvf cudnn-7.0-linux-x64-v3.0-prod.tgz && \
  cp cuda/include/* /usr/local/cuda/include && \
  cp cuda/lib64/* /usr/local/cuda/lib64 && \
  rm -rf *
