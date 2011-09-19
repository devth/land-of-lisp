(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))


; local variables
(let ((a 5)
      (b 10))
  (+ a b))

; local functions
(flet ((f (n)
          (+ n 10)))
  (f 5))

(flet ((f (n)
          (+ n 10))
       (g (n)
          (- n 3)))
  (g (f 5)))

(labels ((a (n)
            (+ n 5))
         (b (n)
            (+ (a n) 6)))
  (b 10))



(eq 'fooo 'FoOo) 

(cdr '(pork beef chicken))
(cdr (cdr '(pork beef chicken)))
