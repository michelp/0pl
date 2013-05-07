# 0mq bindings for picolisp
# Requires libzmq, and the czmq C bindings

(symbols 'zmq 'pico)

(load "zmq/zctx.l")
(load "zmq/zsocket.l")
(load "zmq/zstr.l")
(load "zmq/zframe.l")
(load "zmq/zmsg.l")
(load "zmq/zhash.l")
(load "zmq/zlist.l")
(load "zmq/zloop.l")
(load "zmq/zproxy.l")
(load "zmq/zbeacon.l")

(def 'NOBLOCK 1)
(def 'SNDMORE 2)

(def 'POLLIN 1)
(def 'POLLOUT 2)
(def 'POLLERR 4)

(def 'PAIR 0)
(def 'PUB 1)
(def 'SUB 2)
(def 'REQ 3)
(def 'REP 4)
(def 'DEALER 5)
(def 'ROUTER 6)
(def 'PULL 7)
(def 'PUSH 8)
(def 'XPUB 9)
(def 'XSUB 10)
