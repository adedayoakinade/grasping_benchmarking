
(cl:in-package :asdf)

(defsystem "moveit_adapter-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CurrentPose" :depends-on ("_package_CurrentPose"))
    (:file "_package_CurrentPose" :depends-on ("_package"))
    (:file "EndEffectorWaypoint" :depends-on ("_package_EndEffectorWaypoint"))
    (:file "_package_EndEffectorWaypoint" :depends-on ("_package"))
    (:file "GripperCommand" :depends-on ("_package_GripperCommand"))
    (:file "_package_GripperCommand" :depends-on ("_package"))
    (:file "MoveJointRelative" :depends-on ("_package_MoveJointRelative"))
    (:file "_package_MoveJointRelative" :depends-on ("_package"))
    (:file "SetJointVelocity" :depends-on ("_package_SetJointVelocity"))
    (:file "_package_SetJointVelocity" :depends-on ("_package"))
    (:file "StopMovement" :depends-on ("_package_StopMovement"))
    (:file "_package_StopMovement" :depends-on ("_package"))
  ))