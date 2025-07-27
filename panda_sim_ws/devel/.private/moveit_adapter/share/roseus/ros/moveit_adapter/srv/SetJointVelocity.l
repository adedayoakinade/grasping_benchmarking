;; Auto-generated. Do not edit!


(when (boundp 'moveit_adapter::SetJointVelocity)
  (if (not (find-package "MOVEIT_ADAPTER"))
    (make-package "MOVEIT_ADAPTER"))
  (shadow 'SetJointVelocity (find-package "MOVEIT_ADAPTER")))
(unless (find-package "MOVEIT_ADAPTER::SETJOINTVELOCITY")
  (make-package "MOVEIT_ADAPTER::SETJOINTVELOCITY"))
(unless (find-package "MOVEIT_ADAPTER::SETJOINTVELOCITYREQUEST")
  (make-package "MOVEIT_ADAPTER::SETJOINTVELOCITYREQUEST"))
(unless (find-package "MOVEIT_ADAPTER::SETJOINTVELOCITYRESPONSE")
  (make-package "MOVEIT_ADAPTER::SETJOINTVELOCITYRESPONSE"))

(in-package "ROS")





(defclass moveit_adapter::SetJointVelocityRequest
  :super ros::object
  :slots (_joint_velocity ))

(defmethod moveit_adapter::SetJointVelocityRequest
  (:init
   (&key
    ((:joint_velocity __joint_velocity) 0.0)
    )
   (send-super :init)
   (setq _joint_velocity (float __joint_velocity))
   self)
  (:joint_velocity
   (&optional __joint_velocity)
   (if __joint_velocity (setq _joint_velocity __joint_velocity)) _joint_velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _joint_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint_velocity
       (sys::poke _joint_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint_velocity
     (setq _joint_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass moveit_adapter::SetJointVelocityResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_adapter::SetJointVelocityResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass moveit_adapter::SetJointVelocity
  :super ros::object
  :slots ())

(setf (get moveit_adapter::SetJointVelocity :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get moveit_adapter::SetJointVelocity :datatype-) "moveit_adapter/SetJointVelocity")
(setf (get moveit_adapter::SetJointVelocity :request) moveit_adapter::SetJointVelocityRequest)
(setf (get moveit_adapter::SetJointVelocity :response) moveit_adapter::SetJointVelocityResponse)

(defmethod moveit_adapter::SetJointVelocityRequest
  (:response () (instance moveit_adapter::SetJointVelocityResponse :init)))

(setf (get moveit_adapter::SetJointVelocityRequest :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get moveit_adapter::SetJointVelocityRequest :datatype-) "moveit_adapter/SetJointVelocityRequest")
(setf (get moveit_adapter::SetJointVelocityRequest :definition-)
      "float32 joint_velocity
---
bool success
")

(setf (get moveit_adapter::SetJointVelocityResponse :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get moveit_adapter::SetJointVelocityResponse :datatype-) "moveit_adapter/SetJointVelocityResponse")
(setf (get moveit_adapter::SetJointVelocityResponse :definition-)
      "float32 joint_velocity
---
bool success
")



(provide :moveit_adapter/SetJointVelocity "01ec734cf68bcf4ba7f369be137b28ee")


