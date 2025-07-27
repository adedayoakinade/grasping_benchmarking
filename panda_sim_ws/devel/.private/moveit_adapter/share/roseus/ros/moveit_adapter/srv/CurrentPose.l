;; Auto-generated. Do not edit!


(when (boundp 'moveit_adapter::CurrentPose)
  (if (not (find-package "MOVEIT_ADAPTER"))
    (make-package "MOVEIT_ADAPTER"))
  (shadow 'CurrentPose (find-package "MOVEIT_ADAPTER")))
(unless (find-package "MOVEIT_ADAPTER::CURRENTPOSE")
  (make-package "MOVEIT_ADAPTER::CURRENTPOSE"))
(unless (find-package "MOVEIT_ADAPTER::CURRENTPOSEREQUEST")
  (make-package "MOVEIT_ADAPTER::CURRENTPOSEREQUEST"))
(unless (find-package "MOVEIT_ADAPTER::CURRENTPOSERESPONSE")
  (make-package "MOVEIT_ADAPTER::CURRENTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass moveit_adapter::CurrentPoseRequest
  :super ros::object
  :slots ())

(defmethod moveit_adapter::CurrentPoseRequest
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

(defclass moveit_adapter::CurrentPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod moveit_adapter::CurrentPoseResponse
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

(defclass moveit_adapter::CurrentPose
  :super ros::object
  :slots ())

(setf (get moveit_adapter::CurrentPose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get moveit_adapter::CurrentPose :datatype-) "moveit_adapter/CurrentPose")
(setf (get moveit_adapter::CurrentPose :request) moveit_adapter::CurrentPoseRequest)
(setf (get moveit_adapter::CurrentPose :response) moveit_adapter::CurrentPoseResponse)

(defmethod moveit_adapter::CurrentPoseRequest
  (:response () (instance moveit_adapter::CurrentPoseResponse :init)))

(setf (get moveit_adapter::CurrentPoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get moveit_adapter::CurrentPoseRequest :datatype-) "moveit_adapter/CurrentPoseRequest")
(setf (get moveit_adapter::CurrentPoseRequest :definition-)
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

(setf (get moveit_adapter::CurrentPoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get moveit_adapter::CurrentPoseResponse :datatype-) "moveit_adapter/CurrentPoseResponse")
(setf (get moveit_adapter::CurrentPoseResponse :definition-)
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



(provide :moveit_adapter/CurrentPose "f192399f711a48924df9a394d37edd67")


