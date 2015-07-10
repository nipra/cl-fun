(in-package :cl-fun)

;;; http://0branch.com/notes/tco-cl.html
(defun foo () (foo))

;; (disassemble 'foo)

(defun bar () (foo))

;; (disassemble 'bar)

(defun baz ()
  (format t "Hello")
  (bar))

;; (disassemble 'baz)

;; (declaim (optimize #+sbcl (sb-c::merge-tail-calls 3)
;;                    #+sbcl (sb-c::insert-debug-catch 0)))

;; (declaim (optimize (debug 0)
;;                    (safety 0)
;;                    (speed 3)))

(defun hello ()
  (format t "Hello World!~%"))
