
(de zloop-new ()
   (native "libczmq.so" "zloop_new" 'N) )

(de zloop-destroy (self)
   (native "libczmq.so" "zloop_destroy" 'N self) )

(de zloop-poller (self item fn arg)
   (native "libczmq.so" "zloop_poller" 'I self item fn arg) )

(de zloop-poller-end (self item)
   (native "libczmq.so" "zloop_poller_end" NIL self item) )

(de zloop-timer (self delay times fn arg)
   (native "libczmq.so" "zloop_timer" 'I self delay times fn arg) )

(de zloop-timer-end (self arg)
   (native "libczmq.so" "zloop_timer_end" 'I self arg) )

(de zloop-set-verbose (self verbose)
   (native "libczmq.so" "zloop_set_verbose" NIL self verbose) )

(de zloop-start (self)
   (native "libczmq.so" "zloop_start" 'I self) )
