(defpackage alphabetize
  (:use :cl)
  (:documentation "Alphabetizes lists or characters")
  (:export :main))
(in-package :alphabetize)
(require :for)

(defparameter strings (list "#include <pcre.h>"
                       "#include <stdlib.h>"
                       "#include <string.h>"
                       "#include <math.h>"
                       "#include <argp.h>"
                       "#include <stdio.h>"
                       "#include <stdbool.h>"))

(defun alphabetize(strings)
  "Lexicographically alphabetizes a list of strings"
  (sort strings #'sb-unicode:unicode<))

;(defparameter sorted (sort strings #'sb-unicode:unicode<))
(defparameter sorted (alphabetize strings))

(defun display(strings)
  "Shows the sorted list of strings delimited by new lines"
  (for:for ((str over strings))
  (format t "~a~%" str)))

(display sorted)

(defun main ()
  (print "Start of Main"))
