; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-srv)


;//! \htmlinclude ProcessAndExecute-request.msg.html

(cl:defclass <ProcessAndExecute-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ProcessAndExecute-request (<ProcessAndExecute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessAndExecute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessAndExecute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<ProcessAndExecute-request> is deprecated: use benchmarking_msgs-srv:ProcessAndExecute-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessAndExecute-request>) ostream)
  "Serializes a message object of type '<ProcessAndExecute-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessAndExecute-request>) istream)
  "Deserializes a message object of type '<ProcessAndExecute-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessAndExecute-request>)))
  "Returns string type for a service object of type '<ProcessAndExecute-request>"
  "benchmarking_msgs/ProcessAndExecuteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessAndExecute-request)))
  "Returns string type for a service object of type 'ProcessAndExecute-request"
  "benchmarking_msgs/ProcessAndExecuteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessAndExecute-request>)))
  "Returns md5sum for a message object of type '<ProcessAndExecute-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessAndExecute-request)))
  "Returns md5sum for a message object of type 'ProcessAndExecute-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessAndExecute-request>)))
  "Returns full string definition for message of type '<ProcessAndExecute-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessAndExecute-request)))
  "Returns full string definition for message of type 'ProcessAndExecute-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessAndExecute-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessAndExecute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessAndExecute-request
))
;//! \htmlinclude ProcessAndExecute-response.msg.html

(cl:defclass <ProcessAndExecute-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ProcessAndExecute-response (<ProcessAndExecute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessAndExecute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessAndExecute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-srv:<ProcessAndExecute-response> is deprecated: use benchmarking_msgs-srv:ProcessAndExecute-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ProcessAndExecute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-srv:success-val is deprecated.  Use benchmarking_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessAndExecute-response>) ostream)
  "Serializes a message object of type '<ProcessAndExecute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessAndExecute-response>) istream)
  "Deserializes a message object of type '<ProcessAndExecute-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessAndExecute-response>)))
  "Returns string type for a service object of type '<ProcessAndExecute-response>"
  "benchmarking_msgs/ProcessAndExecuteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessAndExecute-response)))
  "Returns string type for a service object of type 'ProcessAndExecute-response"
  "benchmarking_msgs/ProcessAndExecuteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessAndExecute-response>)))
  "Returns md5sum for a message object of type '<ProcessAndExecute-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessAndExecute-response)))
  "Returns md5sum for a message object of type 'ProcessAndExecute-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessAndExecute-response>)))
  "Returns full string definition for message of type '<ProcessAndExecute-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessAndExecute-response)))
  "Returns full string definition for message of type 'ProcessAndExecute-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessAndExecute-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessAndExecute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessAndExecute-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProcessAndExecute)))
  'ProcessAndExecute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProcessAndExecute)))
  'ProcessAndExecute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessAndExecute)))
  "Returns string type for a service object of type '<ProcessAndExecute>"
  "benchmarking_msgs/ProcessAndExecute")