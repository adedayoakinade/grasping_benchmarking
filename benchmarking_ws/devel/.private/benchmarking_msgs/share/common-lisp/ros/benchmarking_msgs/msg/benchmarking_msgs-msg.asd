
(cl:in-package :asdf)

(defsystem "benchmarking_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp" :depends-on ("_package_Grasp"))
    (:file "_package_Grasp" :depends-on ("_package"))
    (:file "Grasp2D" :depends-on ("_package_Grasp2D"))
    (:file "_package_Grasp2D" :depends-on ("_package"))
  ))