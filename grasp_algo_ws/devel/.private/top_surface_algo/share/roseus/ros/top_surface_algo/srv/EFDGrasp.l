;; Auto-generated. Do not edit!


(when (boundp 'top_surface_algo::EFDGrasp)
  (if (not (find-package "TOP_SURFACE_ALGO"))
    (make-package "TOP_SURFACE_ALGO"))
  (shadow 'EFDGrasp (find-package "TOP_SURFACE_ALGO")))
(unless (find-package "TOP_SURFACE_ALGO::EFDGRASP")
  (make-package "TOP_SURFACE_ALGO::EFDGRASP"))
(unless (find-package "TOP_SURFACE_ALGO::EFDGRASPREQUEST")
  (make-package "TOP_SURFACE_ALGO::EFDGRASPREQUEST"))
(unless (find-package "TOP_SURFACE_ALGO::EFDGRASPRESPONSE")
  (make-package "TOP_SURFACE_ALGO::EFDGRASPRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass top_surface_algo::EFDGraspRequest
  :super ros::object
  :slots (_input_cloud ))

(defmethod top_surface_algo::EFDGraspRequest
  (:init
   (&key
    ((:input_cloud __input_cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _input_cloud __input_cloud)
   self)
  (:input_cloud
   (&rest __input_cloud)
   (if (keywordp (car __input_cloud))
       (send* _input_cloud __input_cloud)
     (progn
       (if __input_cloud (setq _input_cloud (car __input_cloud)))
       _input_cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _input_cloud
    (send _input_cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _input_cloud
       (send _input_cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _input_cloud
     (send _input_cloud :deserialize buf ptr-) (incf ptr- (send _input_cloud :serialization-length))
   ;;
   self)
  )

(defclass top_surface_algo::EFDGraspResponse
  :super ros::object
  :slots (_output_cloud ))

(defmethod top_surface_algo::EFDGraspResponse
  (:init
   (&key
    ((:output_cloud __output_cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _output_cloud __output_cloud)
   self)
  (:output_cloud
   (&rest __output_cloud)
   (if (keywordp (car __output_cloud))
       (send* _output_cloud __output_cloud)
     (progn
       (if __output_cloud (setq _output_cloud (car __output_cloud)))
       _output_cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _output_cloud
    (send _output_cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _output_cloud
       (send _output_cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _output_cloud
     (send _output_cloud :deserialize buf ptr-) (incf ptr- (send _output_cloud :serialization-length))
   ;;
   self)
  )

(defclass top_surface_algo::EFDGrasp
  :super ros::object
  :slots ())

(setf (get top_surface_algo::EFDGrasp :md5sum-) "31cd19eee6b183891282c4389a5aa49f")
(setf (get top_surface_algo::EFDGrasp :datatype-) "top_surface_algo/EFDGrasp")
(setf (get top_surface_algo::EFDGrasp :request) top_surface_algo::EFDGraspRequest)
(setf (get top_surface_algo::EFDGrasp :response) top_surface_algo::EFDGraspResponse)

(defmethod top_surface_algo::EFDGraspRequest
  (:response () (instance top_surface_algo::EFDGraspResponse :init)))

(setf (get top_surface_algo::EFDGraspRequest :md5sum-) "31cd19eee6b183891282c4389a5aa49f")
(setf (get top_surface_algo::EFDGraspRequest :datatype-) "top_surface_algo/EFDGraspRequest")
(setf (get top_surface_algo::EFDGraspRequest :definition-)
      "sensor_msgs/PointCloud2 input_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
sensor_msgs/PointCloud2 output_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")

(setf (get top_surface_algo::EFDGraspResponse :md5sum-) "31cd19eee6b183891282c4389a5aa49f")
(setf (get top_surface_algo::EFDGraspResponse :datatype-) "top_surface_algo/EFDGraspResponse")
(setf (get top_surface_algo::EFDGraspResponse :definition-)
      "sensor_msgs/PointCloud2 input_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
sensor_msgs/PointCloud2 output_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")



(provide :top_surface_algo/EFDGrasp "31cd19eee6b183891282c4389a5aa49f")


