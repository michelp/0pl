
(de zlist-new ()
   (native "libczmq.so" "zlist_new" 'N) )

(de zlist-destroy (self)
   (native "libczmq.so" "zlist_destroy" NIL self) )

(de zlist-first (self)
   (native "libczmq.so" "zlist_first" 'N self) )

(de zlist-last (self)
   (native "libczmq.so" "zlist_last" 'N self) )

(de zlist-head (self)
   (native "libczmq.so" "zlist_head" 'N self) )

(de zlist-tail (self)
   (native "libczmq.so" "zlist_tail" 'N self) )

(de zlist-next (self)
   (native "libczmq.so" "zlist_next" 'N self) )

(de zlist-append (self item)
   (native "libczmq.so" "zlist_append" 'I self item) )

(de zlist-push (self item)
   (native "libczmq.so" "zlist_push" 'I self item) )

(de zlist-pop (self)
   (native "libczmq.so" "zlist_pop" 'N self) )

(de zlist-remove (self item)
   (native "libczmq.so" "zlist_remove" NIL self item) )

(de zlist-dup (self)
   (native "libczmq.so" "zlist_dup" 'N self) )

(de zlist-copy (self)
   (native "libczmq.so" "zlist_copy" 'N self) )

(de zlist-size (self)
   (native "libczmq.so" "zlist_size" 'I self) )

(de zlist-sort (self fn)
   (native "libczmq.so" "zlist_sort" NIL self fn) )

(de zlist-autofree (self)
   (native "libczmq.so" "zlist_autofree" NIL self) )
