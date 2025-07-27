;; Auto-generated. Do not edit!


(when (boundp 'template_algo::GraspPrediction)
  (if (not (find-package "TEMPLATE_ALGO"))
    (make-package "TEMPLATE_ALGO"))
  (shadow 'GraspPrediction (find-package "TEMPLATE_ALGO")))
(unless (find-package "TEMPLATE_ALGO::GRASPPREDICTION")
  (make-package "TEMPLATE_ALGO::GRASPPREDICTION"))
(unless (find-package "TEMPLATE_ALGO::GRASPPREDICTIONREQUEST")
  (make-package "TEMPLATE_ALGO::GRASPPREDICTIONREQUEST"))
(unless (find-package "TEMPLATE_ALGO::GRASPPREDICTIONRESPONSE")
  (make-package "TEMPLATE_ALGO::GRASPPREDICTIONRESPONSE"))

(in-package "ROS")





(defclass template_algo::GraspPredictionRequest
  :super ros::object
  :slots ())

(defmethod template_algo::GraspPredictionRequest
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

(defclass template_algo::GraspPredictionResponse
  :super ros::object
  :slots (_success _best_grasp ))

(defmethod template_algo::GraspPredictionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:best_grasp __best_grasp) (instance template_algo::Grasp :init))
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
    ;; template_algo/Grasp _best_grasp
    (send _best_grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; template_algo/Grasp _best_grasp
       (send _best_grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; template_algo/Grasp _best_grasp
     (send _best_grasp :deserialize buf ptr-) (incf ptr- (send _best_grasp :serialization-length))
   ;;
   self)
  )

(defclass template_algo::GraspPrediction
  :super ros::object
  :slots ())

(setf (get template_algo::GraspPrediction :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get template_algo::GraspPrediction :datatype-) "template_algo/GraspPrediction")
(setf (get template_algo::GraspPrediction :request) template_algo::GraspPredictionRequest)
(setf (get template_algo::GraspPrediction :response) template_algo::GraspPredictionResponse)

(defmethod template_algo::GraspPredictionRequest
  (:response () (instance template_algo::GraspPredictionResponse :init)))

(setf (get template_algo::GraspPredictionRequest :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get template_algo::GraspPredictionRequest :datatype-) "template_algo/GraspPredictionRequest")
(setf (get template_algo::GraspPredictionRequest :definition-)
      "---
bool success
template_algo/Grasp best_grasp


================================================================================
MSG: template_algo/Grasp
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

(setf (get template_algo::GraspPredictionResponse :md5sum-) "86d7d0d5a00535c6699247df54f62820")
(setf (get template_algo::GraspPredictionResponse :datatype-) "template_algo/GraspPredictionResponse")
(setf (get template_algo::GraspPredictionResponse :definition-)
      "---
bool success
template_algo/Grasp best_grasp


================================================================================
MSG: template_algo/Grasp
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



(provide :template_algo/GraspPrediction "86d7d0d5a00535c6699247df54f62820")


