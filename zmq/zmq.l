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

(def 'NOBLOCK 1)
(def 'SNDMORE 2)

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

(setq *Ctx (zctx-new))

(local push)

(de dealer ()
   (zsocket-new *Ctx DEALER) )

(de router ()
   (zsocket-new *Ctx ROUTER) )

(de pub ()
   (zsocket-new *Ctx PUB) )

(de sub ()
   (zsocket-new *Ctx SUB) )

(de req ()
   (zsocket-new *Ctx REQ) )

(de rep ()
   (zsocket-new *Ctx REP) )

(de push ()
   (zsocket-new *Ctx PUSH) )

(de pull ()
   (zsocket-new *Ctx PULL) )

(de xpub ()
   (zsocket-new *Ctx XPUB) )

(de xsub ()
   (zsocket-new *Ctx XSUB) )

(de send-multipart (socket . @)
   (while (args)
      (let (arg (next))
         (if (args)
	    (zstr-sendm socket arg)
            (zstr-send socket arg) ) ) ) )

(de recv-multipart (socket)
   (make 
      (link (zstr-recv socket))
      (while (zsocket-rcvmore socket)
         (link (zstr-recv socket)) ) ) )

(symbols 'pico)

(de test-socks ()
   (setq r (zmq~router))
   (zmq~zsocket-bind r "ipc://test.sock")
   (setq d (zmq~dealer))
   (zmq~zsocket-connect d "ipc://test.sock")
   (setq h (zmq~zhash-new))
   (setq l (zmq~zlist-new))
 )