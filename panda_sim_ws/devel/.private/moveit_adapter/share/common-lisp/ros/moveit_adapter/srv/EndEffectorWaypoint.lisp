; Auto-generated. Do not edit!


(cl:in-package moveit_adapter-srv)


;//! \htmlinclude EndEffectorWaypoint-request.msg.html

(cl:defclass <EndEffectorWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass EndEffectorWaypoint-request (<EndEffectorWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndEffectorWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndEffectorWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<EndEffectorWaypoint-request> is deprecated: use moveit_adapter-srv:EndEffectorWaypoint-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:x-val is deprecated.  Use moveit_adapter-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:y-val is deprecated.  Use moveit_adapter-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:z-val is deprecated.  Use moveit_adapter-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:roll-val is deprecated.  Use moveit_adapter-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:pitch-val is deprecated.  Use moveit_adapter-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <EndEffectorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:yaw-val is deprecated.  Use moveit_adapter-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndEffectorWaypoint-request>) ostream)
  "Serializes a message object of type '<EndEffectorWaypoint-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndEffectorWaypoint-request>) istream)
  "Deserializes a message object of type '<EndEffectorWaypoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndEffectorWaypoint-request>)))
  "Returns string type for a service object of type '<EndEffectorWaypoint-request>"
  "moveit_adapter/EndEffectorWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorWaypoint-request)))
  "Returns string type for a service object of type 'EndEffectorWaypoint-request"
  "moveit_adapter/EndEffectorWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndEffectorWaypoint-request>)))
  "Returns md5sum for a message object of type '<EndEffectorWaypoint-request>"
  "04ac508012fcfbad2482b96edbe35269")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndEffectorWaypoint-request)))
  "Returns md5sum for a message object of type 'EndEffectorWaypoint-request"
  "04ac508012fcfbad2482b96edbe35269")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndEffectorWaypoint-request>)))
  "Returns full string definition for message of type '<EndEffectorWaypoint-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndEffectorWaypoint-request)))
  "Returns full string definition for message of type 'EndEffectorWaypoint-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 roll~%float32 pitch~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndEffectorWaypoint-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndEffectorWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EndEffectorWaypoint-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude EndEffectorWaypoint-response.msg.html

(cl:defclass <EndEffectorWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EndEffectorWaypoint-response (<EndEffectorWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndEffectorWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndEffectorWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<EndEffectorWaypoint-response> is deprecated: use moveit_adapter-srv:EndEffectorWaypoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EndEffectorWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:success-val is deprecated.  Use moveit_adapter-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndEffectorWaypoint-response>) ostream)
  "Serializes a message object of type '<EndEffectorWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndEffectorWaypoint-response>) istream)
  "Deserializes a message object of type '<EndEffectorWaypoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndEffectorWaypoint-response>)))
  "Returns string type for a service object of type '<EndEffectorWaypoint-response>"
  "moveit_adapter/EndEffectorWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorWaypoint-response)))
  "Returns string type for a service object of type 'EndEffectorWaypoint-response"
  "moveit_adapter/EndEffectorWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndEffectorWaypoint-response>)))
  "Returns md5sum for a message object of type '<EndEffectorWaypoint-response>"
  "04ac508012fcfbad2482b96edbe35269")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndEffectorWaypoint-response)))
  "Returns md5sum for a message object of type 'EndEffectorWaypoint-response"
  "04ac508012fcfbad2482b96edbe35269")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndEffectorWaypoint-response>)))
  "Returns full string definition for message of type '<EndEffectorWaypoint-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndEffectorWaypoint-response)))
  "Returns full string definition for message of type 'EndEffectorWaypoint-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndEffectorWaypoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndEffectorWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EndEffectorWaypoint-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EndEffectorWaypoint)))
  'EndEffectorWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EndEffectorWaypoint)))
  'EndEffectorWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorWaypoint)))
  "Returns string type for a service object of type '<EndEffectorWaypoint>"
  "moveit_adapter/EndEffectorWaypoint")