#!/bin/bash

git submodule update --init --recursive
cp -r opencv/modules/core/include/opencv2 .
mkdir modules
mkdir modules/core
cp -r opencv/modules/core/src ./modules/core

OPENCV_MODULES_HPP_STR=$'#ifndef INCLUDE_OPENCV2_OPENCV_MODULES_HPP_\n#define INCLUDE_OPENCV2_OPENCV_MODULES_HPP_\n\n#endif
'
echo "$OPENCV_MODULES_HPP_STR" > opencv2/opencv_modules.hpp
