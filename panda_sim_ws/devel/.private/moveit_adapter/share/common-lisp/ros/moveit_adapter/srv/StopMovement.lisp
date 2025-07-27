; Auto-generated. Do not edit!


(cl:in-package moveit_adapter-srv)


;//! \htmlinclude StopMovement-request.msg.html

(cl:defclass <StopMovement-request> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopMovement-request (<StopMovement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMovement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMovement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<StopMovement-request> is deprecated: use moveit_adapter-srv:StopMovement-request instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <StopMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:stop-val is deprecated.  Use moveit_adapter-srv:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMovement-request>) ostream)
  "Serializes a message object of type '<StopMovement-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMovement-request>) istream)
  "Deserializes a message object of type '<StopMovement-request>"
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMovement-request>)))
  "Returns string type for a service object of type '<StopMovement-request>"
  "moveit_adapter/StopMovementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMovement-request)))
  "Returns string type for a service object of type 'StopMovement-request"
  "moveit_adapter/StopMovementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMovement-request>)))
  "Returns md5sum for a message object of type '<StopMovement-request>"
  "5fb7f99d98a30bfd9eeddbb34b138b31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMovement-request)))
  "Returns md5sum for a message object of type 'StopMovement-request"
  "5fb7f99d98a30bfd9eeddbb34b138b31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMovement-request>)))
  "Returns full string definition for message of type '<StopMovement-request>"
  (cl:format cl:nil "bool stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMovement-request)))
  "Returns full string definition for message of type 'StopMovement-request"
  (cl:format cl:nil "bool stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMovement-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMovement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMovement-request
    (cl:cons ':stop (stop msg))
))
;//! \htmlinclude StopMovement-response.msg.html

(cl:defclass <StopMovement-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopMovement-response (<StopMovement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMovement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMovement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<StopMovement-response> is deprecated: use moveit_adapter-srv:StopMovement-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:success-val is deprecated.  Use moveit_adapter-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMovement-response>) ostream)
  "Serializes a message object of type '<StopMovement-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMovement-response>) istream)
  "Deserializes a message object of type '<StopMovement-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMovement-response>)))
  "Returns string type for a service object of type '<StopMovement-response>"
  "moveit_adapter/StopMovementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMovement-response)))
  "Returns string type for a service object of type 'StopMovement-response"
  "moveit_adapter/StopMovementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMovement-response>)))
  "Returns md5sum for a message object of type '<StopMovement-response>"
  "5fb7f99d98a30bfd9eeddbb34b138b31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMovement-response)))
  "Returns md5sum for a message object of type 'StopMovement-response"
  "5fb7f99d98a30bfd9eeddbb34b138b31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMovement-response>)))
  "Returns full string definition for message of type '<StopMovement-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMovement-response)))
  "Returns full string definition for message of type 'StopMovement-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMovement-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMovement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMovement-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopMovement)))
  'StopMovement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopMovement)))
  'StopMovement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMovement)))
  "Returns string type for a service object of type '<StopMovement>"
  "moveit_adapter/StopMovement")