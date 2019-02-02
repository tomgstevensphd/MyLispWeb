;;***************************** my-drakma-load.lisp *******************************
;;
;;


;; FROM C:\3-TS\LISP PROJECTS TS\CL-Utilities\drakma-1.3.7\doc\index.html
;;
#|
 (ql:quickload :drakma)
To load "drakma":
  Load 1 ASDF system:
    drakma
; Loading "drakma"
To load "cl+ssl":
  Load 1 ASDF system:
    flexi-streams
  Install 8 Quicklisp releases:
    alexandria babel bordeaux-threads cffi cl+ssl
    trivial-features trivial-garbage trivial-gray-streams
...
; Loading "drakma"
(:DRAKMA)
|#



;;  (load "C:\\3-TS\\LISP PROJECTS TS\\mylispwebs\\my-drakma-load.lisp")

;;XXX
;;1. LOAD QUICKLISP -- USED TO LOAD DRAKMA
;; It will install quicklisp on computer in user\tstev\quicklisp unless already there
;; Then it will use the setup file in that directory to load quicklisp
 (load "C:\\3-TS\\LISP PROJECTS TS\\CL-Utilities\\Quicklisp\\my-quicklisp-load.lisp")

   (SLEEP 2)

;;2. LOAD DRAKMA
 (ql:quickload :drakma)

;; (quicklisp-quickstart:quickload :drakma)






#|
RESULTS OUTPUT
;;; Safety = 3, Speed = 1, Space = 1, Float = 1, Interruptible = 1
;;; Compilation speed = 1, Debug = 2, Fixnum safety = 3
;;; Source level debugging is on
;;; Source file recording is  on
;;; Cross referencing is on
; Tree; Analyse; Transform; Repr; code-gen
; Tree; Analyse; Transform; Repr; code-gen
; 0 out of 2 vregs defined or used
; D-flow(4 blks); (1 times); Graph; 0 preserved; Spills=0(raw=0); codesize=14; -*- compiled -*-
; 0 out of 2 vregs defined or used
; D-flow(6 blks); (1 times); Graph; 0 preserved; Spills=0(raw=0); codesize=40
; (TOP-LEVEL-FORM 0)
; -*- compiled -*-
; Tree; Analyse; Transform; Repr; code-gen
; Tree; Analyse; Transform; Repr; code-gen
; 0 out of 2 vregs defined or used
; D-flow(4 blks); (1 times); Graph; 0 preserved; Spills=0(raw=0); codesize=14; -*- compiled -*-
; 0 out of 2 vregs defined or used
; D-flow(6 blks); (1 times); Graph; 0 preserved; Spills=0(raw=0); codesize=40
; (TOP-LEVEL-FORM 1)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/dist/quicklisp/2013-12-13/systems.txt">
; 155.69KB
==================================================
159,422 bytes in 0.14 seconds (1112.04KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/dist/quicklisp/2013-12-13/releases.txt">
; 235.88KB
==================================================
241,544 bytes in 0.26 seconds (890.12KB/sec)
To load "drakma":
  Install 15 Quicklisp releases:
    alexandria babel bordeaux-threads cffi chunga cl+ssl
    cl-base64 cl-ppcre drakma flexi-streams puri
    trivial-features trivial-garbage trivial-gray-streams
    usocket
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/usocket/2013-07-20/usocket-0.6.1.tgz">
; 69.76KB
==================================================
71,431 bytes in 0.14 seconds (494.73KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/puri/2010-10-06/puri-20101006-git.tgz">
; 33.99KB
==================================================
34,803 bytes in 0.02 seconds (2124.21KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/cl-ppcre/2013-04-20/cl-ppcre-2.0.4.tgz">
; 154.37KB
==================================================
158,070 bytes in 0.19 seconds (825.48KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/cl-base64/2010-10-06/cl-base64-20101006-git.tgz">
; 8.21KB
==================================================
8,408 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/trivial-garbage/2013-03-12/trivial-garbage-20130312-git.tgz">
; 8.00KB
==================================================
8,197 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/flexi-streams/2013-12-11/flexi-streams-1.0.10.tgz">
; 131.44KB
==================================================
134,592 bytes in 0.14 seconds (932.18KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/trivial-features/2013-03-12/trivial-features-20130312-git.tgz">
; 8.09KB
==================================================
8,284 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/babel/2013-03-12/babel-20130312-git.tgz">
; 238.69KB
==================================================
244,422 bytes in 0.23 seconds (1020.06KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/cffi/2013-06-15/cffi_0.11.2.tgz">
; 206.55KB
==================================================
211,511 bytes in 0.23 seconds (882.71KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/alexandria/2013-01-28/alexandria-20130128-git.tgz">
; 48.22KB
==================================================
49,374 bytes in 0.06 seconds (765.35KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/bordeaux-threads/2013-06-15/bordeaux-threads-0.8.3.tgz">
; 18.31KB
==================================================
18,754 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/cl+ssl/2013-12-11/cl+ssl-20131211-git.tgz">
; 25.16KB
==================================================
25,763 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/trivial-gray-streams/2013-12-11/trivial-gray-streams-20131211-git.tgz">
; 7.56KB
==================================================
7,743 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/chunga/2013-04-20/chunga-1.1.5.tgz">
; 20.58KB
==================================================
21,076 bytes in 0.00 seconds (0.00KB/sec)
; Fetching #<QL-HTTP:URL "http://beta.quicklisp.org/archive/drakma/2013-12-11/drakma-1.3.7.tgz">
; 69.25KB
==================================================
70,911 bytes in 0.06 seconds (1116.92KB/sec)
; Loading "drakma"
[package drakma-asd]..............................
[package cl-ppcre-asd]............................
[package flexi-streams-system]....................
[package cl-base64-system]........................
[package puri-system].............................
[package cl-ppcre]................................
..................................................
[package impl-specific-gray]......................
[package trivial-gray-streams]....................
[package flexi-streams]...........................
..................................................
..................................................
[package chunga]..................................
[package cl-base64]...............................
[package puri]....................................
[package drakma]......

; -*- compiled -*-
---- Done ----
|#
