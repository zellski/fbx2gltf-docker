# fbx2gltf-docker

Required: Docker (probably only support the Linux version)

## 1. How to build docker container

cd fbx2gltf-docker

docker build -t local/fbx2gltf-docker .

## 2. Get FBX SDK 2018.1.1

2.1 Download http://download.autodesk.com/us/fbx/2018/2018.1.1/fbx20181_1_fbxsdk_linux.tar.gz



## 3. Run docker image to build binary

3.1 mkdir fbxsdk

3.2 tar xvzf fbx20181_1_fbxsdk_linux.tar.gz

3.3 ./fbx20181_1_fbxsdk_linux fbxsdk

3.4 docker run -it --rm -v <absolute_path_to_fbxsdk_folder>:/root/fbxsdk -v $PWD/result:/root/result fbx2gltf

3.5 retrieve binary FBX2glTF from result folder
 
