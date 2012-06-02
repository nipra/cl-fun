(in-package :cl-user)

(defpackage :cl-fun-asd
  (:use :cl :asdf))

(in-package :cl-fun-asd)

(defsystem :cl-fun
  :serial t
  :depends-on (#:lparallel)
  :components ((:file "packages")
               (:module "scratch"
                        :serial t
                        :components ((:file "fun")))))