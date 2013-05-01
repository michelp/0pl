
(de zctx-new ()
   (native "libczmq.so" "zctx_new" 'N) )

(de zctx-destroy (ctx)
   (native "libczmq.so" "zctx_destroy" NIL ctx) )

(de zctx-set-iothreads (ctx threads)
   (native "libczmq.so" "zctx_set_iothreads" NIL ctx threads) )

(de zctx-set-linger (ctx linger)
   (native "libczmq.so" "zctx_set_linger" NIL ctx linger) )

(de zctx-set-hwm (ctx hwm)
   (native "libczmq.so" "zctx_set_hwm" NIL ctx hwm) )

(de zctx-hwm (ctx)
   (native "libczmq.so" "zctx_hwm" 'I ctx) )

(de zctx-underlying (ctx)
   (native "libczmq.so" "zctx_underlying" 'N ctx) )
