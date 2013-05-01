
(de zmsg-new ()
   (native "libczmq.so" "zmsg_new" 'N) )

(de zmsg-destroy (self)
   (native "libczmq.so" "zmsg_destroy" NIL self) )

(de zmsg-recv (socket)
   (native "libczmq.so" "zmsg_recv" 'N socket) )

(de zmsg-send (self socket)
   (native "libczmq.so" "zmsg_send" 'I self socket) )

(de zmsg-size (self)
   (native "libczmq.so" "zmsg_size" 'I self) )

(de zmsg-content-size (self)
   (native "libczmq.so" "zmsg_content_size" 'I self) )
   
(de zmsg-push (self frame)
   (native "libczmq.so" "zmsg_push" 'I self frame) )

(de zmsg-pop (self)
   (native "libczmq.so" "zmsg_pop" 'N self) )

(de zmsg-add (self frame)
   (native "libczmq.so" "zmsg_add" 'I self frame) )

(de zmsg-pushstr (self str)
   (native "libczmq.so" "zmsg_pushstr" 'I self str) )

(de zmsg-addstr (self str)
   (native "libczmq.so" "zmsg_addstr" 'I self str) )
   
(de zmsg-popstr (self)
   (native "libczmq.so" "zmsg_popstr" 'S self) )

(de zmsg-wrap (self frame)
   (native "libczmq.so" "zmsg_wrap" NIL self frame) )

(de zmsg-unwrap (self)
   (native "libczmq.so" "zmsg_unwrap" 'N self) )

(de zmsg-remove (self frame)
   (native "libczmq.so" "zmsg_remove" NIL self frame) )

(de zmsg-first (self)
   (native "libczmq.so" "zmsg_first" 'N self) )

(de zmsg-next (self)
   (native "libczmq.so" "zmsg_next" 'N self) )

(de zmsg-last (self)
   (native "libczmq.so" "zmsg_last" 'N self) )

(de zmsg-save (self file)
   (native "libczmq.so" "zmsg_save" 'I self file) )

(de zmsg-load (self file)
   (native "libczmq.so" "zmsg_load" 'N self file) )

(de zmsg-dup (self)
   (native "libczmq.so" "zmsg_dup" 'N self) )

(de zmsg-dump (self)
   (native "libczmq.so" "zmsg_dump" NIL self) )
