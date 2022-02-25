(defpackage alphabetize
  (:use :cl)
  (:documentation "Alphabetizes lists or characters")
  (:export :main))
(in-package :alphabetize)

;(require :for)
(require "for")
(require "unix-opts")

;(defparameter strings (list "#include <pcre.h>"
                       ;"#include <stdlib.h>"
                       ;"#include <string.h>"
                       ;"#include <math.h>"
                       ;"#include <argp.h>"
                       ;"#include <stdio.h>"
                       ;"#include <stdbool.h>"))

(defun alphabetize(strings)
  "Lexicographically alphabetizes a list of strings"
  (sort strings #'sb-unicode:unicode<))

;(defparameter sorted (sort strings #'sb-unicode:unicode<))
;(defparameter sorted (alphabetize strings))

(defun display(strings)
  "Shows the sorted list of strings delimited by new lines"
  (for:for ((str over strings))
  (format t "~a~%" str)))
  ;(format t "~{~a~^ ~}~%" str)))

;(display sorted)

(defun show-usage ()
  "Shows the usage of the binary"
  (progn
    (opts:describe
      :prefix "Alphabetizes lists or characters"
      :args "[keywords]")
    (opts:exit)))

(defun main ()

  ; Set up our options
  (opts:define-opts
    (:name :help
           :description "Show this help text"
           :short #\h
           :long "help"))

  (defparameter strings nil)
  ; Parse the command line options
  (multiple-value-bind (options free-args)
    (opts:get-opts (uiop:command-line-arguments))
    (if (getf options :help)
        (show-usage))
    (defparameter words (sb-unicode:words (format nil "~{~a ~}" free-args)))
    (setf strings (remove " " words :test 'equal)))

  ; Display the lexicographically ordered list
  (display (alphabetize strings))
  )
