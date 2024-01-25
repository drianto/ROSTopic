
(cl:in-package :asdf)

(defsystem "ROSTopic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "topic" :depends-on ("_package_topic"))
    (:file "_package_topic" :depends-on ("_package"))
  ))