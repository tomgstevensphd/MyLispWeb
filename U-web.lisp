;;************************** U-web.lisp ******************************
;;
;;NOTE: as of 3-24-2015  web.csulb.edu replaced www.csulb.edu (relative ref, see Jesse Santa note)
;;
;;LOAD DRAKMA FIRST IF NEEDED
;;1. LOAD QUICKLISP -- USED TO LOAD DRAKMA
(unless (packagep 'drakma)
 (load "C:\\3-TS\\LISP PROJECTS TS\\CL-Utilities\\Quicklisp\\my-quicklisp-load.lisp")
;;2. LOAD DRAKMA
 (ql:quickload :drakma)
;;USES DRAKMA FUNCTIONS
;;(unless (functionp 'drakma:http-request)
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyLispWebs\\my-drakma-load.lisp")
;;end unless
  )



;;MY-POST
;;
(defun my-post (url &key key value  post-parameter-list)
  "In U-web.lisp, post-parameter-list form '((key1 . value1) (key2 . value2) etc) plus content-type etc can be included in parameter list--READ DRAKMA INFO"
  (let
      ((v1-body-or-stream)
       (v2-status-code)
       (v3-headers)
       (v4-newURI)
       (v5-stream)
       (v6-must-close)
       (v7-reason-phrase)
       (parameter-list)
       )
    (cond
     (post-parameter-list
      (setf parameter-list post-parameter-list))
     (t (setf parameter-list `((,key . ,value)))))

      (multiple-value-setq (v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
          ;;  (drakma:http-request url))
          (drakma:http-request url   ;; "http://www.phpsecurepages.com/test/test.php"
                               :method :post
                               :parameters post-parameter-list
                               ))
      
      ;;(afout 'out (format nil "In http-dcon, v1-body-or-stream= ~A~% v2-status-code= ~A~% v3-headers= ~A~% v4-uri3-newURI= ~A~% v5-stream= ~A~% v6-must-close= ~A~% v7-reason-phrase= ~A~% "  v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase ))
    (values v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
    ))



;;MY-GET    
;;
(defun my-get (url)
  "In U-web.lisp, can add more variations LATER--see DRAKMA INFO"
;;(setf out nil)
  (let
      ((v1-body-or-stream)
       (v2-status-code)
       (v3-headers)
       (v4-newURI)
       (v5-stream)
       (v6-must-close)
       (v7-reason-phrase)
       )
   
    (multiple-value-setq (v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
        (drakma:http-request url :method :get)) ;;added 2014-7
#| WORKS      (drakma:http-request url   ;; "http://www.phpsecurepages.com/test/test.php"
                             :method :post
                             :parameters '(("dataText" .  "This is the drakma post dataText data")) 
                             ))|#
    ;;(afout 'out (format nil "In http-dcon, v1-body-or-stream= ~A~% v2-status-code= ~A~% v3-headers= ~A~% v4-uri3-newURI= ~A~% v5-stream= ~A~% v6-must-close= ~A~% v7-reason-phrase= ~A~% "  v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase ))
  ;;(fout out)
  (values v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
    ))
;;TEST
(defun testmg ()
  (let
      ((url "http://web.csulb.edu/~tstevens/index.html")
       )
    (my-get url)
    ))
;;WORKS--FOR OUTPUT, GO TO U-web-test-output.lisp

(defun testdc ()
  "In U-web.lisp, "
  (setf out nil)
  (let
      ((url "http://web.csulb.edu/~tstevens/test/SendData.php")
;; "http://web.csulb.edu/~tstevens/test/sendtest1.php")
;;"http://web.csulb.edu/~tstevens/test/SendData.php")
;;"http://web.csulb.edu/~tstevens/success/hidden/dataFile.txt")
;; "http://web.csulb.edu/~tstevens/success/rtfs/1jstk.htm") ;; "http://web.csulb.edu/~tstevens")
 ;; "http://web.csulb.edu/~tstevens/health%20tips.htm");;  "http://web.csulb.edu/~tstevens/success/")  ;; "http://web.csulb.edu")
;;body-or-stream, status-code, headers, uri, stream, must-close, reason-phrase
       (v1-body-or-stream)  ;;no effect? "THIS IS TEST XX")
       (v2-status-code)
       (v3-headers)
       (v4-newURI)
       (v5-stream)
       (v6-must-close)
       (v7-reason-phrase)
       (v8)
       (parameter-list '(("dataText" . "This is my DRAKMA test data 12345
                         written from LISP")("resultsText"  .  "This is my DRAKMA #newline test results text 999~%99")
                         ("resultsFilePath" .  "/resultsFilename.txt /NEWLINE")))
       )
    (multiple-value-setq (v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8 )
       (my-post url :post-parameter-list parameter-list)
       ;;was (http-dcon url)
      )
   (afout 'out (format nil "v1-body-or-stream= ~A~% v2-status-code= ~A~% v3-headers= ~A~% v4-uri3-newURI= ~A~% v5-stream= ~A~% v6-must-close= ~A~% v7= ~A~% v8= ~A~% "  v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8))
(values v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
 (fout out)
    ))

(defun testpost ()
  "In U-web.lisp, "
  (setf out nil)
  (let
      ((url "http://web.csulb.edu/~tstevens/success/1-lisp-test.txt")
       (v1-body-or-stream)
       (v2-status-code)
       (v3-headers)
       (v4-newURI)
       (v5-stream)
       (v6-must-close)
       (v7-reason-phrase)
       )
    (multiple-value-setq (v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8)
        (drakma:http-request url   ;; "http://www.phpsecurepages.com/test/test.php"
                             :method :post
                             :parameters '(("dataText" .  "This is the dataText data")) ;;(("dataText" . "This is the dataText data")

 #|                             '(("entered_login" . "Tom.Stevens")
                                           ("entered_password" . "password")
                                           ("pathname"  .   (#p"c:/TOM/LISP PROJECTS TS/MyLispWebs/1-upload-test.txt"
|#
                        ;;             :content-type "text/html" :filename "SendData.php"))
                             ))

    ;;(afout 'out (format nil "v1-body-or-stream= ~A~% v2-status-code= ~A~% v3-headers= ~A~% v4-uri3-newURI= ~A~% v5-stream= ~A~% v6-must-close= ~A~% v7= ~A~% v8= ~A~% "  v1-body-or-stream v2-status-code v3-headers v4-newURI v5-stream v6-must-close v7-reason-phrase v8))
    ))
;;RETURNS
#|
CL-USER 17 > (testpost)
"NIL

v1-body-or-stream= ::************************  1-test-lisp.txt ******************************
;;

 v2-status-code= 200
 v3-headers= ((DATE . Mon, 13 Jan 2014 07:42:31 GMT) (SERVER . Apache/2.0.63) (SET-COOKIE . CSULB=76.93.235.222.1389598954163997; path=/; max-age=10368000; domain=.csulb.edu) (LAST-MODIFIED . Mon, 13 Jan 2014 06:11:54 GMT) (ETAG . \"650a41-4e-f3c8be80\") (ACCEPT-RANGES . bytes) (CONTENT-LENGTH . 78) (CONNECTION . close) (CONTENT-TYPE . text/plain))
 v4-uri3-newURI= http://web.csulb.edu/~tstevens/success/1-lisp-test.txt
 v5-stream= #<FLEXI-STREAMS:FLEXI-IO-STREAM 200A6B2F>
 v6-must-close= T
 v7= OK
 v8= NIL
 
"
|#


#|
PIECEMEAL ASSEMBLY OF REQUEST CONTENTS
Request contents can be assembled from various sources, and chunked encoding can be used by request bodies. MANY SERVERS DO NOT SUPPORT CHUNKED ENCODING FOR REQUEST BODIES, though
(let ((temp-file (ensure-directories-exist #p"/tmp/quux.txt"))
        (continuation 
         (drakma:http-request "http://localhost:4242/hunchentoot/test/parameter_latin1_post.html"
                                           :method :post
                                           :content :continuation)))
    (funcall continuation "foo=" t)
    (funcall continuation (list (char-code #\z) (char-code #\a)) t)
    (funcall continuation (lambda (stream)
                            (write-char #\p stream)) t)
    (with-open-file (out temp-file
                         :direction :output
                         :if-does-not-exist :create
                         :if-exists :supersede)
      (write-string "p" out))
    (funcall continuation temp-file t)
    (cl-ppcre:scan-to-strings "zappzerapp" (funcall continuation "zerapp")))
|#
;;EXAMPLE OF PARAMETER PLIST (see below)
;;   e.g., (#p"/tmp/my_file.doc" :content-type "application/msword" :filename "upload.doc").

;;MORE ON POST AND QUERY 
#|
    PARAMETERS is an ALIST OF NAME/VALUE PAIRS (the car and the cdr each being a STRING) which denotes the parameters which are ADDED TO THE QUERY PART of the URL or (in the case of a POST REQUEST) COMPRISE THE BODY OF THE REQUEST. 
[ME-EXAMPLE: :PARAMETERS '(("entered_login" . "Tom.Stevens") ("entered_password" . "C2632Nw37"))
(But see content below.) The values can also be NIL in which case only the name (without an equal sign) is used in the query string. The NAME/VALUE PAIRS ARE URL-ENCODED using the FLEXI-STREAMS external format external-format-out before they are sent to the server UNLESS form-data is true in which case the POST request body is sent as `multipart/form-data' using external-format-out. 
The VALUES OF THE PARAMETERS ALIST can also be PATHNAMES, open binary input streams, unary FUNCTIONS, or LISTS where the FIRST ELEMENT is of one of the former types. These VALUES DENOTE FILES which should be sent as part of the REQUEST BODY.
IF FILES ARE PRESENT in parameters, the CONTENT TYPE of the request is ALWAYS `MULTIPART/FORM-DATA'. 
If the VALUE IS A LIST, the part of the list BEHIND THE FIRST ELEMENT IS TREATED AS A PLIST which can be used to specify a CONTENT TYPE AND/OR A FILENAME for the file,
 i.e. such a VALUE could look like, e.g., (#p "/tmp/my_file.doc" :content-type "application/msword" :filename "upload.doc") [me- should the previous list be preceded by a NAME since this list is only the VALUE part??]
|#



;;(drakma:http-request "http://lisp.org/")
;;RETURNS
#|
CL-USER 2 > (drakma:http-request "http://lisp.org/")
"<HTML>
<HEAD>
  <title>John McCarthy, 1927-2011</title>
  <STYLE type=\"text/css\">
    BODY {text-align: center}
  </STYLE>
</HEAD>
<BODY>
<h1>John McCarthy</h1>
<img src=\"jmccolor.jpg\" alt=\"a picture of John McCarthy, from his website\"/>
<h3>1927-2011</h3>
<br><br>
<a href=\"http://www-formal.stanford.edu/jmc/\">John McCarthy's Home Page</a><br>
<a href=\"http://news.stanford.edu/news/2011/october/john-mccarthy-obit-102511.html\">Obituary</a>
</BODY>
</HTML>
"
200
((:DATE . "Sun, 12 Jan 2014 22:26:00 GMT") (:CONNECTION . "Close") (:SERVER . "AllegroServe/1.2.65") (:CONTENT-TYPE . "text/html") (:CONTENT-LENGTH . "459") (:LAST-MODIFIED . "Wed, 26 Oct 2011 02:26:26 GMT"))
#<PURI:URI http://lisp.org/index.html>
#<FLEXI-STREAMS:FLEXI-IO-STREAM 200B5CA7>
T
" OK"
|#

;;xxx -----------------LW Microsoft MSDN IWebBrowser2 PROPERTIES -----------
;;
#|
The MICROSOFT REF URL: 
    http://msdn.microsoft.com/en-us/library/aa752040%28v=vs.85%29.aspx

THE PROPERTIES OF THE IWEBBROWSER2 CLASS ARE LISTED HERE.

PUBLIC PROPERTIES	
ADDRESSBAR    Specifies whether the address bar is visible. 
OFFLINE    Indicates whether the document is loaded from the local cache or not. 
READYSTATE   Indicates the current state. 	
REGISTERASBROWSER   Registers the control as a top-level browser for target name resolution. 
REGISTERASDROPTARGET   Specifies whether users can load a document using the drag-and-drop operation. 
RESIZABLE  Speficies whether the object can be resized. 
SILENT   Specifies whether the dialog boxes can be displayed. 
THEATERMODE  Specifies if the object is in theater mode. 


BIGGER LIST:
IWebBrowser2 interface
30 out of 39 rated this helpful - Rate this topic
Exposes methods that are implemented by the WebBrowser control (Microsoft ActiveX control) or implemented by an instance of the InternetExplorer application (OLE Automation). For the Microsoft .NET Framework version of this control, see WebBrowser Control (Windows Forms).
Members
The IWebBrowser2 interface inherits from the IDispatch interface. IWebBrowser2 also has these types of members:

    Methods
    Properties
 
PROPERTIES

The IWebBrowser2 interface has these properties.
Property	Access type	Description

IWebBrowser2::AddressBar 
	Read/write	
Sets or gets a value that indicates whether the address bar of the object is visible or hidden.

IWebBrowser2::FullScreen
	Read/write
Sets or gets a value that indicates whether Internet Explorer is in full-screen mode or normal window mode.

IWebBrowser2::get_Application
	Read-only
Gets the automation object for the application that is hosting the WebBrowser Control.

IWebBrowser2::get_Busy
	Read-only
Gets a value that indicates whether the object is engaged in a navigation or downloading operation.

IWebBrowser2::get_Container
	Read-only	
Gets an object reference to a container.

IWebBrowser2::get_Document
	Read-only	
Gets the automation object of the active document, if any.

IWebBrowser2::get_FullName
	Read-only	
Retrieves the fully qualified path of the Internet Explorer executable.

IWebBrowser2::get_LocationName
	Read-only
Retrieves the path or title of the resource that is currently displayed.

IWebBrowser2::get_LocationURL
	Read-only	
Gets the URL of the resource that is currently displayed.

IWebBrowser2::get_Name
	Read-only
Retrieves the frame name or application name of the object.

IWebBrowser2::get_Parent
Read-only
Gets the parent of the object.

IWebBrowser2::get_Path
	Read-only
Retrieves the system folder of the Internet Explorer executable.

IWebBrowser2::get_ReadyState
	Read-only	
Gets the ready state of the object.

IWebBrowser2::get_RegisterAsBrowser
	Read/write	
Sets or gets a value that indicates whether the object is registered as a top-level browser window.

IWebBrowser2::get_TopLevelContainer
	Read-only
Gets a value that indicates whether the object is a top-level container.

IWebBrowser2::get_Type
	Read-only
GETS THE USER TYPE NAME of the contained document object.

IWebBrowser2::Height
	Read/write	
Sets or gets the height of the object.

IWebBrowser2::HWND
	Read-only	
Gets the handle of the Internet Explorer main window.

IWebBrowser2::LEFT
	Read/write	
SETS OR GETS THE COORDINATE OF THE LEFT EDGE OF THE OBJECT.

IWebBrowser2::MenuBar
	Read/write	
Sets or gets a value that indicates whether the Internet Explorer menu bar is visible.

IWebBrowser2::Offline
	Read/write	
Sets or gets a value that indicates whether the object is operating in offline mode.

IWebBrowser2::RegisterAsDropTarget
	Read/write
Sets or gets a value that indicates whether the object is registered as a drop target for navigation.

IWebBrowser2::RESIZABLE
	Read/write	
Sets or gets a value that indicates whether the object can be resized.

IWebBrowser2::Silent
	Read/write	
Sets or gets a value that indicates whether the object can DISPLAY DIALOG BOXES.

IWebBrowser2::StatusBar
	Read/write	
Sets or gets a value that indicates whether the status bar for the object is visible.

IWebBrowser2::StatusText
	Read/write	
Sets or gets the text in the status bar for the object.

IWebBrowser2::TheaterMode
	Read/write	
Sets or gets whether the object is in theater mode.

IWebBrowser2::ToolBar
	Read/write	
Sets or gets whether toolbars for the object are visible.

IWebBrowser2::TOP
	Read/write
Sets or gets the coordinate of the top edge of the object.

IWebBrowser2::VISIBLE
	Read/write
Sets or gets a value that indicates whether the object is visible or hidden.

IWebBrowser2::Width
	Read/write
Sets or gets the WIDTH of the object.

Copyright(C) 2009 Embarcadero Technologies, Inc. All Rights Reserved.
|#
