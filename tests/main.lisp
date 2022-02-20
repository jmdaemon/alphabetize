(defpackage alphabetize/tests/main
  (:use :cl
        :alphabetize
        :rove))
(in-package :alphabetize/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :alphabetize)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
