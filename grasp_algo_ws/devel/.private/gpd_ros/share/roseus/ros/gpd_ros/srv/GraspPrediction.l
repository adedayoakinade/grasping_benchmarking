;; Auto-generated. Do not edit!


(when (boundp 'gpd_ros::GraspPrediction)
  (if (not (find-package "GPD_ROS"))
    (make-package "GPD_ROS"))
  (shadow 'GraspPrediction (find-package "GPD_ROS")))
(unless (find-package "GPD_ROS::GRASPPREDICTION")
  (make-package "GPD_ROS::GRASPPREDICTION"))
(unless (find-package "GPD_ROS::GRASPPREDICTIONREQUEST")
  (make-package "GPD_ROS::GRASPPREDICTIONREQUEST"))
(unless (find-package "GPD_ROS::GRASPPREDICTIONRESPONSE")
  (make-package "GPD_ROS::GRASPPREDICTIONRESPONSE"))

(in-package "ROS")





(defclass gpd_ros::GraspPredictionRequest
  :super ros::object
  :slots ())

(defmethod gpd_ros::GraspPredictionRequest
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

(defclass gpd_ros::GraspPredictionResponse
  :super ros::object
  :slots (_success _best_grasp ))

(defmethod gpd_ros::GraspPredictionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:best_grasp __best_grasp) (instance gpd_ros::Grasp :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _best_grasp __best_grasp)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:best_grasp
   (&rest __best_grasp)
   (if (keywordp (car __best_grasp))
       (send* _best_grasp __best_grasp)
     (progn
       (if __best_grasp (setq _best_grasp (car __best_grasp)))
       _best_grasp)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; gpd_ros/Grasp _best_grasp
    (send _best_grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; gpd_ros/Grasp _best_grasp
       (send _best_grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gpd_ros/Grasp _best_grasp
     (send _best_grasp :deserialize buf ptr-) (incf ptr- (send _best_grasp :serialization-length))
   ;;
   self)
  )

(defclass gpd_ros::GraspPrediction
  :super ros::object
  :slots ())

(setf (get gpd_ros::GraspPrediction :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get gpd_ros::GraspPrediction :datatype-) "gpd_ros/GraspPrediction")
(setf (get gpd_ros::GraspPrediction :request) gpd_ros::GraspPredictionRequest)
(setf (get gpd_ros::GraspPrediction :response) gpd_ros::GraspPredictionResponse)

(defmethod gpd_ros::GraspPredictionRequest
  (:response () (instance gpd_ros::GraspPredictionResponse :init)))

(setf (get gpd_ros::GraspPredictionRequest :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get gpd_ros::GraspPredictionRequest :datatype-) "gpd_ros/GraspPredictionRequest")
(setf (get gpd_ros::GraspPredictionRequest :definition-)
      "---
bool success
gpd_ros/Grasp best_grasp


================================================================================
MSG: gpd_ros/Grasp
geometry_msgs/Pose pose
float32 width
float32 quality
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

(setf (get gpd_ros::GraspPredictionResponse :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get gpd_ros::GraspPredictionResponse :datatype-) "gpd_ros/GraspPredictionResponse")
(setf (get gpd_ros::GraspPredictionResponse :definition-)
      "---
bool success
gpd_ros/Grasp best_grasp


================================================================================
MSG: gpd_ros/Grasp
geometry_msgs/Pose pose
float32 width
float32 quality
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



(provide :gpd_ros/GraspPrediction "86d7d0d5a00535c6699247df54f62820")


