;;******************** video-playback-utility.lisp ******************
;;
;; GOAL: From within a LISP program, run a good standard video exe file which in turn will take as an argument a video file in MOV or other formats.
;;
;; alternative: use windows essentials media player, http://windows.microsoft.com/en-us/windows/essentials

;;PLAY-VIDEO
;;
;;ddd
(defun play-video (video-player-path video-paths   
                                     &key rest-player-args common-path 
                                     (pause-secs 5) pause-betw-files-secs
                                     play-files-separately-p (fullscreen T) 
                                     (video-player 'vlc) (no-repeat t)(no-loop t))
  "Uses video-player to play videos on video-paths (with args in rest-player-args).  When finished returns 0 if successful and 1 if fails. Currently VLC is the default player. Will work with any other player using video-path, file-path, rest-player-args function call. Hit Contr-Q to stop VLC.
NOTE: MUST TERMINATE EACH FILE WINDOW with CONTR-Q or CLICK on X.If common-path, appends common-path to each item in video-paths."
  (let
      ((result)
       (success-paths)
       (fail-paths)
       (call-args )
       (new-paths)
       (video-paths-length (list-length video-paths))
       )  

    (when (pathnamep video-player-path)
           (setf video-player-path (namestring video-player-path)))

    ;;FILES w/ COMMON-PATH or COMPLETE-PATHS (also add pause??)
    (cond
     (common-path
      (cond
       ((null pause-betw-files-secs)
      (loop
       for path in video-paths
       do
       ;;make into a string instead of a real pathname
       (when (pathnamep path)
           (setf path (namestring path)))
         ;;SSSS START HERE -- CHANGED ABOVE TO MAKE PATH A STRING
 ;;(pathnamep  '#P"C:/OUR PARTIAL PHOTOS-VIDEOS/MY PHOTOS/DESERT PHOTOS/MVI_3.MOV")
 ;;(namestring '#P"C:/OUR PARTIAL PHOTOS-VIDEOS/MY PHOTOS/DESERT PHOTOS/MVI_3.MOV")

       (setf new-paths (append new-paths (list (format nil "~A~A" common-path path))))
       ;;end loop, clause
       ))
       (pause-betw-files-secs
        (setf video-paths-length (list-length video-paths))
        (loop
         for path in video-paths
         for n from 1 to video-paths-length
         do
       ;;make into a string instead of a real pathname
       (when (pathnamep path)
           (setf path (namestring path)))
         (cond
          ((< n video-paths-length)
           (setf new-paths (append new-paths (list (format nil "~A~A" common-path path))
                                   (list (format nil "vlc://pause: ~A" pause-betw-files-secs )))))
          (t (setf new-paths (append new-paths (list (format nil "~A~A" common-path path))))))
         ;;end loop, null pause clause
         ))
       (t nil))
      ;;end   common-path clause
      )
     (t 
      (loop
       for path in video-paths
       do
       (when (pathnamep path)
         (setf path (namestring path)))
       (setf new-paths (append new-paths (list path)))
       ;;end loop, cond
       )))

    ;;PLAY ALL FILES TOGETHER or SEPARATELY
    (cond
     ((null play-files-separately-p)
       (setf call-args (list video-player-path))
       (when fullscreen (setf call-args (append call-args (list "--fullscreen"))))
       (when no-repeat (setf call-args (append call-args (list  "--no-repeat"))))
       (when no-loop (setf call-args (append call-args (list  "--no-loop"))))
       (when rest-player-args (setf call-args (append call-args rest-player-args)))
       (setf call-args (append call-args new-paths
                               (list  (format nil "vlc://pause: ~A" pause-secs) "vlc://quit")  ))  

       ;;WHICH VIDEO PLAYER
       (cond
        ((equal video-player 'vlc)
         (setf result (sys:call-system  call-args))
         (cond
          ((= result 0)
           (setf success-paths (append success-paths (list new-paths))))
          (t (setf fail-paths (append fail-paths (list new-paths)))))

         ;;doesn't work while window is open (sys:call-system  '("TASKKILL" "/F"  "/IM"  "vlc.exe" "/T"))
         )
        (t nil))
       ;;end (null play-files-separately-p)
      )
     ;;TO PLAY EACH FILE SEPARATELY--DOESN'T WORK AS WELL??
     (play-files-separately-p
      (loop
       for path in new-paths
       do
       ;;MAKE CALL ARGS
       (when fullscreen (setf call-args (append call-args (list "--fullscreen"))))
       (when no-repeat (setf call-args (append call-args (list  "--no-repeat"))))
       (when no-loop (setf call-args (append call-args (list  "--no-loop"))))
       (setf call-args (append  
                                (list path) call-args (list (format nil "vlc://pause: ~A" pause-secs) "vlc://quit")  ))
       
       (cond
        ((equal video-player 'vlc)
         (setf result (sys:call-system  call-args))
         (cond
          ((= result 0)
           (setf success-paths (append success-paths (list path))))
          (t (setf fail-paths (append fail-paths (list path)))))
         )
        (t nil))
       (sleep 5)
       ;;end loop
       )
      ;;end play separately,cond
      ))
    
    (values 'video-completed success-paths fail-paths)
    ;;end let, play-video
    ))
;;TEST
;;   (play-video "C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" '("MVI_0095.MP4" "MVI_2594.MOV" "VTS_01_1.VOB")  :common-path "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\")
;;WORKS (at least sometimes)
;;VIDEO-COMPLETED    (("C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\MVI_0095.MP4" "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\MVI_2594.MOV" "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\VTS_01_1.VOB"))     NIL

;;play-files-separately-p
;;  (play-video "C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" '("MVI_0095.MP4" "MVI_2594.MOV" "VTS_01_1.VOB")  :common-path "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\" :play-files-separately-p T)





;;
;;TESTING PROCESS-WAIT
;;  (mp:process-wait "Waiting for video" #'play-video "C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" '("MVI_0095.MP4" "MVI_2594.MOV" "VTS_01_1.VOB")  :common-path "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\")

;;TESTING PROCESS-RUN-FUNCTION
;;  (mp:process-run-function "Play video"  #'run-video-function ) )

;; (setf process-x (mp:process-run-function "VLC" nil  #'sys:call-system  '("C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\MVI_0095.MP4"))) = #<MP:PROCESS Name "VLC" Priority 85000000 State "Running">
;; (mp:process-terminate process-x)
;;CL-USER 43 > process-x = #<MP:PROCESS Name "VLC" Priority 0 State "Dead">
;; ABOVE APPEARS TO WORK, BUT DOESN'T CLOSE VLC

 



(defun write-this-x (x)
  (setf *write-this-x (format nil "~A~%" x)))

(defun do-this-x (x)
  (let 
      ((process (mp:process-run-function "Do this" nil #'write-this-x x))
       )
    (mp:process-terminate process)
    ))
;; (do-this-x "This is x")
                
(defparameter *video-complete-p nil)

;;FOLLOWING DOES KILL VLC FROM 
;; CL-USER 44 > (sys:call-system  '("TASKKILL" "/F"  "/IM"  "vlc.exe" "/T")) = 0

(defun test-run-video ()
  (let
      ((process)
       )
    ;;(setf process (mp:process-run-function "VLC" nil  #'sys:call-system  '("C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\MVI_0095.MP4")))
    (setf process (mp:process-run-function "VLC" nil  #'run-video-function))
    (mp:process-terminate process)
    ;;SSS -- TASKKILL WORKS, BUT WILL NOT BE CALLED UNTIL THE VLC IS SHUT DOWN, THEREFORE DEFEATING ITS PURPOSE
   ;; (sys:call-system  '("TASKKILL" "/F"  "/IM"  "vlc.exe" "/T"))
    ))
;; (test-run-video)
     

;;main bottom level
(defun run-video-function ()
  (let
      ((result)
       )
    (when
        (play-video "C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" '("MVI_0095.MP4" )  :common-path "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\") ;;"MVI_2594.MOV" "VTS_01_1.VOB"
      (setf result T 
            *video-complete-p T)
      ;;(format T "This is after the video was run and closed.")
      )
    result
    ))
;; (run-video-function)


;;(mp:process-wait "Waiting for video" #'play-video "C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" '("MVI_0095.MP4" "MVI_2594.MOV" "VTS_01_1.VOB")  :common-path "C:\\3-TS\\LISP PROJECTS TS\\video-playback-utility\\")

#|(defun process-run-video-function ()
  (let
      ((process)
       )
    (when
        (setf process (mp:process-run-function "Run-video-function" nil #'run-video-function))
      )
    (mp:process-terminate process)
    ))|#
;; (process-run-video-function)
 

;;
;;TESTING  -- RETURNS 0 WHEN WORKS, 1 IF NOT
;;
;;    (SYS:call-system '(  "C:\\Program Files (x86)\\Windows NT\\Accessories\\wordpad.exe")) = 0 WORKS
;;  (SYS:call-system  '("C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe")) = 0 , WORKS
;;
;; from manual
;;  (sys:call-system '("notepad" "myfile.txt")) = WORKS

;;   (SYS:call-system  '("C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" "C:\\3-TS\\LISP PROJECTS TS\\screensaver\\video-playback-utility\\VTS_01_1.VOB" ))

;;(SYS:call-system  '("C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe" "C:\\3-TS\\LISP PROJECTS TS\\screensaver\\video-playback-utility\\VTS_01_1.VOB" ":FULLSCREEN"))




;;FOLLOWING WORKS IN A DOS WINDOW (fullscreen, no repeats/loops)
#|  CD  "C:\Program Files (x86)\VideoLAN\VLC"
VLC  --fullscreen --no-repeat --no-loop "C:\3-TS\LISP PROJECTS TS\screensaver\video-playback-utility\VTS_01_1.VOB"|#
;;END


;;COPIED FROM VLC MANUAL
;;  https://wiki.videolan.org/Documentation:Command_line/#Audio_options
#| 

OPENING A FILE
Start VLC with:  %vlc my_file

VLC should be able to recognize the file type. If it does not, you can force demultiplexer and decoder (see below).
A list of all video and audio codecs supported by VLC is available on the VLC features list. 

STREAM OUTPUT

The Stream output system allows vlc to become a streaming server.

For more details on the stream output system, please have a look at the Streaming HowTo.


Other Options

AUDIO OPTIONS
    --noaudio disables audio output. Note that if you are streaming (ex: to a file) this has no effect (streaming copies the audio verbatim). Use --sout-xxx instead (ex: --no-sout-audio)
    --mono forces VLC to treat the stream in mono audio.
    --volume <integer> sets the level of audio output (between 0 and 1024). Also only applies to local playback (like --noaudio).
    --aout-rate <integer> sets the audio output frequency (Hz). By default, VLC will try to autodetect this.
    --desync <integer> compensates desynchronization of audio (ms). (If audio and video streams are not synchronized, use this setting to delay the audio stream)
    --audio-filter <string> adds audio filters to the processing chain. Available filters are visual (visualizer with spectrum analyzer and oscilloscope), headphone (virtual headphone patialization) and normalizer (volume normalizer) 

VIDEO OPTIONS
    --no-video disables video output.
    --grayscale turns video output into grayscale mode.
    --fullscreen ( or -f) sets fullscreen video.
    --nooverlay disables hardware acceleration for the video output.
    --width, --height <integer> sets the video window dimensions. By default, the video window size will be adjusted to match the video dimensions.
    --start-time <integer> starts the video here; the integer is the number of seconds from the beginning (e.g. 1:30 is written as 90)
    --stop-time <integer> stops the video here; the integer is the number of seconds from the beginning (e.g. 1:30 is written as 90)
    --zoom <float> adds a zoom factor.
    --aspect-ratio <mode> forces source aspect ratio. Modes are 4x3, 16x9, ...
    --spumargin <integer> forces SPU subtitles postion.
    --video-filter <string> adds video filters to the processing chain. You can add several filters, separated by commas
    --video-splitter <string> adds video splitters to the processing chain. (wall, panoramix, clone)
    --sub-filter <string> adds video subpictures filter to the processing chain.

EXAMPLES:

% vlc file1.mpg :fullscreen file2.mpg
will play file1.mpg in fullscreen mode and file2.mpg in the default mode (which is generally no fullscreen), whereas

% vlc --fullscreen file1.mpg file2.mpg
will play both files in fullscreen mode

% vlc --fullscreen file1.mpg :sub-file=file1.srt :no-fullscreen file2.mpg :filter=distort
will play file1.mpg in windowed (no-fullscreen) mode with the subtitles file file1.srt and will play file2.mpg with video filter distort enabled in fullscreen mode (item-specific options override global options). 

 Item-specific options

There are many options that are related to items (like --novideo, --codec, --fullscreen).

For all of these, you have the possibility to make them item-specific, using ":" instead of "--" and putting the option just after the concerned item.

EXAMPLES:
% vlc file1.mpg :fullscreen file2.mpg
will play file1.mpg in fullscreen mode and file2.mpg in the default mode (which is generally no fullscreen), whereas

% vlc --FULLSCREEN file1.mpg file2.mpg

will play both files in fullscreen mode

% vlc --FULLSCREEN file1.mpg :sub-file=file1.srt :NO-FULLSCREEN file2.mpg :filter=distort
will play file1.mpg in windowed (no-fullscreen) mode with the subtitles file file1.srt and will play file2.mpg with video filter distort enabled in fullscreen mode (item-specific options override global options).

 PLAYLIST OPTIONS
    --random plays files randomly forever.
    --loop loops playlist on end.
    --repeat repeats current item until another item is forced
    --PLAY-AND-STOP stops the playlist after each played item.
    --NO-REPEAT --NO-LOOP prevents the video from being executed again. (Useful when want to encode a file) 


 |#