
(de zctx-new ()
   (native "libczmq.so" "zctx_new" 'N) )

(de zctx-destroy (Self)
   (native "libczmq.so" "zctx_destroy" NIL (list NIL (8) (cons Self 8))) )

(de zctx-set-iothreads (Self Threads)
   (native "libczmq.so" "zctx_set_iothreads" NIL Self Threads) )

(de zctx-set-linger (Self Linger)
   (native "libczmq.so" "zctx_set_linger" NIL Self Linger) )

(de zctx-set-hwm (Self Hwm)
   (native "libczmq.so" "zctx_set_hwm" NIL Self Hwm) )

(de zctx-hwm (Self)
   (native "libczmq.so" "zctx_hwm" 'I Self) )

(de zctx-underlying (Self)
   (native "libczmq.so" "zctx_underlying" 'N Self) )
