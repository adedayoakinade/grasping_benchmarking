;; Auto-generated. Do not edit!


(when (boundp 'ros_deep_grasp::GraspPrediction)
  (if (not (find-package "ROS_DEEP_GRASP"))
    (make-package "ROS_DEEP_GRASP"))
  (shadow 'GraspPrediction (find-package "ROS_DEEP_GRASP")))
(unless (find-package "ROS_DEEP_GRASP::GRASPPREDICTION")
  (make-package "ROS_DEEP_GRASP::GRASPPREDICTION"))
(unless (find-package "ROS_DEEP_GRASP::GRASPPREDICTIONREQUEST")
  (make-package "ROS_DEEP_GRASP::GRASPPREDICTIONREQUEST"))
(unless (find-package "ROS_DEEP_GRASP::GRASPPREDICTIONRESPONSE")
  (make-package "ROS_DEEP_GRASP::GRASPPREDICTIONRESPONSE"))

(in-package "ROS")





(defclass ros_deep_grasp::GraspPredictionRequest
  :super ros::object
  :slots ())

(defmethod ros_deep_grasp::GraspPredictionRequest
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

(defclass ros_deep_grasp::GraspPredictionResponse
  :super ros::object
  :slots (_success _best_grasp ))

(defmethod ros_deep_grasp::GraspPredictionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:best_grasp __best_grasp) (instance ros_deep_grasp::Grasp :init))
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
    ;; ros_deep_grasp/Grasp _best_grasp
    (send _best_grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; ros_deep_grasp/Grasp _best_grasp
       (send _best_grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_deep_grasp/Grasp _best_grasp
     (send _best_grasp :deserialize buf ptr-) (incf ptr- (send _best_grasp :serialization-length))
   ;;
   self)
  )

(defclass ros_deep_grasp::GraspPrediction
  :super ros::object
  :slots ())

(setf (get ros_deep_grasp::GraspPrediction :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get ros_deep_grasp::GraspPrediction :datatype-) "ros_deep_grasp/GraspPrediction")
(setf (get ros_deep_grasp::GraspPrediction :request) ros_deep_grasp::GraspPredictionRequest)
(setf (get ros_deep_grasp::GraspPrediction :response) ros_deep_grasp::GraspPredictionResponse)

(defmethod ros_deep_grasp::GraspPredictionRequest
  (:response () (instance ros_deep_grasp::GraspPredictionResponse :init)))

(setf (get ros_deep_grasp::GraspPredictionRequest :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get ros_deep_grasp::GraspPredictionRequest :datatype-) "ros_deep_grasp/GraspPredictionRequest")
(setf (get ros_deep_grasp::GraspPredictionRequest :definition-)
      "---
bool success
ros_deep_grasp/Grasp best_grasp


================================================================================
MSG: ros_deep_grasp/Grasp
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

(setf (get ros_deep_grasp::GraspPredictionResponse :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get ros_deep_grasp::GraspPredictionResponse :datatype-) "ros_deep_grasp/GraspPredictionResponse")
(setf (get ros_deep_grasp::GraspPredictionResponse :definition-)
      "---
bool success
ros_deep_grasp/Grasp best_grasp


================================================================================
MSG: ros_deep_grasp/Grasp
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



(provide :ros_deep_grasp/GraspPrediction "86d7d0d5a00535c6699247df54f62820")


