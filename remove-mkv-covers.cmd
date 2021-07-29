@ECHO off
IF "%~1" == "" GOTO Usage
mkvpropedit %1 --delete-attachment "1" --delete-attachment "2" --delete-attachment "3" --delete-attachment "4"
GOTO End
:Usage
ECHO "remove-mkv-covers.cmd <video.mkv>"
:End
