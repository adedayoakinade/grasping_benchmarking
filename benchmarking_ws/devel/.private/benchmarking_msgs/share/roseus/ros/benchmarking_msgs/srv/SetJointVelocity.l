;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::SetJointVelocity)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'SetJointVelocity (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::SETJOINTVELOCITY")
  (make-package "BENCHMARKING_MSGS::SETJOINTVELOCITY"))
(unless (find-package "BENCHMARKING_MSGS::SETJOINTVELOCITYREQUEST")
  (make-package "BENCHMARKING_MSGS::SETJOINTVELOCITYREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::SETJOINTVELOCITYRESPONSE")
  (make-package "BENCHMARKING_MSGS::SETJOINTVELOCITYRESPONSE"))

(in-package "ROS")





(defclass benchmarking_msgs::SetJointVelocityRequest
  :super ros::object
  :slots (_joint_velocity ))

(defmethod benchmarking_msgs::SetJointVelocityRequest
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

(defclass benchmarking_msgs::SetJointVelocityResponse
  :super ros::object
  :slots (_success ))

(defmethod benchmarking_msgs::SetJointVelocityResponse
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

(defclass benchmarking_msgs::SetJointVelocity
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::SetJointVelocity :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get benchmarking_msgs::SetJointVelocity :datatype-) "benchmarking_msgs/SetJointVelocity")
(setf (get benchmarking_msgs::SetJointVelocity :request) benchmarking_msgs::SetJointVelocityRequest)
(setf (get benchmarking_msgs::SetJointVelocity :response) benchmarking_msgs::SetJointVelocityResponse)

(defmethod benchmarking_msgs::SetJointVelocityRequest
  (:response () (instance benchmarking_msgs::SetJointVelocityResponse :init)))

(setf (get benchmarking_msgs::SetJointVelocityRequest :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get benchmarking_msgs::SetJointVelocityRequest :datatype-) "benchmarking_msgs/SetJointVelocityRequest")
(setf (get benchmarking_msgs::SetJointVelocityRequest :definition-)
      "float32 joint_velocity
---
bool success
")

(setf (get benchmarking_msgs::SetJointVelocityResponse :md5sum-) "01ec734cf68bcf4ba7f369be137b28ee")
(setf (get benchmarking_msgs::SetJointVelocityResponse :datatype-) "benchmarking_msgs/SetJointVelocityResponse")
(setf (get benchmarking_msgs::SetJointVelocityResponse :definition-)
      "float32 joint_velocity
---
bool success
")



(provide :benchmarking_msgs/SetJointVelocity "01ec734cf68bcf4ba7f369be137b28ee")


