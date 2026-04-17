;; Auto-generated. Do not edit!


(when (boundp 'move_base_msgs::pathpoint)
  (if (not (find-package "MOVE_BASE_MSGS"))
    (make-package "MOVE_BASE_MSGS"))
  (shadow 'pathpoint (find-package "MOVE_BASE_MSGS")))
(unless (find-package "MOVE_BASE_MSGS::PATHPOINT")
  (make-package "MOVE_BASE_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude pathpoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass move_base_msgs::pathpoint
  :super ros::object
  :slots (_point ))

(defmethod move_base_msgs::pathpoint
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get move_base_msgs::pathpoint :md5sum-) "8b77b92c4b19dc42b97628449a31b1ba")
(setf (get move_base_msgs::pathpoint :datatype-) "move_base_msgs/pathpoint")
(setf (get move_base_msgs::pathpoint :definition-)
      "# A wrapper for a single path point
geometry_msgs/PoseStamped point

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :move_base_msgs/pathpoint "8b77b92c4b19dc42b97628449a31b1ba")


