
(de zproxy-new (In Out . @)
   (if (args)
      (native "libzmq.so" "zmq_proxy" 'I In Out (next))
      (native "libzmq.so" "zmq_proxy" 'I In Out)))
