;; Auto-generated. Do not edit!


(when (boundp 'top_surface_algo::GraspPrediction)
  (if (not (find-package "TOP_SURFACE_ALGO"))
    (make-package "TOP_SURFACE_ALGO"))
  (shadow 'GraspPrediction (find-package "TOP_SURFACE_ALGO")))
(unless (find-package "TOP_SURFACE_ALGO::GRASPPREDICTION")
  (make-package "TOP_SURFACE_ALGO::GRASPPREDICTION"))
(unless (find-package "TOP_SURFACE_ALGO::GRASPPREDICTIONREQUEST")
  (make-package "TOP_SURFACE_ALGO::GRASPPREDICTIONREQUEST"))
(unless (find-package "TOP_SURFACE_ALGO::GRASPPREDICTIONRESPONSE")
  (make-package "TOP_SURFACE_ALGO::GRASPPREDICTIONRESPONSE"))

(in-package "ROS")





(defclass top_surface_algo::GraspPredictionRequest
  :super ros::object
  :slots ())

(defmethod top_surface_algo::GraspPredictionRequest
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

(defclass top_surface_algo::GraspPredictionResponse
  :super ros::object
  :slots (_success _best_grasp ))

(defmethod top_surface_algo::GraspPredictionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:best_grasp __best_grasp) (instance top_surface_algo::Grasp :init))
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
    ;; top_surface_algo/Grasp _best_grasp
    (send _best_grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; top_surface_algo/Grasp _best_grasp
       (send _best_grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; top_surface_algo/Grasp _best_grasp
     (send _best_grasp :deserialize buf ptr-) (incf ptr- (send _best_grasp :serialization-length))
   ;;
   self)
  )

(defclass top_surface_algo::GraspPrediction
  :super ros::object
  :slots ())

(setf (get top_surface_algo::GraspPrediction :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get top_surface_algo::GraspPrediction :datatype-) "top_surface_algo/GraspPrediction")
(setf (get top_surface_algo::GraspPrediction :request) top_surface_algo::GraspPredictionRequest)
(setf (get top_surface_algo::GraspPrediction :response) top_surface_algo::GraspPredictionResponse)

(defmethod top_surface_algo::GraspPredictionRequest
  (:response () (instance top_surface_algo::GraspPredictionResponse :init)))

(setf (get top_surface_algo::GraspPredictionRequest :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get top_surface_algo::GraspPredictionRequest :datatype-) "top_surface_algo/GraspPredictionRequest")
(setf (get top_surface_algo::GraspPredictionRequest :definition-)
      "---
bool success
top_surface_algo/Grasp best_grasp


================================================================================
MSG: top_surface_algo/Grasp
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

(setf (get top_surface_algo::GraspPredictionResponse :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get top_surface_algo::GraspPredictionResponse :datatype-) "top_surface_algo/GraspPredictionResponse")
(setf (get top_surface_algo::GraspPredictionResponse :definition-)
      "---
bool success
top_surface_algo/Grasp best_grasp


================================================================================
MSG: top_surface_algo/Grasp
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



(provide :top_surface_algo/GraspPrediction "86d7d0d5a00535c6699247df54f62820")


