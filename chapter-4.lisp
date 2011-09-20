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
