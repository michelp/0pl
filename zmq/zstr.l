
(de zstr-recv (Socket)
   (native "libczmq.so" "zstr_recv" 'S Socket) )

(de zstr-recv-nowait (Socket)
   (native "libczmq.so" "zstr_recv_nowait" 'S Socket) )

(de zstr-send (Socket Str)
   (native "libczmq.so" "zstr_send" 'I Socket Str) )

(de zstr-sendm (Socket Str)
   (native "libczmq.so" "zstr_sendm" 'I Socket Str) )
