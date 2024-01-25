;; Auto-generated. Do not edit!


(when (boundp 'ROSTopic::topic)
  (if (not (find-package "ROSTOPIC"))
    (make-package "ROSTOPIC"))
  (shadow 'topic (find-package "ROSTOPIC")))
(unless (find-package "ROSTOPIC::TOPIC")
  (make-package "ROSTOPIC::TOPIC"))

(in-package "ROS")
;;//! \htmlinclude topic.msg.html


(defclass ROSTopic::topic
  :super ros::object
  :slots (_usia _tinggi _nama _kehadiran _komponenX _komponenY _komponenZ _magnitude ))

(defmethod ROSTopic::topic
  (:init
   (&key
    ((:usia __usia) 0)
    ((:tinggi __tinggi) 0.0)
    ((:nama __nama) "")
    ((:kehadiran __kehadiran) nil)
    ((:komponenX __komponenX) 0.0)
    ((:komponenY __komponenY) 0.0)
    ((:komponenZ __komponenZ) 0.0)
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _usia (round __usia))
   (setq _tinggi (float __tinggi))
   (setq _nama (string __nama))
   (setq _kehadiran __kehadiran)
   (setq _komponenX (float __komponenX))
   (setq _komponenY (float __komponenY))
   (setq _komponenZ (float __komponenZ))
   (setq _magnitude (float __magnitude))
   self)
  (:usia
   (&optional __usia)
   (if __usia (setq _usia __usia)) _usia)
  (:tinggi
   (&optional __tinggi)
   (if __tinggi (setq _tinggi __tinggi)) _tinggi)
  (:nama
   (&optional __nama)
   (if __nama (setq _nama __nama)) _nama)
  (:kehadiran
   (&optional (__kehadiran :null))
   (if (not (eq __kehadiran :null)) (setq _kehadiran __kehadiran)) _kehadiran)
  (:komponenX
   (&optional __komponenX)
   (if __komponenX (setq _komponenX __komponenX)) _komponenX)
  (:komponenY
   (&optional __komponenY)
   (if __komponenY (setq _komponenY __komponenY)) _komponenY)
  (:komponenZ
   (&optional __komponenZ)
   (if __komponenZ (setq _komponenZ __komponenZ)) _komponenZ)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; int64 _usia
    8
    ;; float64 _tinggi
    8
    ;; string _nama
    4 (length _nama)
    ;; bool _kehadiran
    1
    ;; float64 _komponenX
    8
    ;; float64 _komponenY
    8
    ;; float64 _komponenZ
    8
    ;; float64 _magnitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _usia (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _usia) (= (length (_usia . bv)) 2)) ;; bignum
              (write-long (ash (elt (_usia . bv) 0) 0) s)
              (write-long (ash (elt (_usia . bv) 1) -1) s))
             ((and (class _usia) (= (length (_usia . bv)) 1)) ;; big1
              (write-long (elt (_usia . bv) 0) s)
              (write-long (if (>= _usia 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _usia s)(write-long (if (>= _usia 0) 0 #xffffffff) s)))
     ;; float64 _tinggi
       (sys::poke _tinggi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _nama
       (write-long (length _nama) s) (princ _nama s)
     ;; bool _kehadiran
       (if _kehadiran (write-byte -1 s) (write-byte 0 s))
     ;; float64 _komponenX
       (sys::poke _komponenX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenY
       (sys::poke _komponenY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenZ
       (sys::poke _komponenZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
      (setf _usia (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _usia (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _tinggi
     (setq _tinggi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _nama
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nama (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _kehadiran
     (setq _kehadiran (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _komponenX
     (setq _komponenX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenY
     (setq _komponenY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenZ
     (setq _komponenZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ROSTopic::topic :md5sum-) "8da47db7c1d4d80b9057432e547605d1")
(setf (get ROSTopic::topic :datatype-) "ROSTopic/topic")
(setf (get ROSTopic::topic :definition-)
      "int64 usia
float64 tinggi
string nama
bool kehadiran
float64 komponenX
float64 komponenY
float64 komponenZ
float64 magnitude
")



(provide :ROSTopic/topic "8da47db7c1d4d80b9057432e547605d1")


