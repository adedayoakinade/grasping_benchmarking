
(cl:in-package :asdf)

(defsystem "top_surface_algo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :top_surface_algo-msg
)
  :components ((:file "_package")
    (:file "EFDGrasp" :depends-on ("_package_EFDGrasp"))
    (:file "_package_EFDGrasp" :depends-on ("_package"))
    (:file "GraspPrediction" :depends-on ("_package_GraspPrediction"))
    (:file "_package_GraspPrediction" :depends-on ("_package"))
  ))