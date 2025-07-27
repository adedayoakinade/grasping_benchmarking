;; Auto-generated. Do not edit!


(when (boundp 'moveit_adapter::StopMovement)
  (if (not (find-package "MOVEIT_ADAPTER"))
    (make-package "MOVEIT_ADAPTER"))
  (shadow 'StopMovement (find-package "MOVEIT_ADAPTER")))
(unless (find-package "MOVEIT_ADAPTER::STOPMOVEMENT")
  (make-package "MOVEIT_ADAPTER::STOPMOVEMENT"))
(unless (find-package "MOVEIT_ADAPTER::STOPMOVEMENTREQUEST")
  (make-package "MOVEIT_ADAPTER::STOPMOVEMENTREQUEST"))
(unless (find-package "MOVEIT_ADAPTER::STOPMOVEMENTRESPONSE")
  (make-package "MOVEIT_ADAPTER::STOPMOVEMENTRESPONSE"))

(in-package "ROS")





(defclass moveit_adapter::StopMovementRequest
  :super ros::object
  :slots (_stop ))

(defmethod moveit_adapter::StopMovementRequest
  (:init
   (&key
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   self)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass moveit_adapter::StopMovementResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_adapter::StopMovementResponse
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

(defclass moveit_adapter::StopMovement
  :super ros::object
  :slots ())

(setf (get moveit_adapter::StopMovement :md5sum-) "5fb7f99d98a30bfd9eeddbb34b138b31")
(setf (get moveit_adapter::StopMovement :datatype-) "moveit_adapter/StopMovement")
(setf (get moveit_adapter::StopMovement :request) moveit_adapter::StopMovementRequest)
(setf (get moveit_adapter::StopMovement :response) moveit_adapter::StopMovementResponse)

(defmethod moveit_adapter::StopMovementRequest
  (:response () (instance moveit_adapter::StopMovementResponse :init)))

(setf (get moveit_adapter::StopMovementRequest :md5sum-) "5fb7f99d98a30bfd9eeddbb34b138b31")
(setf (get moveit_adapter::StopMovementRequest :datatype-) "moveit_adapter/StopMovementRequest")
(setf (get moveit_adapter::StopMovementRequest :definition-)
      "bool stop
---
bool success
")

(setf (get moveit_adapter::StopMovementResponse :md5sum-) "5fb7f99d98a30bfd9eeddbb34b138b31")
(setf (get moveit_adapter::StopMovementResponse :datatype-) "moveit_adapter/StopMovementResponse")
(setf (get moveit_adapter::StopMovementResponse :definition-)
      "bool stop
---
bool success
")



(provide :moveit_adapter/StopMovement "5fb7f99d98a30bfd9eeddbb34b138b31")


