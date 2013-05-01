
(de zlist-new ()
   (native "libczmq.so" "zlist_new" 'N) )

(de zlist-destroy (Self)
   (native "libczmq.so" "zlist_destroy" NIL NIL (list NIL (8) (cons Self 8))) )

(de zlist-first (Self)
   (native "libczmq.so" "zlist_first" 'N Self) )

(de zlist-last (Self)
   (native "libczmq.so" "zlist_last" 'N Self) )

(de zlist-head (Self)
   (native "libczmq.so" "zlist_head" 'N Self) )

(de zlist-tail (Self)
   (native "libczmq.so" "zlist_tail" 'N Self) )

(de zlist-next (Self)
   (native "libczmq.so" "zlist_next" 'N Self) )

(de zlist-append (Self Item)
   (native "libczmq.so" "zlist_append" 'I Self Item) )

(de zlist-push (Self Item)
   (native "libczmq.so" "zlist_push" 'I Self Item) )

(de zlist-pop (Self)
   (native "libczmq.so" "zlist_pop" 'N Self) )

(de zlist-remove (Self Item)
   (native "libczmq.so" "zlist_remove" NIL Self Item) )

(de zlist-dup (Self)
   (native "libczmq.so" "zlist_dup" 'N Self) )

(de zlist-copy (Self)
   (native "libczmq.so" "zlist_copy" 'N Self) )

(de zlist-size (Self)
   (native "libczmq.so" "zlist_size" 'I Self) )

(de zlist-sort (Self Fn)
   (native "libczmq.so" "zlist_sort" NIL Self Fn) )

(de zlist-autofree (Self)
   (native "libczmq.so" "zlist_autofree" NIL Self) )
