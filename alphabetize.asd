(asdf:defsystem "alphabetize"
  :version "0.1.0"
  :author "Joseph Diza <josephm.diza@gmail.com>"
  :license "AGPLv3"
  :depends-on ("for" "unix-opts")
  :components ((asdf:module "src"
                :components
                ((:file "alphabetize"))))
  :description "Alphabetizes lists or characters"
  :build-operation "program-op" ;; leave as is
  :build-pathname "bin/alphabetize"
  :entry-point "alphabetize:main"
  :in-order-to ((asdf:test-op (asdf:test-op "alphabetize/tests"))))

(asdf:defsystem "alphabetize/tests"
  :author "Joseph Diza <josephm.diza@gmail.com>"
  :license "AGPLv3"
  :depends-on ("alphabetize"
               "rove")
  :components ((asdf:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for alphabetize"
  :perform (asdf:test-op (op c) (symbol-call :rove :run c)))
