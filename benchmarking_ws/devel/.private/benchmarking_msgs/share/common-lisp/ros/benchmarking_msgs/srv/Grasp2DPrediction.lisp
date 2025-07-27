; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-srv)


;//! \htmlinclude Grasp2DPrediction-request.msg.html

(cl:defclass <Grasp2DPrediction-request> (roslisp-msg-protocol:ros-message)
  ((depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (rgb_image
    :reader rgb_image
    :initarg :rgb_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Grasp2DPrediction-request (<Grasp2DPrediction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grasp2DPrediction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grasp2DPrediction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<Grasp2DPrediction-request> is deprecated: use benchmarking_msgs-srv:Grasp2DPrediction-request instead.")))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <Grasp2DPrediction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:depth_image-val is deprecated.  Use benchmarking_msgs-srv:depth_image instead.")
  (depth_image m))

(cl:ensure-generic-function 'rgb_image-val :lambda-list '(m))
(cl:defmethod rgb_image-val ((m <Grasp2DPrediction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:rgb_image-val is deprecated.  Use benchmarking_msgs-srv:rgb_image instead.")
  (rgb_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grasp2DPrediction-request>) ostream)
  "Serializes a message object of type '<Grasp2DPrediction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grasp2DPrediction-request>) istream)
  "Deserializes a message object of type '<Grasp2DPrediction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grasp2DPrediction-request>)))
  "Returns string type for a service object of type '<Grasp2DPrediction-request>"
  "benchmarking_msgs/Grasp2DPredictionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grasp2DPrediction-request)))
  "Returns string type for a service object of type 'Grasp2DPrediction-request"
  "benchmarking_msgs/Grasp2DPredictionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grasp2DPrediction-request>)))
  "Returns md5sum for a message object of type '<Grasp2DPrediction-request>"
  "b62ec6f0334c09da4ef4d7cc361762ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grasp2DPrediction-request)))
  "Returns md5sum for a message object of type 'Grasp2DPrediction-request"
  "b62ec6f0334c09da4ef4d7cc361762ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grasp2DPrediction-request>)))
  "Returns full string definition for message of type '<Grasp2DPrediction-request>"
  (cl:format cl:nil "sensor_msgs/Image depth_image~%sensor_msgs/Image rgb_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grasp2DPrediction-request)))
  "Returns full string definition for message of type 'Grasp2DPrediction-request"
  (cl:format cl:nil "sensor_msgs/Image depth_image~%sensor_msgs/Image rgb_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grasp2DPrediction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grasp2DPrediction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Grasp2DPrediction-request
    (cl:cons ':depth_image (depth_image msg))
    (cl:cons ':rgb_image (rgb_image msg))
))
;//! \htmlinclude Grasp2DPrediction-response.msg.html

(cl:defclass <Grasp2DPrediction-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (best_grasp
    :reader best_grasp
    :initarg :best_grasp
    :type benchmarking_msgs-msg:Grasp2D
    :initform (cl:make-instance 'benchmarking_msgs-msg:Grasp2D)))
)

(cl:defclass Grasp2DPrediction-response (<Grasp2DPrediction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grasp2DPrediction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grasp2DPrediction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<Grasp2DPrediction-response> is deprecated: use benchmarking_msgs-srv:Grasp2DPrediction-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Grasp2DPrediction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:success-val is deprecated.  Use benchmarking_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'best_grasp-val :lambda-list '(m))
(cl:defmethod best_grasp-val ((m <Grasp2DPrediction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:best_grasp-val is deprecated.  Use benchmarking_msgs-srv:best_grasp instead.")
  (best_grasp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grasp2DPrediction-response>) ostream)
  "Serializes a message object of type '<Grasp2DPrediction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'best_grasp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grasp2DPrediction-response>) istream)
  "Deserializes a message object of type '<Grasp2DPrediction-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'best_grasp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grasp2DPrediction-response>)))
  "Returns string type for a service object of type '<Grasp2DPrediction-response>"
  "benchmarking_msgs/Grasp2DPredictionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grasp2DPrediction-response)))
  "Returns string type for a service object of type 'Grasp2DPrediction-response"
  "benchmarking_msgs/Grasp2DPredictionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grasp2DPrediction-response>)))
  "Returns md5sum for a message object of type '<Grasp2DPrediction-response>"
  "b62ec6f0334c09da4ef4d7cc361762ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grasp2DPrediction-response)))
  "Returns md5sum for a message object of type 'Grasp2DPrediction-response"
  "b62ec6f0334c09da4ef4d7cc361762ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grasp2DPrediction-response>)))
  "Returns full string definition for message of type '<Grasp2DPrediction-response>"
  (cl:format cl:nil "bool success~%benchmarking_msgs/Grasp2D best_grasp~%~%================================================================================~%MSG: benchmarking_msgs/Grasp2D~%int32 px~%int32 py~%float32 angle~%float32 width~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grasp2DPrediction-response)))
  "Returns full string definition for message of type 'Grasp2DPrediction-response"
  (cl:format cl:nil "bool success~%benchmarking_msgs/Grasp2D best_grasp~%~%================================================================================~%MSG: benchmarking_msgs/Grasp2D~%int32 px~%int32 py~%float32 angle~%float32 width~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grasp2DPrediction-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'best_grasp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grasp2DPrediction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Grasp2DPrediction-response
    (cl:cons ':success (success msg))
    (cl:cons ':best_grasp (best_grasp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Grasp2DPrediction)))
  'Grasp2DPrediction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Grasp2DPrediction)))
  'Grasp2DPrediction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grasp2DPrediction)))
  "Returns string type for a service object of type '<Grasp2DPrediction>"
  "benchmarking_msgs/Grasp2DPrediction")