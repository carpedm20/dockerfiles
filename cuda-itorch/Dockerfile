FROM carpedm20/cuda-torch
MAINTAINER Taehoon Kim <carpedm20@gmail.com>

# Install dependencies
RUN apt-get install libzmq3-dev

# Install iTorch
RUN git clone https://github.com/facebook/iTorch.git
RUN cd iTorch; env "PATH=$PATH" luarocks make 
RUN chown -R $USER $(dirname $(ipython locate profile))
