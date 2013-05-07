
(de zbeacon-new (Port)
   (native "libczmq.so" "zbeacon_new" 'N Port) )

(de zbeacon-destroy ()
   (native "libczmq.so" "zbeacon_destroy" NIL ()) )

(de zbeacon-hostname (Self)
   (native "libczmq.so" "zbeacon_hostname" 'S Self) )

(de zbeacon-set-interval (Self Interval)
   (native "libczmq.so" "zbeacon_set_interval" NIL Self Interval) )

(de zbeacon-noecho (Self)
   (native "libczmq.so" "zbeacon_noecho" NIL Self) )

(de zbeacon-publish (Self Transmit Size)
   (native "libczmq.so" "zbeacon_publish" NIL Self Transmit Size) )

(de zbeacon-silence (Self)
   (native "libczmq.so" "zbeacon_silence" NIL Self) )

(de zbeacon-subscribe (Self Filter Size)
   (native "libczmq.so" "zbeacon_subscribe" NIL Self Filter Size) )

(de zbeacon-unsubscribe (Self)
   (native "libczmq.so" "zbeacon_unsubscribe" NIL Self) )

(de zbeacon-pipe (Self)
   (native "libczmq.so" "zbeacon_pipe" 'N Self) )
