
(cl:in-package :asdf)

(defsystem "top_surface_algo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp" :depends-on ("_package_Grasp"))
    (:file "_package_Grasp" :depends-on ("_package"))
  ))