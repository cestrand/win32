(in-package #:defpackage+-user-1)

(defpackage+ #:win32
  (:use #:cffi #:cl)
  (:shadow
   #:atom
   #:boolean
   #:byte
   #:char
   #:float)
  (:export
   #:+win32-string-encoding+
   #:version
   #:kernel32
   #:user32
   #:shell32
   #:gdi32
   #:opengl32
   #:advapi32
   #:setupapi))

