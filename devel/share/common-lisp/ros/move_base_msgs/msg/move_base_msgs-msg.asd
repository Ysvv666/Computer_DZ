
(cl:in-package :asdf)

(defsystem "move_base_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "hglocation" :depends-on ("_package_hglocation"))
    (:file "_package_hglocation" :depends-on ("_package"))
    (:file "hgpathplanner" :depends-on ("_package_hgpathplanner"))
    (:file "_package_hgpathplanner" :depends-on ("_package"))
    (:file "pathpoint" :depends-on ("_package_pathpoint"))
    (:file "_package_pathpoint" :depends-on ("_package"))
  ))