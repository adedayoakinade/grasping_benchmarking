
(cl:in-package :asdf)

(defsystem "template_algo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :template_algo-msg
)
  :components ((:file "_package")
    (:file "Grasp2DPrediction" :depends-on ("_package_Grasp2DPrediction"))
    (:file "_package_Grasp2DPrediction" :depends-on ("_package"))
    (:file "GraspPrediction" :depends-on ("_package_GraspPrediction"))
    (:file "_package_GraspPrediction" :depends-on ("_package"))
  ))