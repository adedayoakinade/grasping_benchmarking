
(cl:in-package :asdf)

(defsystem "ros_deep_grasp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_deep_grasp-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp2DPrediction" :depends-on ("_package_Grasp2DPrediction"))
    (:file "_package_Grasp2DPrediction" :depends-on ("_package"))
    (:file "GraspPrediction" :depends-on ("_package_GraspPrediction"))
    (:file "_package_GraspPrediction" :depends-on ("_package"))
  ))