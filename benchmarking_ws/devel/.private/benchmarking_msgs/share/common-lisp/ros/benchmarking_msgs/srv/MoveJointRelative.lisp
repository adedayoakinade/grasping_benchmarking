; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-srv)


;//! \htmlinclude MoveJointRelative-request.msg.html

(cl:defclass <MoveJointRelative-request> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type cl:integer
    :initform 0)
   (ang_disp
    :reader ang_disp
    :initarg :ang_disp
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveJointRelative-request (<MoveJointRelative-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJointRelative-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJointRelative-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<MoveJointRelative-request> is deprecated: use benchmarking_msgs-srv:MoveJointRelative-request instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <MoveJointRelative-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:joint-val is deprecated.  Use benchmarking_msgs-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'ang_disp-val :lambda-list '(m))
(cl:defmethod ang_disp-val ((m <MoveJointRelative-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:ang_disp-val is deprecated.  Use benchmarking_msgs-srv:ang_disp instead.")
  (ang_disp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJointRelative-request>) ostream)
  "Serializes a message object of type '<MoveJointRelative-request>"
  (cl:let* ((signed (cl:slot-value msg 'joint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ang_disp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJointRelative-request>) istream)
  "Deserializes a message object of type '<MoveJointRelative-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ang_disp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJointRelative-request>)))
  "Returns string type for a service object of type '<MoveJointRelative-request>"
  "benchmarking_msgs/MoveJointRelativeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJointRelative-request)))
  "Returns string type for a service object of type 'MoveJointRelative-request"
  "benchmarking_msgs/MoveJointRelativeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJointRelative-request>)))
  "Returns md5sum for a message object of type '<MoveJointRelative-request>"
  "6a2ebcc60925d499d2755f9d7fc50d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJointRelative-request)))
  "Returns md5sum for a message object of type 'MoveJointRelative-request"
  "6a2ebcc60925d499d2755f9d7fc50d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJointRelative-request>)))
  "Returns full string definition for message of type '<MoveJointRelative-request>"
  (cl:format cl:nil "int32 joint~%float32 ang_disp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJointRelative-request)))
  "Returns full string definition for message of type 'MoveJointRelative-request"
  (cl:format cl:nil "int32 joint~%float32 ang_disp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJointRelative-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJointRelative-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJointRelative-request
    (cl:cons ':joint (joint msg))
    (cl:cons ':ang_disp (ang_disp msg))
))
;//! \htmlinclude MoveJointRelative-response.msg.html

(cl:defclass <MoveJointRelative-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveJointRelative-response (<MoveJointRelative-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJointRelative-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJointRelative-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<MoveJointRelative-response> is deprecated: use benchmarking_msgs-srv:MoveJointRelative-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveJointRelative-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:success-val is deprecated.  Use benchmarking_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJointRelative-response>) ostream)
  "Serializes a message object of type '<MoveJointRelative-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJointRelative-response>) istream)
  "Deserializes a message object of type '<MoveJointRelative-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJointRelative-response>)))
  "Returns string type for a service object of type '<MoveJointRelative-response>"
  "benchmarking_msgs/MoveJointRelativeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJointRelative-response)))
  "Returns string type for a service object of type 'MoveJointRelative-response"
  "benchmarking_msgs/MoveJointRelativeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJointRelative-response>)))
  "Returns md5sum for a message object of type '<MoveJointRelative-response>"
  "6a2ebcc60925d499d2755f9d7fc50d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJointRelative-response)))
  "Returns md5sum for a message object of type 'MoveJointRelative-response"
  "6a2ebcc60925d499d2755f9d7fc50d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJointRelative-response>)))
  "Returns full string definition for message of type '<MoveJointRelative-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJointRelative-response)))
  "Returns full string definition for message of type 'MoveJointRelative-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJointRelative-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJointRelative-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJointRelative-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveJointRelative)))
  'MoveJointRelative-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveJointRelative)))
  'MoveJointRelative-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJointRelative)))
  "Returns string type for a service object of type '<MoveJointRelative>"
  "benchmarking_msgs/MoveJointRelative")