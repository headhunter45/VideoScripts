@echo off
REM TODO: Find a way to use something like ffmpeg or atomic parsley to add the portrait cover to an mp4 file
IF "%~2" == "" GOTO Usage
IF "%~2" == "null" GOTO Landscape
ECHO "Setting portrait covers"
mkvpropedit %1 ^
    --attachment-name "cover" --attachment-mime-type "image/jpeg" --add-attachment %2 ^
    --attachment-name "small_cover" --attachment-mime-type "image/jpeg" --add-attachment %2 
:Landscape
IF "%~3" == "" GOTO End
IF "%~3" == "null" GOTO End
ECHO "Setting landscape covers"
mkvpropedit %1 ^
    --attachment-name "cover_land" --attachment-mime-type "image/jpeg" --add-attachment %3 ^
    --attachment-name "small_cover_land" --attachment-mime-type "image/jpeg" --add-attachment %3 
GOTO End
:Usage
ECHO "set-mkv-covers <video.mkv> <portrait.jpg|null> <landscape.jpg|null>"
:End
