(progn (prin1 "hello")
       (prin1 "clisp"))


(defun say-hello ()
  (print "Type your name:")
  (let ((name (read)))
    (print "Nice to meet you, ")
    (print name)))

(defun add-five ()
  (print "enter a number:")
  (let ((num (read)))
    (print "When I add five I get")
    (print (+ num 5))))


; princ - printing for humans
; print - printing for computers
(princ "hello how are you")
(princ '3.4)

(progn (princ "This sentence will be interrupted")
       (princ #\newline)
       (princ "by an annoying newline character."))

; do it proper
(defun say-hello()
  (princ "Please type your name: ")
  (let ((name (read-line)))
    (princ "Nice to meet you, ")
    (princ name)))

; eval
(defparameter *foo* '(+ 1 2))
(eval *foo*)


