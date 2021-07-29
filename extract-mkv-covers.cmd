@ECHO off
IF "%~1" == "" GOTO Usage
SET PREFIX=
IF "%~2" == "" GOTO NoPrefix
SET PREFIX=%2-
:NoPrefix
mkvextract attachments %1 1:%PREFIX%cover_1.jpg 2:%PREFIX%cover_2.jpg 3:%PREFIX%cover_3.jpg 4:%PREFIX%cover_4.jpg
GOTO End
:Usage
ECHO "extract-mkv-covers.cmd video.mkv [output-prefix]"
:End
