
(cl:in-package :asdf)

(defsystem "gpd_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gpd_ros-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp2DPrediction" :depends-on ("_package_Grasp2DPrediction"))
    (:file "_package_Grasp2DPrediction" :depends-on ("_package"))
    (:file "GraspPrediction" :depends-on ("_package_GraspPrediction"))
    (:file "_package_GraspPrediction" :depends-on ("_package"))
    (:file "detect_grasps" :depends-on ("_package_detect_grasps"))
    (:file "_package_detect_grasps" :depends-on ("_package"))
  ))