
(de zsocket-new (ctx type)
   (native "libczmq.so" "zsocket_new" 'N ctx type) )

(de zsocket-destroy (ctx socket)
   (native "libczmq.so" "zsocket_destroy" NIL ctx socket) )

(de zsocket-bind (socket addr)
   (native "libczmq.so" "zsocket_bind" 'I socket addr) )

(de zsocket-connect (socket addr)
   (native "libczmq.so" "zsocket_connect" 'I socket addr) )

(de zsocket-disconnect (socket addr)
   (native "libczmq.so" "zsocket_disconnect" 'I socket addr) )

(de zsocket-poll (socket timeout)
   (native "libczmq.so" "zsocket_poll" 'I socket timeout) )

(de zsocket-type-str (socket)
   (native "libczmq.so" "zsocket_type_str" 'S socket) )

(de zsocket-type (socket)
   (native "libczmq.so" "zsocket_type" 'I socket) )

(de zsocket-sndhwm (socket)
   (native "libczmq.so" "zsocket_sndhwm" 'I socket) )

(de zsocket-recvhwm (socket)
   (native "libczmq.so" "zsocket_rcvhwm" 'I socket) )

(de zsocket-affinity (socket)
   (native "libczmq.so" "zsocket_affinity" 'I socket) )

(de zsocket-rate (socket)
   (native "libczmq.so" "zsocket_rate" 'I socket) )

(de zsocket-identity (socket)
   (native "libczmq.so" "zsocket_identity" 'S socket) )

(de zsocket-recovery-ivl (socket)
   (native "libczmq.so" "zsocket_recovery_ivl" 'I socket) )

(de zsocket-sndbuf (socket)
   (native "libczmq.so" "zsocket_sndbuf" 'I socket) )

(de zsocket-recvbuf (socket)
   (native "libczmq.so" "zsocket_rcvbuf" 'I socket) )

(de zsocket-linger (socket)
   (native "libczmq.so" "zsocket_linger" 'I socket) )

(de zsocket-reconnect-ivl (socket)
   (native "libczmq.so" "zsocket_reconnect_ivl" 'I socket) )

(de zsocket-reconnect-ivl-max (socket)
   (native "libczmq.so" "zsocket_reconnect_ivl_max" 'I socket) )

(de zsocket-backlog (socket)
   (native "libczmq.so" "zsocket_backlog" 'I socket) )

(de zsocket-maxmsgsize (socket)
   (native "libczmq.so" "zsocket_maxmsgsize" 'I socket) )

(de zsocket-multicast-hops (socket)
   (native "libczmq.so" "zsocket_multicast_hops" 'I socket) )

(de zsocket-recvtimeo (socket)
   (native "libczmq.so" "zsocket_rcvtimeo" 'I socket) )

(de zsocket-sndtimeo (socket)
   (native "libczmq.so" "zsocket_sndtimeo" 'I socket) )

(de zsocket-ipv4only (socket)
   (native "libczmq.so" "zsocket_ipv4only" 'I socket) )

(de zsocket-rcvmore (socket)
   (native "libczmq.so" "zsocket_rcvmore" 'I socket) )

(de zsocket-fd (socket)
   (native "libczmq.so" "zsocket_fd" 'I socket) )

(de zsocket-events (socket)
   (native "libczmq.so" "zsocket_events" 'I socket) )

(de zsocket-last-endpoint (socket)
   (native "libczmq.so" "zsocket_last_endpoint" 'S socket) )

(de zsocket-set-sndhwm (socket arg)
   (native "libczmq.so" "zsocket_set_sndhwm" NIL socket arg) )

(de zsocket-set-rcvhwm (socket arg)
   (native "libczmq.so" "zsocket_set_rcvhwm" NIL socket arg) )

(de zsocket-set-affinity (socket arg)
   (native "libczmq.so" "zsocket_set_affinity" NIL socket arg) )

(de zsocket-set-subscribe (socket arg)
   (native "libczmq.so" "zsocket_set_subscribe" NIL socket arg) )

(de zsocket-set-unsubscribe (socket arg)
   (native "libczmq.so" "zsocket_set_unsubscribe" NIL socket arg) )

(de zsocket-set-identity (socket arg)
   (native "libczmq.so" "zsocket_set_identity" NIL socket arg) )

(de zsocket-set-rate (socket arg)
   (native "libczmq.so" "zsocket_set_rate" NIL socket arg) )

(de zsocket-set-recovery-ivl (socket arg)
   (native "libczmq.so" "zsocket_set_recovery_ivl" NIL socket arg) )

(de zsocket-set-sndbuf (socket arg)
   (native "libczmq.so" "zsocket_set_sndbuf" NIL socket arg) )

(de zsocket-set-rcvbuf (socket arg)
   (native "libczmq.so" "zsocket_set_rcvbuf" NIL socket arg) )

(de zsocket-set-linger (socket arg)
   (native "libczmq.so" "zsocket_set_linger" NIL socket arg) )

(de zsocket-set-reconnect-ivl (socket arg)
   (native "libczmq.so" "zsocket_set_reconnect_ivl" NIL socket arg) )

(de zsocket-set-reconnect-ivl-max (socket arg)
   (native "libczmq.so" "zsocket_set_reconnect_ivl_max" NIL socket arg) )

(de zsocket-set-backlog (socket arg)
   (native "libczmq.so" "zsocket_set_backlog" NIL socket arg) )

(de zsocket-set-maxmsgsize (socket arg)
   (native "libczmq.so" "zsocket_set_maxmsgsize" NIL socket arg) )

(de zsocket-set-multicast-hops (socket arg)
   (native "libczmq.so" "zsocket_set_multicast_hops" NIL socket arg) )

(de zsocket-set-rcvtimeo (socket arg)
   (native "libczmq.so" "zsocket_set_rcvtimeo" NIL socket arg) )

(de zsocket-set-sndtimeo (socket arg)
   (native "libczmq.so" "zsocket_set_sndtimeo" NIL socket arg) )

(de zsocket-set-ipv4only (socket arg)
   (native "libczmq.so" "zsocket_set_ipv4only" NIL socket arg) )

(de zsocket-set-delay-attach-on-connect (socket arg)
   (native "libczmq.so" "zsocket_set_delay_attach_on_connect" NIL socket arg) )

(de zsocket-set-router-mandatory (socket arg)
   (native "libczmq.so" "zsocket_set_router_mandatory" NIL socket arg) )

(de zsocket-set-router-raw (socket arg)
   (native "libczmq.so" "zsocket_set_router_raw" NIL socket arg) )

(de zsocket-set-xpub-verbose (socket arg)
   (native "libczmq.so" "zsocket_set_xpub_verbose" NIL socket arg) )
