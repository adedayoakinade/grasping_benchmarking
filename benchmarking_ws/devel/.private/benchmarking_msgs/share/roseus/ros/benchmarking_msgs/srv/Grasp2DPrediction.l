;; Auto-generated. Do not edit!


(when (boundp 'benchmarking_msgs::Grasp2DPrediction)
  (if (not (find-package "BENCHMARKING_MSGS"))
    (make-package "BENCHMARKING_MSGS"))
  (shadow 'Grasp2DPrediction (find-package "BENCHMARKING_MSGS")))
(unless (find-package "BENCHMARKING_MSGS::GRASP2DPREDICTION")
  (make-package "BENCHMARKING_MSGS::GRASP2DPREDICTION"))
(unless (find-package "BENCHMARKING_MSGS::GRASP2DPREDICTIONREQUEST")
  (make-package "BENCHMARKING_MSGS::GRASP2DPREDICTIONREQUEST"))
(unless (find-package "BENCHMARKING_MSGS::GRASP2DPREDICTIONRESPONSE")
  (make-package "BENCHMARKING_MSGS::GRASP2DPREDICTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass benchmarking_msgs::Grasp2DPredictionRequest
  :super ros::object
  :slots (_depth_image _rgb_image ))

(defmethod benchmarking_msgs::Grasp2DPredictionRequest
  (:init
   (&key
    ((:depth_image __depth_image) (instance sensor_msgs::Image :init))
    ((:rgb_image __rgb_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _depth_image __depth_image)
   (setq _rgb_image __rgb_image)
   self)
  (:depth_image
   (&rest __depth_image)
   (if (keywordp (car __depth_image))
       (send* _depth_image __depth_image)
     (progn
       (if __depth_image (setq _depth_image (car __depth_image)))
       _depth_image)))
  (:rgb_image
   (&rest __rgb_image)
   (if (keywordp (car __rgb_image))
       (send* _rgb_image __rgb_image)
     (progn
       (if __rgb_image (setq _rgb_image (car __rgb_image)))
       _rgb_image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _depth_image
    (send _depth_image :serialization-length)
    ;; sensor_msgs/Image _rgb_image
    (send _rgb_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _depth_image
       (send _depth_image :serialize s)
     ;; sensor_msgs/Image _rgb_image
       (send _rgb_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _depth_image
     (send _depth_image :deserialize buf ptr-) (incf ptr- (send _depth_image :serialization-length))
   ;; sensor_msgs/Image _rgb_image
     (send _rgb_image :deserialize buf ptr-) (incf ptr- (send _rgb_image :serialization-length))
   ;;
   self)
  )

(defclass benchmarking_msgs::Grasp2DPredictionResponse
  :super ros::object
  :slots (_success _best_grasp ))

(defmethod benchmarking_msgs::Grasp2DPredictionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:best_grasp __best_grasp) (instance benchmarking_msgs::Grasp2D :init))
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
    ;; benchmarking_msgs/Grasp2D _best_grasp
    (send _best_grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; benchmarking_msgs/Grasp2D _best_grasp
       (send _best_grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; benchmarking_msgs/Grasp2D _best_grasp
     (send _best_grasp :deserialize buf ptr-) (incf ptr- (send _best_grasp :serialization-length))
   ;;
   self)
  )

(defclass benchmarking_msgs::Grasp2DPrediction
  :super ros::object
  :slots ())

(setf (get benchmarking_msgs::Grasp2DPrediction :md5sum-) "b62ec6f0334c09da4ef4d7cc361762ae")
(setf (get benchmarking_msgs::Grasp2DPrediction :datatype-) "benchmarking_msgs/Grasp2DPrediction")
(setf (get benchmarking_msgs::Grasp2DPrediction :request) benchmarking_msgs::Grasp2DPredictionRequest)
(setf (get benchmarking_msgs::Grasp2DPrediction :response) benchmarking_msgs::Grasp2DPredictionResponse)

(defmethod benchmarking_msgs::Grasp2DPredictionRequest
  (:response () (instance benchmarking_msgs::Grasp2DPredictionResponse :init)))

(setf (get benchmarking_msgs::Grasp2DPredictionRequest :md5sum-) "b62ec6f0334c09da4ef4d7cc361762ae")
(setf (get benchmarking_msgs::Grasp2DPredictionRequest :datatype-) "benchmarking_msgs/Grasp2DPredictionRequest")
(setf (get benchmarking_msgs::Grasp2DPredictionRequest :definition-)
      "sensor_msgs/Image depth_image
sensor_msgs/Image rgb_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool success
benchmarking_msgs/Grasp2D best_grasp

================================================================================
MSG: benchmarking_msgs/Grasp2D
int32 px
int32 py
float32 angle
float32 width
")

(setf (get benchmarking_msgs::Grasp2DPredictionResponse :md5sum-) "b62ec6f0334c09da4ef4d7cc361762ae")
(setf (get benchmarking_msgs::Grasp2DPredictionResponse :datatype-) "benchmarking_msgs/Grasp2DPredictionResponse")
(setf (get benchmarking_msgs::Grasp2DPredictionResponse :definition-)
      "sensor_msgs/Image depth_image
sensor_msgs/Image rgb_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool success
benchmarking_msgs/Grasp2D best_grasp

================================================================================
MSG: benchmarking_msgs/Grasp2D
int32 px
int32 py
float32 angle
float32 width
")



(provide :benchmarking_msgs/Grasp2DPrediction "b62ec6f0334c09da4ef4d7cc361762ae")


