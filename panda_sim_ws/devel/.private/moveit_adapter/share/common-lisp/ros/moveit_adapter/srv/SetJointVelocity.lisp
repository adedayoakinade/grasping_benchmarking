; Auto-generated. Do not edit!


(cl:in-package moveit_adapter-srv)


;//! \htmlinclude SetJointVelocity-request.msg.html

(cl:defclass <SetJointVelocity-request> (roslisp-msg-protocol:ros-message)
  ((joint_velocity
    :reader joint_velocity
    :initarg :joint_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetJointVelocity-request (<SetJointVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<SetJointVelocity-request> is deprecated: use moveit_adapter-srv:SetJointVelocity-request instead.")))

(cl:ensure-generic-function 'joint_velocity-val :lambda-list '(m))
(cl:defmethod joint_velocity-val ((m <SetJointVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:joint_velocity-val is deprecated.  Use moveit_adapter-srv:joint_velocity instead.")
  (joint_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointVelocity-request>) ostream)
  "Serializes a message object of type '<SetJointVelocity-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointVelocity-request>) istream)
  "Deserializes a message object of type '<SetJointVelocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointVelocity-request>)))
  "Returns string type for a service object of type '<SetJointVelocity-request>"
  "moveit_adapter/SetJointVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointVelocity-request)))
  "Returns string type for a service object of type 'SetJointVelocity-request"
  "moveit_adapter/SetJointVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointVelocity-request>)))
  "Returns md5sum for a message object of type '<SetJointVelocity-request>"
  "01ec734cf68bcf4ba7f369be137b28ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointVelocity-request)))
  "Returns md5sum for a message object of type 'SetJointVelocity-request"
  "01ec734cf68bcf4ba7f369be137b28ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointVelocity-request>)))
  "Returns full string definition for message of type '<SetJointVelocity-request>"
  (cl:format cl:nil "float32 joint_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointVelocity-request)))
  "Returns full string definition for message of type 'SetJointVelocity-request"
  (cl:format cl:nil "float32 joint_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointVelocity-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointVelocity-request
    (cl:cons ':joint_velocity (joint_velocity msg))
))
;//! \htmlinclude SetJointVelocity-response.msg.html

(cl:defclass <SetJointVelocity-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJointVelocity-response (<SetJointVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_adapter-srv:<SetJointVelocity-response> is deprecated: use moveit_adapter-srv:SetJointVelocity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_adapter-srv:success-val is deprecated.  Use moveit_adapter-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointVelocity-response>) ostream)
  "Serializes a message object of type '<SetJointVelocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointVelocity-response>) istream)
  "Deserializes a message object of type '<SetJointVelocity-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointVelocity-response>)))
  "Returns string type for a service object of type '<SetJointVelocity-response>"
  "moveit_adapter/SetJointVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointVelocity-response)))
  "Returns string type for a service object of type 'SetJointVelocity-response"
  "moveit_adapter/SetJointVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointVelocity-response>)))
  "Returns md5sum for a message object of type '<SetJointVelocity-response>"
  "01ec734cf68bcf4ba7f369be137b28ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointVelocity-response)))
  "Returns md5sum for a message object of type 'SetJointVelocity-response"
  "01ec734cf68bcf4ba7f369be137b28ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointVelocity-response>)))
  "Returns full string definition for message of type '<SetJointVelocity-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointVelocity-response)))
  "Returns full string definition for message of type 'SetJointVelocity-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointVelocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointVelocity-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointVelocity)))
  'SetJointVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointVelocity)))
  'SetJointVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointVelocity)))
  "Returns string type for a service object of type '<SetJointVelocity>"
  "moveit_adapter/SetJointVelocity")