
(de zframe-new (Data Size)
   (native "libczmq.so" "zframe_new" 'N Data Size) )

(de zframe-new-zero-copy (Data Size Fn Arg)
   (native "libczmq.so" "zframe_new_zero_copy" 'N Data Size Fn Arg) )

(de zframe-destroy (Self)
   (native "libczmq.so" "zframe_destroy" NIL NIL (list NIL (8) (cons Self 8))) )

(de zframe-recv (Socket)
   (native "libczmq.so" "zframe_recv" 'N Socket) )

(de zframe-recv-nowait (Socket)
   (native "libczmq.so" "zframe_recv_nowait" 'N Socket) )

(de zframe-send (Self Socket Flags)
   (native "libczmq.so" "zframe_send" 'I Self Socket Flags) )

(de zframe-size (Self)
   (native "libczmq.so" "zframe_size" 'I Self) )

(de zframe-data (Self)
   (native "libczmq.so" "zframe_data" 'N Self) )

(de zframe-dup (Self)
   (native "libczmq.so" "zframe_dup" 'N Self) )

(de zframe-strhex (Self)
   (native "libczmq.so" "zframe_strhex" 'S Self) )

(de zframe-strdup (Self)
   (native "libczmq.so" "zframe_strdup" 'S Self) )

(de zframe-streq (Self Str)
   (native "libczmq.so" "zframe_streq" 'I Self Str) )

(de zframe-zero-copy (Self)
   (native "libczmq.so" "zframe_zero_copy" 'I Self) )

(de zframe-more (Self)
   (native "libczmq.so" "zframe_more" 'I Self) )

(de zframe-eq (Self Other)
   (native "libczmq.so" "zframe_eq" 'I Self Other) )

(de zframe-print (Self Prefix)
   (native "libczmq.so" "zframe_print" NIL Self Prefix) )

(de zframe-reset (Self Data Size)
   (native "libczmq.so" "zframe_reset" NIL Self Data Dize) )

