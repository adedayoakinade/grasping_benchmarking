;; Auto-generated. Do not edit!


(when (boundp 'moveit_adapter::GripperCommand)
  (if (not (find-package "MOVEIT_ADAPTER"))
    (make-package "MOVEIT_ADAPTER"))
  (shadow 'GripperCommand (find-package "MOVEIT_ADAPTER")))
(unless (find-package "MOVEIT_ADAPTER::GRIPPERCOMMAND")
  (make-package "MOVEIT_ADAPTER::GRIPPERCOMMAND"))
(unless (find-package "MOVEIT_ADAPTER::GRIPPERCOMMANDREQUEST")
  (make-package "MOVEIT_ADAPTER::GRIPPERCOMMANDREQUEST"))
(unless (find-package "MOVEIT_ADAPTER::GRIPPERCOMMANDRESPONSE")
  (make-package "MOVEIT_ADAPTER::GRIPPERCOMMANDRESPONSE"))

(in-package "ROS")





(defclass moveit_adapter::GripperCommandRequest
  :super ros::object
  :slots (_width ))

(defmethod moveit_adapter::GripperCommandRequest
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

(defclass moveit_adapter::GripperCommandResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_adapter::GripperCommandResponse
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

(defclass moveit_adapter::GripperCommand
  :super ros::object
  :slots ())

(setf (get moveit_adapter::GripperCommand :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get moveit_adapter::GripperCommand :datatype-) "moveit_adapter/GripperCommand")
(setf (get moveit_adapter::GripperCommand :request) moveit_adapter::GripperCommandRequest)
(setf (get moveit_adapter::GripperCommand :response) moveit_adapter::GripperCommandResponse)

(defmethod moveit_adapter::GripperCommandRequest
  (:response () (instance moveit_adapter::GripperCommandResponse :init)))

(setf (get moveit_adapter::GripperCommandRequest :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get moveit_adapter::GripperCommandRequest :datatype-) "moveit_adapter/GripperCommandRequest")
(setf (get moveit_adapter::GripperCommandRequest :definition-)
      "float32 width
---
bool success
")

(setf (get moveit_adapter::GripperCommandResponse :md5sum-) "be5ef003f22cb11bc267a44b935e1625")
(setf (get moveit_adapter::GripperCommandResponse :datatype-) "moveit_adapter/GripperCommandResponse")
(setf (get moveit_adapter::GripperCommandResponse :definition-)
      "float32 width
---
bool success
")



(provide :moveit_adapter/GripperCommand "be5ef003f22cb11bc267a44b935e1625")


