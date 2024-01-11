#!/bin/bash
#This is now the script for the dynamic background to be correctly configured on launch

#Below is the correct configuration when the monitor is to the left of the main monitor and then rotated to to be verictal.
#paperview ~/scenes/RainyTokyo 6 1080 0 2560 1440 ~/scenes/MatrixPurple 5 0 0 1080 1920

#I have now moved my monitors and the rotated monitor is now on the right hand side so this code is the correct configuration for the monitor being on the right and rotated:
#paperview ~/scenes/RainyTokyo 6 0 0 2560 1440 ~/scenes/MatrixPurple 5 2560 0 1080 1920

paperview ~/scenes/PixelWaterFall 8 0 0 2560 1440 ~/scenes/MatrixPurple 5 2560 0 1080 1920
