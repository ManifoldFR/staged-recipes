#!/bin/sh

cmake -S . -B build ${CMAKE_ARGS} \
  -DCMAKE_PREFIX_PATH=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_PINOCCHIO_VISUALIZER=ON \
  -DBUILD_PYTHON_BINDINGS=ON \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_TESTING=OFF

cmake --build build -j${CPU_COUNT}

cmake --install build
