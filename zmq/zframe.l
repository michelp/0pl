
(de zframe-new (data size)
   (native "libczmq.so" "zframe_new" 'N data size) )

(de zframe-new-zero-copy (data size fn arg)
   (native "libczmq.so" "zframe_new_zero_copy" 'N data size fn arg) )

(de zframe-destroy (self)
   (native "libczmq.so" "zframe_destroy" NIL self) )

(de zframe-recv (socket)
   (native "libczmq.so" "zframe_recv" 'N socket) )

(de zframe-recv-nowait (socket)
   (native "libczmq.so" "zframe_recv_nowait" 'N socket) )

(de zframe-send (self socket flags)
   (native "libczmq.so" "zframe_send" 'I self socket flags) )

(de zframe-size (self)
   (native "libczmq.so" "zframe_size" 'I self) )

(de zframe-data (self)
   (native "libczmq.so" "zframe_data" 'N self) )

(de zframe-dup (self)
   (native "libczmq.so" "zframe_dup" 'N self) )

(de zframe-strhex (self)
   (native "libczmq.so" "zframe_strhex" 'S self) )

(de zframe-strdup (self)
   (native "libczmq.so" "zframe_strdup" 'S self) )

(de zframe-streq (self str)
   (native "libczmq.so" "zframe_streq" 'I self str) )

(de zframe-zero-copy (self)
   (native "libczmq.so" "zframe_zero_copy" 'I self) )

(de zframe-more (self)
   (native "libczmq.so" "zframe_more" 'I self) )

(de zframe-eq (self other)
   (native "libczmq.so" "zframe_eq" 'I self other) )

(de zframe-print (self prefix)
   (native "libczmq.so" "zframe_print" NIL self prefix) )

(de zframe-reset (self data size)
   (native "libczmq.so" "zframe_reset" NIL self data dize) )

