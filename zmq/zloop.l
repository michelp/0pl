
(de zloop-new ()
   (native "libczmq.so" "zloop_new" 'N) )

(de zloop-destroy (Self)
   (native "libczmq.so" "zloop_destroy" NIL NIL (list NIL (8) (cons Self 8))) )

(de zloop-poller (Self Socket Fd Events PollerFn Arg)
   (native "libczmq.so" "zloop_poller"
      'I Self
      (list NIL (16) (cons Socket 8) (- Fd) (cons Events 2) 0 0)
      (lisp 'zloop-poller-callback PollerFn) Arg ) )

(de zloop-poller-end (Self Item)
   (native "libczmq.so" "zloop_poller_end" NIL Self Item) )

(de zloop-timer (Self Delay Times TimerFn Arg)
   (native "libczmq.so" "zloop_timer"
      'I Self 
      Delay Times (lisp 'zloop-timer-callback TimerFn) Arg ) )

(de zloop-timer-end (Self Arg)
   (native "libczmq.so" "zloop_timer_end" 'I Self Arg) )

(de zloop-set-verbose (Self Verbose)
   (native "libczmq.so" "zloop_set_verbose" NIL Self Verbose) )

(de zloop-start (Self)
   (native "libczmq.so" "zloop_start" 'I Self) )
