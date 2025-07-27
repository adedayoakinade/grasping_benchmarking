;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::GripperCommand)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'GripperCommand (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::GRIPPERCOMMAND")
  (make-package "BENCHMARKING_MSGS::GRIPPERCOMMAND"))
(unless (find-package "BENCHMARKING_MSGS::GRIPPERCOMMANDREQUEST")
  (make-package "BENCHMARKING_MSGS::GRIPPERCOMMANDREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::GRIPPERCOMMANDRESPONSE")
  (make-package "BENCHMARKING_MSGS::GRIPPERCOMMANDRESPONSE"))

(in-package "ROS")





(defclass benchmarking_msgs::GripperCommandRequest
  :super ros::object
  :slots (_width ))

(defmethod benchmarking_msgs::GripperCommandRequest
  (:init
   (&key
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass benchmarking_msgs::GripperCommandResponse
  :super ros::object
  :slots (_success ))

(defmethod benchmarking_msgs::GripperCommandResponse
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

(defclass benchmarking_msgs::GripperCommand
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::GripperCommand :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get benchmarking_msgs::GripperCommand :datatype-) "benchmarking_msgs/GripperCommand")
(setf (get benchmarking_msgs::GripperCommand :request) benchmarking_msgs::GripperCommandRequest)
(setf (get benchmarking_msgs::GripperCommand :response) benchmarking_msgs::GripperCommandResponse)

(defmethod benchmarking_msgs::GripperCommandRequest
  (:response () (instance benchmarking_msgs::GripperCommandResponse :init)))

(setf (get benchmarking_msgs::GripperCommandRequest :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get benchmarking_msgs::GripperCommandRequest :datatype-) "benchmarking_msgs/GripperCommandRequest")
(setf (get benchmarking_msgs::GripperCommandRequest :definition-)
      "float32 width
---
bool success
")

(setf (get benchmarking_msgs::GripperCommandResponse :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get benchmarking_msgs::GripperCommandResponse :datatype-) "benchmarking_msgs/GripperCommandResponse")
(setf (get benchmarking_msgs::GripperCommandResponse :definition-)
      "float32 width
---
bool success
")



(provide :benchmarking_msgs/GripperCommand "be5ef003f22cb11bc267a44b935e1625")


