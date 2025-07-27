;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::Grasp2D)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'Grasp2D (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::GRASP2D")
  (make-package "BENCHMARKING_MSGS::GRASP2D"))

(in-package "ROS")
;;//! \htmlinclude Grasp2D.msg.html


(defclass benchmarking_msgs::Grasp2D
  :super ros::object
  :slots (_px _py _angle _width _quality ))

(defmethod benchmarking_msgs::Grasp2D
  (:init
   (&key
    ((:px __px) 0)
    ((:py __py) 0)
    ((:angle __angle) 0.0)
    ((:width __width) 0.0)
    ((:quality __quality) 0.0)
    )
   (send-super :init)
   (setq _px (round __px))
   (setq _py (round __py))
   (setq _angle (float __angle))
   (setq _width (float __width))
   (setq _quality (float __quality))
   self)
  (:px
   (&optional __px)
   (if __px (setq _px __px)) _px)
  (:py
   (&optional __py)
   (if __py (setq _py __py)) _py)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; int32 _px
    4
    ;; int32 _py
    4
    ;; float32 _angle
    4
    ;; float32 _width
    4
    ;; float32 _quality
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _px
       (write-long _px s)
     ;; int32 _py
       (write-long _py s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _px
     (setq _px (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _py
     (setq _py (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get benchmarking_msgs::Grasp2D :md5sum-) "0a323a3d1bda5a089014491acc7a2710")
(setf (get benchmarking_msgs::Grasp2D :datatype-) "benchmarking_msgs/Grasp2D")
(setf (get benchmarking_msgs::Grasp2D :definition-)
      "int32 px
int32 py
float32 angle
float32 width
float32 quality
")



(provide :benchmarking_msgs/Grasp2D "0a323a3d1bda5a089014491acc7a2710")


