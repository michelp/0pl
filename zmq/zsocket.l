
(de zsocket-new (Ctx Type)
   (native "libczmq.so" "zsocket_new" 'N Ctx Type) )

(de zsocket-destroy (Self)
   (native "libczmq.so" "zsocket_destroy" NIL NIL (list NIL (8) (cons Self 8))) )

(de zsocket-bind (Socket Addr)
   (native "libczmq.so" "zsocket_bind" 'I Socket Addr) )

(de zsocket-connect (Socket Addr)
   (native "libczmq.so" "zsocket_connect" 'I Socket Addr) )

(de zsocket-disconnect (Socket Addr)
   (native "libczmq.so" "zsocket_disconnect" 'I Socket Addr) )

(de zsocket-poll (Socket Timeout)
   (native "libczmq.so" "zsocket_poll" 'I Socket Timeout) )

(de zsocket-type-str (Socket)
   (native "libczmq.so" "zsocket_type_str" 'S Socket) )

(de zsocket-type (Socket)
   (native "libczmq.so" "zsocket_type" 'I Socket) )

(de zsocket-sndhwm (Socket)
   (native "libczmq.so" "zsocket_sndhwm" 'I Socket) )

(de zsocket-recvhwm (Socket)
   (native "libczmq.so" "zsocket_rcvhwm" 'I Socket) )

(de zsocket-affinity (Socket)
   (native "libczmq.so" "zsocket_affinity" 'I Socket) )

(de zsocket-rate (Socket)
   (native "libczmq.so" "zsocket_rate" 'I Socket) )

(de zsocket-identity (Socket)
   (native "libczmq.so" "zsocket_identity" 'S Socket) )

(de zsocket-recovery-ivl (Socket)
   (native "libczmq.so" "zsocket_recovery_ivl" 'I Socket) )

(de zsocket-sndbuf (Socket)
   (native "libczmq.so" "zsocket_sndbuf" 'I Socket) )

(de zsocket-recvbuf (Socket)
   (native "libczmq.so" "zsocket_rcvbuf" 'I Socket) )

(de zsocket-linger (Socket)
   (native "libczmq.so" "zsocket_linger" 'I Socket) )

(de zsocket-reconnect-ivl (Socket)
   (native "libczmq.so" "zsocket_reconnect_ivl" 'I Socket) )

(de zsocket-reconnect-ivl-max (Socket)
   (native "libczmq.so" "zsocket_reconnect_ivl_max" 'I Socket) )

(de zsocket-backlog (Socket)
   (native "libczmq.so" "zsocket_backlog" 'I Socket) )

(de zsocket-maxmsgsize (Socket)
   (native "libczmq.so" "zsocket_maxmsgsize" 'I Socket) )

(de zsocket-multicast-hops (Socket)
   (native "libczmq.so" "zsocket_multicast_hops" 'I Socket) )

(de zsocket-recvtimeo (Socket)
   (native "libczmq.so" "zsocket_rcvtimeo" 'I Socket) )

(de zsocket-sndtimeo (Socket)
   (native "libczmq.so" "zsocket_sndtimeo" 'I Socket) )

(de zsocket-ipv4only (Socket)
   (native "libczmq.so" "zsocket_ipv4only" 'I Socket) )

(de zsocket-rcvmore (Socket)
   (native "libczmq.so" "zsocket_rcvmore" 'I Socket) )

(de zsocket-fd (Socket)
   (native "libczmq.so" "zsocket_fd" 'I Socket) )

(de zsocket-events (Socket)
   (native "libczmq.so" "zsocket_events" 'I Socket) )

(de zsocket-last-endpoint (Socket)
   (native "libczmq.so" "zsocket_last_endpoint" 'S Socket) )

(de zsocket-set-sndhwm (Socket Arg)
   (native "libczmq.so" "zsocket_set_sndhwm" NIL Socket Arg) )

(de zsocket-set-rcvhwm (Socket Arg)
   (native "libczmq.so" "zsocket_set_rcvhwm" NIL Socket Arg) )

(de zsocket-set-affinity (Socket Arg)
   (native "libczmq.so" "zsocket_set_affinity" NIL Socket Arg) )

(de zsocket-set-subscribe (Socket Arg)
   (native "libczmq.so" "zsocket_set_subscribe" NIL Socket Arg) )

(de zsocket-set-unsubscribe (Socket Arg)
   (native "libczmq.so" "zsocket_set_unsubscribe" NIL Socket Arg) )

(de zsocket-set-identity (Socket Arg)
   (native "libczmq.so" "zsocket_set_identity" NIL Socket Arg) )

(de zsocket-set-rate (Socket Arg)
   (native "libczmq.so" "zsocket_set_rate" NIL Socket Arg) )

(de zsocket-set-recovery-ivl (Socket Arg)
   (native "libczmq.so" "zsocket_set_recovery_ivl" NIL Socket Arg) )

(de zsocket-set-sndbuf (Socket Arg)
   (native "libczmq.so" "zsocket_set_sndbuf" NIL Socket Arg) )

(de zsocket-set-rcvbuf (Socket Arg)
   (native "libczmq.so" "zsocket_set_rcvbuf" NIL Socket Arg) )

(de zsocket-set-linger (Socket Arg)
   (native "libczmq.so" "zsocket_set_linger" NIL Socket Arg) )

(de zsocket-set-reconnect-ivl (Socket Arg)
   (native "libczmq.so" "zsocket_set_reconnect_ivl" NIL Socket Arg) )

(de zsocket-set-reconnect-ivl-max (Socket Arg)
   (native "libczmq.so" "zsocket_set_reconnect_ivl_max" NIL Socket Arg) )

(de zsocket-set-backlog (Socket Arg)
   (native "libczmq.so" "zsocket_set_backlog" NIL Socket Arg) )

(de zsocket-set-maxmsgsize (Socket Arg)
   (native "libczmq.so" "zsocket_set_maxmsgsize" NIL Socket Arg) )

(de zsocket-set-multicast-hops (Socket Arg)
   (native "libczmq.so" "zsocket_set_multicast_hops" NIL Socket Arg) )

(de zsocket-set-rcvtimeo (Socket Arg)
   (native "libczmq.so" "zsocket_set_rcvtimeo" NIL Socket Arg) )

(de zsocket-set-sndtimeo (Socket Arg)
   (native "libczmq.so" "zsocket_set_sndtimeo" NIL Socket Arg) )

(de zsocket-set-ipv4only (Socket Arg)
   (native "libczmq.so" "zsocket_set_ipv4only" NIL Socket Arg) )

(de zsocket-set-delay-attach-on-connect (Socket Arg)
   (native "libczmq.so" "zsocket_set_delay_attach_on_connect" NIL Socket Arg) )

(de zsocket-set-router-mandatory (Socket Arg)
   (native "libczmq.so" "zsocket_set_router_mandatory" NIL Socket Arg) )

(de zsocket-set-router-raw (Socket Arg)
   (native "libczmq.so" "zsocket_set_router_raw" NIL Socket Arg) )

(de zsocket-set-xpub-verbose (Socket Arg)
   (native "libczmq.so" "zsocket_set_xpub_verbose" NIL Socket Arg) )
