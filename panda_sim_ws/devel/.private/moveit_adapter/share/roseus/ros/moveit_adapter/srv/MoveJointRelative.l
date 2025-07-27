;; Auto-generated. Do not edit!


(when (boundp 'moveit_adapter::MoveJointRelative)
  (if (not (find-package "MOVEIT_ADAPTER"))
    (make-package "MOVEIT_ADAPTER"))
  (shadow 'MoveJointRelative (find-package "MOVEIT_ADAPTER")))
(unless (find-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVE")
  (make-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVE"))
(unless (find-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVEREQUEST")
  (make-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVEREQUEST"))
(unless (find-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVERESPONSE")
  (make-package "MOVEIT_ADAPTER::MOVEJOINTRELATIVERESPONSE"))

(in-package "ROS")





(defclass moveit_adapter::MoveJointRelativeRequest
  :super ros::object
  :slots (_joint _ang_disp ))

(defmethod moveit_adapter::MoveJointRelativeRequest
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

(defclass moveit_adapter::MoveJointRelativeResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_adapter::MoveJointRelativeResponse
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

(defclass moveit_adapter::MoveJointRelative
  :super ros::object
  :slots ())

(setf (get moveit_adapter::MoveJointRelative :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get moveit_adapter::MoveJointRelative :datatype-) "moveit_adapter/MoveJointRelative")
(setf (get moveit_adapter::MoveJointRelative :request) moveit_adapter::MoveJointRelativeRequest)
(setf (get moveit_adapter::MoveJointRelative :response) moveit_adapter::MoveJointRelativeResponse)

(defmethod moveit_adapter::MoveJointRelativeRequest
  (:response () (instance moveit_adapter::MoveJointRelativeResponse :init)))

(setf (get moveit_adapter::MoveJointRelativeRequest :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get moveit_adapter::MoveJointRelativeRequest :datatype-) "moveit_adapter/MoveJointRelativeRequest")
(setf (get moveit_adapter::MoveJointRelativeRequest :definition-)
      "int32 joint
float32 ang_disp
---
bool success
")

(setf (get moveit_adapter::MoveJointRelativeResponse :md5sum-) "6a2ebcc60925d499d2755f9d7fc50d83")
(setf (get moveit_adapter::MoveJointRelativeResponse :datatype-) "moveit_adapter/MoveJointRelativeResponse")
(setf (get moveit_adapter::MoveJointRelativeResponse :definition-)
      "int32 joint
float32 ang_disp
---
bool success
")



(provide :moveit_adapter/MoveJointRelative "6a2ebcc60925d499d2755f9d7fc50d83")


