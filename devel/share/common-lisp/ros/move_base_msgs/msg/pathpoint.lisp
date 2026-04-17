; Auto-generated. Do not edit!


(cl:in-package move_base_msgs-msg)


;//! \htmlinclude pathpoint.msg.html

(cl:defclass <pathpoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass pathpoint (<pathpoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pathpoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pathpoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_base_msgs-msg:<pathpoint> is deprecated: use move_base_msgs-msg:pathpoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <pathpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_base_msgs-msg:point-val is deprecated.  Use move_base_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pathpoint>) ostream)
  "Serializes a message object of type '<pathpoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pathpoint>) istream)
  "Deserializes a message object of type '<pathpoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pathpoint>)))
  "Returns string type for a message object of type '<pathpoint>"
  "move_base_msgs/pathpoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pathpoint)))
  "Returns string type for a message object of type 'pathpoint"
  "move_base_msgs/pathpoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pathpoint>)))
  "Returns md5sum for a message object of type '<pathpoint>"
  "8b77b92c4b19dc42b97628449a31b1ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pathpoint)))
  "Returns md5sum for a message object of type 'pathpoint"
  "8b77b92c4b19dc42b97628449a31b1ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pathpoint>)))
  "Returns full string definition for message of type '<pathpoint>"
  (cl:format cl:nil "# A wrapper for a single path point~%geometry_msgs/PoseStamped point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pathpoint)))
  "Returns full string definition for message of type 'pathpoint"
  (cl:format cl:nil "# A wrapper for a single path point~%geometry_msgs/PoseStamped point~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pathpoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pathpoint>))
  "Converts a ROS message object to a list"
  (cl:list 'pathpoint
    (cl:cons ':point (point msg))
))
