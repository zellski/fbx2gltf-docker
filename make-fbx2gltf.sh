#!/bin/bash

cp -R /root/fbxsdk/* /usr

cd /root/FBX2glTF
source /opt/rh/devtoolset-7/enable
cmake -H. -Bbuild -DCMAKE_BUILD_TYPE=Release
make -Cbuild -j4 install
cp /usr/local/bin/FBX2glTF /root/result/FBX2glTF
