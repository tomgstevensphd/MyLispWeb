
  CD  "C:\Program Files (x86)\VideoLAN\VLC"

  VLC --fullscreen --no-repeat --no-loop "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_2594.MOV" "vlc://pause: 5" "vlc://quit"

 
  rem NO GOOD VLC --fullscreen --no-repeat --no-loop --play-and-quit "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_2594.MOV"


  REM I THINK THIS WORKS AT LEAST PART OF TIME?  [PROBLEM WITH END-LINE CHARS GETTING IN WAY?]
  REM VLC  --fullscreen --no-repeat --no-loop "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_2594.MOV"   REM vlc://pause: 5" "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_0095.MP4" "vlc://pause: 5" "vlc://quit"
  rem "C:\3-TS\LISP PROJECTS TS\video-playback-utility\\VTS_01_1.VOB" "vlc://pause: 5" "vlc://quit"

  REM FOLLOWING WORKED AND QUIT
  REM VLC  --fullscreen --no-repeat --no-loop "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_2594.MOV" "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_0095.MP4" "vlc://pause: 5"     "vlc://quit"


  REM  VLC  --fullscreen --no-repeat --no-loop "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_0095.MP4" "vlc://pause: 9"     "vlc://quit"

  REM VLC  --fullscreen --no-repeat --no-loop  "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_2594.MOV" "vlc://pause: 9" "C:\3-TS\LISP PROJECTS TS\video-playback-utility\\VTS_01_1.VOB" "vlc://pause: 9"     "vlc://quit"

  REM "C:\3-TS\LISP PROJECTS TS\video-playback-utility\MVI_0095.MP4"

  REM  THIS MAKES VLC QUIT IF IN PLACE OF A FILE:  "vlc://quit"
  
  REM FOLLOWING WORKS: VLC --longhelp --advanced
  REM --LONGHELP --ADVANCED  ;;CAPS DO NOT WORK--MUST BE LOWERCASE??

 
  REM TASKKILL /F /IM vlc.exe /T
