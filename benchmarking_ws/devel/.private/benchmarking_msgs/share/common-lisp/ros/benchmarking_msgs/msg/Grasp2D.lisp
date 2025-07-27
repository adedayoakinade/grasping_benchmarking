; Auto-generated. Do not edit!


(cl:in-package benchmarking_msgs-msg)


;//! \htmlinclude Grasp2D.msg.html

(cl:defclass <Grasp2D> (roslisp-msg-protocol:ros-message)
  ((px
    :reader px
    :initarg :px
    :type cl:integer
    :initform 0)
   (py
    :reader py
    :initarg :py
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:float
    :initform 0.0))
)

(cl:defclass Grasp2D (<Grasp2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Grasp2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Grasp2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name benchmarking_msgs-msg:<Grasp2D> is deprecated: use benchmarking_msgs-msg:Grasp2D instead.")))

(cl:ensure-generic-function 'px-val :lambda-list '(m))
(cl:defmethod px-val ((m <Grasp2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-msg:px-val is deprecated.  Use benchmarking_msgs-msg:px instead.")
  (px m))

(cl:ensure-generic-function 'py-val :lambda-list '(m))
(cl:defmethod py-val ((m <Grasp2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-msg:py-val is deprecated.  Use benchmarking_msgs-msg:py instead.")
  (py m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Grasp2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-msg:angle-val is deprecated.  Use benchmarking_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Grasp2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-msg:width-val is deprecated.  Use benchmarking_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <Grasp2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader benchmarking_msgs-msg:quality-val is deprecated.  Use benchmarking_msgs-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Grasp2D>) ostream)
  "Serializes a message object of type '<Grasp2D>"
  (cl:let* ((signed (cl:slot-value msg 'px)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'py)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Grasp2D>) istream)
  "Deserializes a message object of type '<Grasp2D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'px) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'py) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quality) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Grasp2D>)))
  "Returns string type for a message object of type '<Grasp2D>"
  "benchmarking_msgs/Grasp2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Grasp2D)))
  "Returns string type for a message object of type 'Grasp2D"
  "benchmarking_msgs/Grasp2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Grasp2D>)))
  "Returns md5sum for a message object of type '<Grasp2D>"
  "0a323a3d1bda5a089014491acc7a2710")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Grasp2D)))
  "Returns md5sum for a message object of type 'Grasp2D"
  "0a323a3d1bda5a089014491acc7a2710")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Grasp2D>)))
  "Returns full string definition for message of type '<Grasp2D>"
  (cl:format cl:nil "int32 px~%int32 py~%float32 angle~%float32 width~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Grasp2D)))
  "Returns full string definition for message of type 'Grasp2D"
  (cl:format cl:nil "int32 px~%int32 py~%float32 angle~%float32 width~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Grasp2D>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Grasp2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Grasp2D
    (cl:cons ':px (px msg))
    (cl:cons ':py (py msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':width (width msg))
    (cl:cons ':quality (quality msg))
))
