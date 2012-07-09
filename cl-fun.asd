(in-package :cl-user)

(defpackage :cl-fun-asd
  (:use :cl :asdf))

(in-package :cl-fun-asd)

(defsystem :cl-fun
  :serial t
  :depends-on (#:lparallel
               #:postmodern
               #:clsql
               #:cl-fad
               #:montezuma
               #:hunchentoot
               #:cl-ppcre
               #:toot
               ;; Dependency issue with libbcrypt
               ;; #:whistle
               #:cl-dropbox
               #:cl-html-parse
               #:drakma)
  :components ((:file "packages")
               (:module "scratch"
                        :serial t
                        :components ((:file "fun")))))
