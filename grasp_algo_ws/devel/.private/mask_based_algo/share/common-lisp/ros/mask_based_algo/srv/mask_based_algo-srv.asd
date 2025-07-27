
(cl:in-package :asdf)

(defsystem "mask_based_algo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mask_based_algo-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp2DPrediction" :depends-on ("_package_Grasp2DPrediction"))
    (:file "_package_Grasp2DPrediction" :depends-on ("_package"))
  ))