#!/bin/bash
###############################################################################
#
#                           Clean Build Script
#
###############################################################################
# 2013-01-14    P12104  :   created
###############################################################################
make O=./obj/KERNEL_OBJ/ clean

make O=./obj/KERNEL_OBJ/ clean
if [ -f ./mkbootimg/boot.img ]
then
    rm ./mkbootimg/boot.img
fi

if [ -f ./mkbootimg/zImage ]
then
    rm ./mkbootimg/zImage
fi

if [ -d ./obj/ ]
then
    rm -r ./obj/
fi
 