;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::CurrentPose)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'CurrentPose (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::CURRENTPOSE")
  (make-package "BENCHMARKING_MSGS::CURRENTPOSE"))
(unless (find-package "BENCHMARKING_MSGS::CURRENTPOSEREQUEST")
  (make-package "BENCHMARKING_MSGS::CURRENTPOSEREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::CURRENTPOSERESPONSE")
  (make-package "BENCHMARKING_MSGS::CURRENTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass benchmarking_msgs::CurrentPoseRequest
  :super ros::object
  :slots ())

(defmethod benchmarking_msgs::CurrentPoseRequest
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

(defclass benchmarking_msgs::CurrentPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod benchmarking_msgs::CurrentPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass benchmarking_msgs::CurrentPose
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::CurrentPose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get benchmarking_msgs::CurrentPose :datatype-) "benchmarking_msgs/CurrentPose")
(setf (get benchmarking_msgs::CurrentPose :request) benchmarking_msgs::CurrentPoseRequest)
(setf (get benchmarking_msgs::CurrentPose :response) benchmarking_msgs::CurrentPoseResponse)

(defmethod benchmarking_msgs::CurrentPoseRequest
  (:response () (instance benchmarking_msgs::CurrentPoseResponse :init)))

(setf (get benchmarking_msgs::CurrentPoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get benchmarking_msgs::CurrentPoseRequest :datatype-) "benchmarking_msgs/CurrentPoseRequest")
(setf (get benchmarking_msgs::CurrentPoseRequest :definition-)
      "---
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get benchmarking_msgs::CurrentPoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get benchmarking_msgs::CurrentPoseResponse :datatype-) "benchmarking_msgs/CurrentPoseResponse")
(setf (get benchmarking_msgs::CurrentPoseResponse :definition-)
      "---
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :benchmarking_msgs/CurrentPose "f192399f711a48924df9a394d37edd67")


