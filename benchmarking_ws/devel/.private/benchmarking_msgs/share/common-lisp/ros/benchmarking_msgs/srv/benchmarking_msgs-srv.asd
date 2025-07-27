
(cl:in-package :asdf)

(defsystem "benchmarking_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :benchmarking_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CurrentPose" :depends-on ("_package_CurrentPose"))
    (:file "_package_CurrentPose" :depends-on ("_package"))
    (:file "EndEffectorWaypoint" :depends-on ("_package_EndEffectorWaypoint"))
    (:file "_package_EndEffectorWaypoint" :depends-on ("_package"))
    (:file "Grasp2DPrediction" :depends-on ("_package_Grasp2DPrediction"))
    (:file "_package_Grasp2DPrediction" :depends-on ("_package"))
    (:file "GraspPrediction" :depends-on ("_package_GraspPrediction"))
    (:file "_package_GraspPrediction" :depends-on ("_package"))
    (:file "GripperCommand" :depends-on ("_package_GripperCommand"))
    (:file "_package_GripperCommand" :depends-on ("_package"))
    (:file "MoveJointRelative" :depends-on ("_package_MoveJointRelative"))
    (:file "_package_MoveJointRelative" :depends-on ("_package"))
    (:file "ProcessAndExecute" :depends-on ("_package_ProcessAndExecute"))
    (:file "_package_ProcessAndExecute" :depends-on ("_package"))
    (:file "SetJointVelocity" :depends-on ("_package_SetJointVelocity"))
    (:file "_package_SetJointVelocity" :depends-on ("_package"))
  ))