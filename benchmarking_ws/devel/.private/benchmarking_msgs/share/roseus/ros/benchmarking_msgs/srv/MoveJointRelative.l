;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::MoveJointRelative)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'MoveJointRelative (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVE")
  (make-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVE"))
(unless (find-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVEREQUEST")
  (make-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVEREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVERESPONSE")
  (make-package "BENCHMARKING_MSGS::MOVEJOINTRELATIVERESPONSE"))

(in-package "ROS")





(defclass benchmarking_msgs::MoveJointRelativeRequest
  :super ros::object
  :slots (_joint _ang_disp ))

(defmethod benchmarking_msgs::MoveJointRelativeRequest
  (:init
   (&key
    ((:joint __joint) 0)
    ((:ang_disp __ang_disp) 0.0)
    )
   (send-super :init)
   (setq _joint (round __joint))
   (setq _ang_disp (float __ang_disp))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:ang_disp
   (&optional __ang_disp)
   (if __ang_disp (setq _ang_disp __ang_disp)) _ang_disp)
  (:serialization-length
   ()
   (+
    ;; int32 _joint
    4
    ;; float32 _ang_disp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _joint
       (write-long _joint s)
     ;; float32 _ang_disp
       (sys::poke _ang_disp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _joint
     (setq _joint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _ang_disp
     (setq _ang_disp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass benchmarking_msgs::MoveJointRelativeResponse
  :super ros::object
  :slots (_success ))

(defmethod benchmarking_msgs::MoveJointRelativeResponse
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

(defclass benchmarking_msgs::MoveJointRelative
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::MoveJointRelative :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get benchmarking_msgs::MoveJointRelative :datatype-) "benchmarking_msgs/MoveJointRelative")
(setf (get benchmarking_msgs::MoveJointRelative :request) benchmarking_msgs::MoveJointRelativeRequest)
(setf (get benchmarking_msgs::MoveJointRelative :response) benchmarking_msgs::MoveJointRelativeResponse)

(defmethod benchmarking_msgs::MoveJointRelativeRequest
  (:response () (instance benchmarking_msgs::MoveJointRelativeResponse :init)))

(setf (get benchmarking_msgs::MoveJointRelativeRequest :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get benchmarking_msgs::MoveJointRelativeRequest :datatype-) "benchmarking_msgs/MoveJointRelativeRequest")
(setf (get benchmarking_msgs::MoveJointRelativeRequest :definition-)
      "int32 joint
float32 ang_disp
---
bool success
")

(setf (get benchmarking_msgs::MoveJointRelativeResponse :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get benchmarking_msgs::MoveJointRelativeResponse :datatype-) "benchmarking_msgs/MoveJointRelativeResponse")
(setf (get benchmarking_msgs::MoveJointRelativeResponse :definition-)
      "int32 joint
float32 ang_disp
---
bool success
")



(provide :benchmarking_msgs/MoveJointRelative "6a2ebcc60925d499d2755f9d7fc50d83")


