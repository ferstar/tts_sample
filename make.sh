#!/bin/sh

#编译64位可执行文件
make clean;make
#设置libmsc.so库搜索路径
export LD_LIBRARY_PATH=$(pwd)/libs/x64/
#语音合成
$(pwd)/tts_sample

echo "开始播放"
paplay tts_sample.wav
exit 0
