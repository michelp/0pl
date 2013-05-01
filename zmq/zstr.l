
(de zstr-recv (socket)
   (native "libczmq.so" "zstr_recv" 'S socket) )

(de zstr-recv-nowait (socket)
   (native "libczmq.so" "zstr_recv_nowait" 'S socket) )

(de zstr-send (socket str)
   (native "libczmq.so" "zstr_send" 'I socket str) )

(de zstr-sendm (socket str)
   (native "libczmq.so" "zstr_sendm" 'I socket str) )
