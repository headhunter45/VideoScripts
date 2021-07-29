@ECHO off
IF "%~1" == "" GOTO Usage
SET outFile=%1-cover.jpg
IF "%~2" == "" GOTO Extract
SET outFile=%2-cover.jpg
:Extract
ffmpeg -i %1 -map 0:v -map -0:V -c copy %outFile%
GOTO End
:Usage
ECHO "extract-mp4-cover.cmd <video.mp4> [output-prefix]"
:End
