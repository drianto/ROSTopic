; Auto-generated. Do not edit!


(cl:in-package ROSTopic-msg)


;//! \htmlinclude topic.msg.html

(cl:defclass <topic> (roslisp-msg-protocol:ros-message)
  ((usia
    :reader usia
    :initarg :usia
    :type cl:integer
    :initform 0)
   (tinggi
    :reader tinggi
    :initarg :tinggi
    :type cl:float
    :initform 0.0)
   (nama
    :reader nama
    :initarg :nama
    :type cl:string
    :initform "")
   (kehadiran
    :reader kehadiran
    :initarg :kehadiran
    :type cl:boolean
    :initform cl:nil)
   (komponenX
    :reader komponenX
    :initarg :komponenX
    :type cl:float
    :initform 0.0)
   (komponenY
    :reader komponenY
    :initarg :komponenY
    :type cl:float
    :initform 0.0)
   (komponenZ
    :reader komponenZ
    :initarg :komponenZ
    :type cl:float
    :initform 0.0)
   (magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass topic (<topic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <topic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'topic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ROSTopic-msg:<topic> is deprecated: use ROSTopic-msg:topic instead.")))

(cl:ensure-generic-function 'usia-val :lambda-list '(m))
(cl:defmethod usia-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:usia-val is deprecated.  Use ROSTopic-msg:usia instead.")
  (usia m))

(cl:ensure-generic-function 'tinggi-val :lambda-list '(m))
(cl:defmethod tinggi-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:tinggi-val is deprecated.  Use ROSTopic-msg:tinggi instead.")
  (tinggi m))

(cl:ensure-generic-function 'nama-val :lambda-list '(m))
(cl:defmethod nama-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:nama-val is deprecated.  Use ROSTopic-msg:nama instead.")
  (nama m))

(cl:ensure-generic-function 'kehadiran-val :lambda-list '(m))
(cl:defmethod kehadiran-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:kehadiran-val is deprecated.  Use ROSTopic-msg:kehadiran instead.")
  (kehadiran m))

(cl:ensure-generic-function 'komponenX-val :lambda-list '(m))
(cl:defmethod komponenX-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:komponenX-val is deprecated.  Use ROSTopic-msg:komponenX instead.")
  (komponenX m))

(cl:ensure-generic-function 'komponenY-val :lambda-list '(m))
(cl:defmethod komponenY-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:komponenY-val is deprecated.  Use ROSTopic-msg:komponenY instead.")
  (komponenY m))

(cl:ensure-generic-function 'komponenZ-val :lambda-list '(m))
(cl:defmethod komponenZ-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:komponenZ-val is deprecated.  Use ROSTopic-msg:komponenZ instead.")
  (komponenZ m))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <topic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ROSTopic-msg:magnitude-val is deprecated.  Use ROSTopic-msg:magnitude instead.")
  (magnitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <topic>) ostream)
  "Serializes a message object of type '<topic>"
  (cl:let* ((signed (cl:slot-value msg 'usia)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tinggi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nama))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nama))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'kehadiran) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <topic>) istream)
  "Deserializes a message object of type '<topic>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usia) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tinggi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nama) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nama) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'kehadiran) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<topic>)))
  "Returns string type for a message object of type '<topic>"
  "ROSTopic/topic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'topic)))
  "Returns string type for a message object of type 'topic"
  "ROSTopic/topic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<topic>)))
  "Returns md5sum for a message object of type '<topic>"
  "8da47db7c1d4d80b9057432e547605d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'topic)))
  "Returns md5sum for a message object of type 'topic"
  "8da47db7c1d4d80b9057432e547605d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<topic>)))
  "Returns full string definition for message of type '<topic>"
  (cl:format cl:nil "int64 usia~%float64 tinggi~%string nama~%bool kehadiran~%float64 komponenX~%float64 komponenY~%float64 komponenZ~%float64 magnitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'topic)))
  "Returns full string definition for message of type 'topic"
  (cl:format cl:nil "int64 usia~%float64 tinggi~%string nama~%bool kehadiran~%float64 komponenX~%float64 komponenY~%float64 komponenZ~%float64 magnitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <topic>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'nama))
     1
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <topic>))
  "Converts a ROS message object to a list"
  (cl:list 'topic
    (cl:cons ':usia (usia msg))
    (cl:cons ':tinggi (tinggi msg))
    (cl:cons ':nama (nama msg))
    (cl:cons ':kehadiran (kehadiran msg))
    (cl:cons ':komponenX (komponenX msg))
    (cl:cons ':komponenY (komponenY msg))
    (cl:cons ':komponenZ (komponenZ msg))
    (cl:cons ':magnitude (magnitude msg))
))
