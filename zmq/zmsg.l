
(de zmsg-new ()
   (native "libczmq.so" "zmsg_new" 'N) )

(de zmsg-destroy (Self)
   (native "libczmq.so" "zmsg_destroy" NIL (list NIL (8) (cons Self 8))) )

(de zmsg-recv (Socket)
   (native "libczmq.so" "zmsg_recv" 'N Socket) )

(de zmsg-send (Self Socket)
   (native "libczmq.so" "zmsg_send" 'I (list NIL (8) (cons Self 8)) Socket) )

(de zmsg-size (Self)
   (native "libczmq.so" "zmsg_size" 'I Self) )

(de zmsg-content-size (Self)
   (native "libczmq.so" "zmsg_content_size" 'I Self) )
   
(de zmsg-push (Self Frame)
   (native "libczmq.so" "zmsg_push" 'I Self Frame) )

(de zmsg-pop (Self)
   (native "libczmq.so" "zmsg_pop" 'N Self) )

(de zmsg-add (Self Frame)
   (native "libczmq.so" "zmsg_add" 'I Self Frame) )

(de zmsg-pushstr (Self Str)
   (native "libczmq.so" "zmsg_pushstr" 'I Self Str) )

(de zmsg-addstr (Self Str)
   (native "libczmq.so" "zmsg_addstr" 'I Self Str) )
   
(de zmsg-popstr (Self)
   (native "libczmq.so" "zmsg_popstr" 'S Self) )

(de zmsg-wrap (Self Frame)
   (native "libczmq.so" "zmsg_wrap" NIL Self Frame) )

(de zmsg-unwrap (Self)
   (native "libczmq.so" "zmsg_unwrap" 'N Self) )

(de zmsg-remove (Self Frame)
   (native "libczmq.so" "zmsg_remove" NIL Self Frame) )

(de zmsg-first (Self)
   (native "libczmq.so" "zmsg_first" 'N Self) )

(de zmsg-next (Self)
   (native "libczmq.so" "zmsg_next" 'N Self) )

(de zmsg-last (Self)
   (native "libczmq.so" "zmsg_last" 'N Self) )

(de zmsg-save (Self File)
   (native "libczmq.so" "zmsg_save" 'I Self File) )

(de zmsg-load (Self File)
   (native "libczmq.so" "zmsg_load" 'N Self File) )

(de zmsg-dup (Self)
   (native "libczmq.so" "zmsg_dup" 'N Self) )

(de zmsg-dump (Self)
   (native "libczmq.so" "zmsg_dump" NIL Self) )
