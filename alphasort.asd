(asdf:defsystem "alphasort"
  :version "1.0.0"
  :author "Joseph Diza <josephm.diza@gmail.com>"
  :license "AGPLv3"
  :depends-on ("for" "unix-opts")
  :components ((asdf:module "src"
                :components
                ((:file "alphasort"))))
  :description "Alphabetizes lists or characters"
  :build-operation "program-op" ;; leave as is
  :build-pathname "bin/alphasort"
  :entry-point "alphasort:main"
  :in-order-to ((asdf:test-op (asdf:test-op "alphasort/tests"))))

(asdf:defsystem "alphasort/tests"
  :author "Joseph Diza <josephm.diza@gmail.com>"
  :license "AGPLv3"
  :depends-on ("alphasort"
               "rove")
  :components ((asdf:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for alphasort"
  :perform (asdf:test-op (op c) (symbol-call :rove :run c)))
