#!/bin/bash

#Orange

sudo bash -c 'echo f65026 > /sys/devices/platform/hp-wmi/rgb_zones/zone00'
sudo bash -c 'echo e5302d > /sys/devices/platform/hp-wmi/rgb_zones/zone01'
sudo bash -c 'echo FF4500 > /sys/devices/platform/hp-wmi/rgb_zones/zone02'
sudo bash -c 'echo ffffff > /sys/devices/platform/hp-wmi/rgb_zones/zone03'
