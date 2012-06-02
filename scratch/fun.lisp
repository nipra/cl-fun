(in-package :cl-fun)

(setf lparallel:*kernel* (lparallel:make-kernel 10))

(defun pmap-example ()
  (pmap 'vector (lambda (x) (* x x)) :parts 2 '(3 4 5)))

