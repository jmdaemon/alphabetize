(defpackage alphabetize/tests/main
  (:use :cl
        :alphabetize
        :rove))
(in-package :alphabetize/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :alphabetize)' in your Lisp.

(deftest test-alphabetize-words
  (testing "Should alphabetize words without whitespace (aaaa bbbb cccc)"
    (defparameter strings (list "bbbb" "cccc" "aaaa"))
      (ok (equal (alphabetize:alphabetize strings) (list "aaaa" "bbbb" "cccc")))))

(deftest test-alphabetize-imports ()
  (testing "Should alphabetize words without whitespace (aaaa bbbb cccc)"
    (defparameter strings
      (list
        "#include <pcre.h>"
        "#include <stdlib.h>"
        "#include <string.h>"
        "#include <math.h>"
        "#include <argp.h>"
        "#include <stdio.h>"
        "#include <stdbool.h>"))
    (ok (equal (alphabetize:alphabetize strings)
               (list
                 "#include <argp.h>"
                 "#include <math.h>"
                 "#include <pcre.h>"
                 "#include <stdbool.h>"
                 "#include <stdio.h>"
                 "#include <stdlib.h>"
                 "#include <string.h>"
                                  )))))
