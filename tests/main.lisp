(defpackage alphasort/tests/main
  (:use :cl
        :alphasort
        :rove))
(in-package :alphasort/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :alphasort)' in your Lisp.

(deftest test-alphasort-words
  (testing "Should alphasort words without whitespace (aaaa bbbb cccc)"
    (defparameter strings (list "bbbb" "cccc" "aaaa"))
      (ok (equal (alphasort:alphasort strings) (list "aaaa" "bbbb" "cccc")))))

(deftest test-alphasort-imports ()
  (testing "Should alphasort words without whitespace (aaaa bbbb cccc)"
    (defparameter strings
      (list
        "#include <pcre.h>"
        "#include <stdlib.h>"
        "#include <string.h>"
        "#include <math.h>"
        "#include <argp.h>"
        "#include <stdio.h>"
        "#include <stdbool.h>"))
    (ok (equal (alphasort:alphasort strings)
               (list
                 "#include <argp.h>"
                 "#include <math.h>"
                 "#include <pcre.h>"
                 "#include <stdbool.h>"
                 "#include <stdio.h>"
                 "#include <stdlib.h>"
                 "#include <string.h>"
                                  )))))
