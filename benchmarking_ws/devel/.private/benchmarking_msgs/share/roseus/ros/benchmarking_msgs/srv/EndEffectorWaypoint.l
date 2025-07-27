;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::EndEffectorWaypoint)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'EndEffectorWaypoint (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINT")
  (make-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINT"))
(unless (find-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINTREQUEST")
  (make-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINTREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINTRESPONSE")
  (make-package "BENCHMARKING_MSGS::ENDEFFECTORWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass benchmarking_msgs::EndEffectorWaypointRequest
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw ))

(defmethod benchmarking_msgs::EndEffectorWaypointRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass benchmarking_msgs::EndEffectorWaypointResponse
  :super ros::object
  :slots (_success ))

(defmethod benchmarking_msgs::EndEffectorWaypointResponse
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

(defclass benchmarking_msgs::EndEffectorWaypoint
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::EndEffectorWaypoint :md5sum-) "04ac508012fcfbad2482b96edbe35269")
(setf (get benchmarking_msgs::EndEffectorWaypoint :datatype-) "benchmarking_msgs/EndEffectorWaypoint")
(setf (get benchmarking_msgs::EndEffectorWaypoint :request) benchmarking_msgs::EndEffectorWaypointRequest)
(setf (get benchmarking_msgs::EndEffectorWaypoint :response) benchmarking_msgs::EndEffectorWaypointResponse)

(defmethod benchmarking_msgs::EndEffectorWaypointRequest
  (:response () (instance benchmarking_msgs::EndEffectorWaypointResponse :init)))

(setf (get benchmarking_msgs::EndEffectorWaypointRequest :md5sum-) "04ac508012fcfbad2482b96edbe35269")
(setf (get benchmarking_msgs::EndEffectorWaypointRequest :datatype-) "benchmarking_msgs/EndEffectorWaypointRequest")
(setf (get benchmarking_msgs::EndEffectorWaypointRequest :definition-)
      "float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
---
bool success
")

(setf (get benchmarking_msgs::EndEffectorWaypointResponse :md5sum-) "04ac508012fcfbad2482b96edbe35269")
(setf (get benchmarking_msgs::EndEffectorWaypointResponse :datatype-) "benchmarking_msgs/EndEffectorWaypointResponse")
(setf (get benchmarking_msgs::EndEffectorWaypointResponse :definition-)
      "float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
---
bool success
")



(provide :benchmarking_msgs/EndEffectorWaypoint "04ac508012fcfbad2482b96edbe35269")


