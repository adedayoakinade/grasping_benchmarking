
(cl:in-package :asdf)

(defsystem "mask_based_algo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Grasp2D" :depends-on ("_package_Grasp2D"))
    (:file "_package_Grasp2D" :depends-on ("_package"))
  ))