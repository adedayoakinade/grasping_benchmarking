;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::ProcessAndExecute)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'ProcessAndExecute (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::PROCESSANDEXECUTE")
  (make-package "BENCHMARKING_MSGS::PROCESSANDEXECUTE"))
(unless (find-package "BENCHMARKING_MSGS::PROCESSANDEXECUTEREQUEST")
  (make-package "BENCHMARKING_MSGS::PROCESSANDEXECUTEREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::PROCESSANDEXECUTERESPONSE")
  (make-package "BENCHMARKING_MSGS::PROCESSANDEXECUTERESPONSE"))

(in-package "ROS")





(defclass benchmarking_msgs::ProcessAndExecuteRequest
  :super ros::object
  :slots ())

(defmethod benchmarking_msgs::ProcessAndExecuteRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass benchmarking_msgs::ProcessAndExecuteResponse
  :super ros::object
  :slots (_success ))

(defmethod benchmarking_msgs::ProcessAndExecuteResponse
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

(defclass benchmarking_msgs::ProcessAndExecute
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::ProcessAndExecute :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get benchmarking_msgs::ProcessAndExecute :datatype-) "benchmarking_msgs/ProcessAndExecute")
(setf (get benchmarking_msgs::ProcessAndExecute :request) benchmarking_msgs::ProcessAndExecuteRequest)
(setf (get benchmarking_msgs::ProcessAndExecute :response) benchmarking_msgs::ProcessAndExecuteResponse)

(defmethod benchmarking_msgs::ProcessAndExecuteRequest
  (:response () (instance benchmarking_msgs::ProcessAndExecuteResponse :init)))

(setf (get benchmarking_msgs::ProcessAndExecuteRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get benchmarking_msgs::ProcessAndExecuteRequest :datatype-) "benchmarking_msgs/ProcessAndExecuteRequest")
(setf (get benchmarking_msgs::ProcessAndExecuteRequest :definition-)
      "---
bool success
")

(setf (get benchmarking_msgs::ProcessAndExecuteResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get benchmarking_msgs::ProcessAndExecuteResponse :datatype-) "benchmarking_msgs/ProcessAndExecuteResponse")
(setf (get benchmarking_msgs::ProcessAndExecuteResponse :definition-)
      "---
bool success
")



(provide :benchmarking_msgs/ProcessAndExecute "358e233cde0c8a8bcfea4ce193f8fc15")


