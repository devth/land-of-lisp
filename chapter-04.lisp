(if '()
  'i-am-true
  'i-am-false)

(defun my-length (list)
  (if list
    (1+ (my-length (cdr list)))
    0))

(my-length '(list with four symbols))


(defvar *number-was-odd* nil)

; if
(if (oddp 5)
  (progn (setf *number-was-odd* t)
         'odd-number)
  'even-number)


(defvar *number-is-odd* nil)

; when
(when (oddp 5)
  (setf *number-is-odd* t)
  'odd-number)

; unless
(unless (oddp 4)
  (setf *number-is-odd* nil)
  'even-number)

; cond - the ultimate
(defvar *arch-enemy* nil)
(defun pudding-eater (person)
  (cond ((eq person 'henry) (setf *arch-enemy* 'stupid-lisp-alien)
                            '(curse you lisp alien - you ate my pudding))
        ((eq person 'johnny) (setf *arch-enemy* 'useless-old-johnny)
                             '(i hope you choked on my pudding johnny))
        (t                   '(why you eat my pudding stranger ?))))


; case
(defun text-editor (name)
  (case name
    ((vim)
     '(that is a fine choice))
    ((emacs)
     '(not bad at all))
    ((eclipse)
     '(wtf is wrong with you))
    (otherwise
      '(as long as it is not eclipse i do not mind you that much))))

(text-editor 'vim)
(text-editor 'textmate)

; conditionals tricks
(and (oddp 5) (oddp 7) (oddp 9))

; member returns truthy
(if (member 0 '(1 2 3 4))
        'is-in-the-list
        'is-not-in-the-list)

; even a list that only contains `nil` is truthy
(if '(nil)
  'true
  'false)

; benefiting from rich return values + high order functions
(find-if #'oddp '(2 4 5 6)) ; returns 5

(find-if #'oddp '(2 4 6)) ; returns nil

(if (find-if #'oddp '(2 4 5 9))
  'there-is-an-odd-number
  'nope-no-odd-number)


;
; an overview of CL's comparison mechanisms
; 

; use `eq` to compare symbols
(eq 'apple 'apple)

(defparameter *orange* 'orange)
(eq *orange* 'orange)

; use 'equal` for everything else - isomorphic comparison, i.e. "they look the same"
(equal 'apple 'apple)
(equal 1.0 1) ; nil
(eq 1.0 1) ; nil
(equal 2 2)

; use 'eql' for symbols, numbers and characters
(eql 'foo 'foo)
(eql 3.4 3.4)

; 'equalp` is like `equal` except it can handle difficult comparison cases with
; extra sophistication (strings w/ different capitalizations and integers against
; floating point numbers)
(equalp 1 1.0) ; T
(equalp "Jim Jones" "jim jones") ; T

