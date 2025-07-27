; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-srv)


;//! \htmlinclude GripperCommand-request.msg.html

(cl:defclass <GripperCommand-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperCommand-request (<GripperCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<GripperCommand-request> is deprecated: use benchmarking_msgs-srv:GripperCommand-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <GripperCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:width-val is deprecated.  Use benchmarking_msgs-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperCommand-request>) ostream)
  "Serializes a message object of type '<GripperCommand-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperCommand-request>) istream)
  "Deserializes a message object of type '<GripperCommand-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperCommand-request>)))
  "Returns string type for a service object of type '<GripperCommand-request>"
  "benchmarking_msgs/GripperCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCommand-request)))
  "Returns string type for a service object of type 'GripperCommand-request"
  "benchmarking_msgs/GripperCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperCommand-request>)))
  "Returns md5sum for a message object of type '<GripperCommand-request>"
  "be5ef003f22cb11bc267a44b935e1625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperCommand-request)))
  "Returns md5sum for a message object of type 'GripperCommand-request"
  "be5ef003f22cb11bc267a44b935e1625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperCommand-request>)))
  "Returns full string definition for message of type '<GripperCommand-request>"
  (cl:format cl:nil "float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperCommand-request)))
  "Returns full string definition for message of type 'GripperCommand-request"
  (cl:format cl:nil "float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperCommand-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperCommand-request
    (cl:cons ':width (width msg))
))
;//! \htmlinclude GripperCommand-response.msg.html

(cl:defclass <GripperCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperCommand-response (<GripperCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<GripperCommand-response> is deprecated: use benchmarking_msgs-srv:GripperCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:success-val is deprecated.  Use benchmarking_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperCommand-response>) ostream)
  "Serializes a message object of type '<GripperCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperCommand-response>) istream)
  "Deserializes a message object of type '<GripperCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperCommand-response>)))
  "Returns string type for a service object of type '<GripperCommand-response>"
  "benchmarking_msgs/GripperCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCommand-response)))
  "Returns string type for a service object of type 'GripperCommand-response"
  "benchmarking_msgs/GripperCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperCommand-response>)))
  "Returns md5sum for a message object of type '<GripperCommand-response>"
  "be5ef003f22cb11bc267a44b935e1625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperCommand-response)))
  "Returns md5sum for a message object of type 'GripperCommand-response"
  "be5ef003f22cb11bc267a44b935e1625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperCommand-response>)))
  "Returns full string definition for message of type '<GripperCommand-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperCommand-response)))
  "Returns full string definition for message of type 'GripperCommand-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperCommand-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperCommand)))
  'GripperCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperCommand)))
  'GripperCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCommand)))
  "Returns string type for a service object of type '<GripperCommand>"
  "benchmarking_msgs/GripperCommand")