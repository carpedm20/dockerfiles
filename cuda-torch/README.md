cuda-torch
==========

Ubuntu Core 14.04 + CUDA 7.5.18 + Torch

Usage
-----

    docker run \
      --device=/dev/nvidia0:/dev/nvidia0 \
      --device /dev/nvidiactl \
      -it carpedm20/cuda-torch
