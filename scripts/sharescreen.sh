#!/bin/bash
wf-recorder --pixel-format=yuv420p -fflags +genpts --muxer=v4l2 --codec=rawvideo --file=/dev/video10 -F "hflip"

