; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-srv)


;//! \htmlinclude CurrentPose-request.msg.html

(cl:defclass <CurrentPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CurrentPose-request (<CurrentPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<CurrentPose-request> is deprecated: use benchmarking_msgs-srv:CurrentPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPose-request>) ostream)
  "Serializes a message object of type '<CurrentPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPose-request>) istream)
  "Deserializes a message object of type '<CurrentPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPose-request>)))
  "Returns string type for a service object of type '<CurrentPose-request>"
  "benchmarking_msgs/CurrentPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPose-request)))
  "Returns string type for a service object of type 'CurrentPose-request"
  "benchmarking_msgs/CurrentPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPose-request>)))
  "Returns md5sum for a message object of type '<CurrentPose-request>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPose-request)))
  "Returns md5sum for a message object of type 'CurrentPose-request"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPose-request>)))
  "Returns full string definition for message of type '<CurrentPose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPose-request)))
  "Returns full string definition for message of type 'CurrentPose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPose-request
))
;//! \htmlinclude CurrentPose-response.msg.html

(cl:defclass <CurrentPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass CurrentPose-response (<CurrentPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<CurrentPose-response> is deprecated: use benchmarking_msgs-srv:CurrentPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CurrentPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:pose-val is deprecated.  Use benchmarking_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPose-response>) ostream)
  "Serializes a message object of type '<CurrentPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPose-response>) istream)
  "Deserializes a message object of type '<CurrentPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPose-response>)))
  "Returns string type for a service object of type '<CurrentPose-response>"
  "benchmarking_msgs/CurrentPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPose-response)))
  "Returns string type for a service object of type 'CurrentPose-response"
  "benchmarking_msgs/CurrentPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPose-response>)))
  "Returns md5sum for a message object of type '<CurrentPose-response>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPose-response)))
  "Returns md5sum for a message object of type 'CurrentPose-response"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPose-response>)))
  "Returns full string definition for message of type '<CurrentPose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPose-response)))
  "Returns full string definition for message of type 'CurrentPose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentPose)))
  'CurrentPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentPose)))
  'CurrentPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPose)))
  "Returns string type for a service object of type '<CurrentPose>"
  "benchmarking_msgs/CurrentPose")