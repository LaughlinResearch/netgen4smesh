mkdir build -p
cd build

cmake .. -G "Ninja" \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DNG_INSTALL_DIR_INCLUDE=$PREFIX/include/netgen \
      -DNG_INSTALL_DIR_PYTHON=${SP_DIR} \
      -DNG_INSTALL_DIR_BIN=bin \
      -DNG_INSTALL_DIR_LIB=lib \
      -DNG_INSTALL_DIR_CMAKE=lib/cmake/netgen \
      -DNG_INSTALL_DIR_RES=share \
      -DOCC_INCLUDE_DIR=$PREFIX/include/opencascade \
      -DOCC_LIBRARY_DIR=$PREFIX/lib \
      -DUSE_NATIVE_ARCH=OFF \
      -DUSE_OCC=ON \
      -DUSE_PYTHON=OFF \
      -DUSE_GUI=OFF \
      -DUSE_SUPERBUILD=OFF \
      ..

ninja install
