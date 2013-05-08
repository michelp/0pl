(load "zmq/zmq.l")
(import zmq)

(de socker (Name) (pack "ipc://" Name ".sock"))

(de setup-engine (Local . @)
   (setq *Ctx (zmq~zctx-new))
   (setq *Router (zmq~zsocket-new *Ctx zmq~ROUTER))
   (setq *Peers (zmq~zhash-new))
   (setq *Loop (zmq~zloop-new))

   (zmq~zsocket-bind *Router (socker Local))
   (zmq~zloop-set-verbose *Loop 1)

   (while (args)
      (let (Socket (zmq~zsocket-new *Ctx zmq~DEALER)
            Name (next)
            Epoint (socker Name) )
         (zmq~zsocket-set-identity Socket Local)
         (zmq~zsocket-connect Socket Epoint)
         (zmq~zhash-insert *Peers Name Socket) ) ) )

(de send-to (Sock Msg)
   (let Out (zmq~zmsg-new)
      (zmq~zmsg-pushstr Out Msg)
      (zmq~zmsg-send Out Sock) ) )

(de send-sym (Peer S)
   (send-to (zmq~zhash-lookup *Peers Peer) (sym S)) )

(de recv-sym ()
   (let In (zmq~zmsg-recv *Router)
      (finally (zmq~zmsg-destroy In)
         (list (zmq~zmsg-popstr In) (any (zmq~zmsg-popstr In))) ) ) )

(de send-all (S)
   (zmq~zhash-foreach *Peers '((Key Item Arg X Y) (send-to Item (sym S))) 0) )

(de recv-all ()
   (make (do (zmq~zhash-size *Peers) (link (recv-sym)))) )

(de run-engine ()
   (zmq~zloop-timer *Loop 10000 0 '((Loop Item Arg) (println "beep" Loop Item Arg) (0)) NIL)
   (zmq~zloop-poller *Loop *Router 0 zmq~POLLIN
      '((Loop Item Arg) (println "boop" Loop Item Arg) (0)) NIL )
   (zmq~zloop-start *Loop) )

   ## (while (= (zmq~zsocket-poll *Router -1) 1)
   ##    (let Sym (recv-sym)
   ##       (println Sym)
   ##       (send-sym (car Sym) (eval (cadr Sym))) ) ) )

(de main @
   (pass setup-engine)
   (run-engine) )

(de test ()
   (setq A (pipe (main "a" "b" "c")))
   (setq B (pipe (main "b" "a" "c")))
   (setup-engine "c" "a" "b") )
