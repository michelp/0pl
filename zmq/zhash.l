
(de zhash-new ()
   (native "libczmq.so" "zhash_new" 'N) )

(de zhash-destroy (Self)
   (native "libczmq.so" "zhash_destroy" NIL NIL (list NIL (8) (cons Self 8))) )

(de zhash-insert (Self Key Item)
   (native "libczmq.so" "zhash_insert" 'I Self Key Item) )

(de zhash-update (Self Key Item)
   (native "libczmq.so" "zhash_update" 'N Self Key Item) )

(de zhash-delete (Self Key)
   (native "libczmq.so" "zhash_delete" 'N Self Key) )

(de zhash-lookup (Self Key)
   (native "libczmq.so" "zhash_lookup" 'N Self Key) )

(de zhash-rename (Self Old New)
   (native "libczmq.so" "zhash_rename" 'I Self Old New) )

(de zhash-freefn (Self Key Fn)
   (native "libczmq.so" "zhash_freefn" 'N Self Key Fn) )

(de zhash-size (Self)
   (native "libczmq.so" "zhash-size" 'I Self) )

(de zhash-dup (Self)
   (native "libczmq.so" "zhash-dup" 'N Self) )

(de zhash-Keys (Self)
   (native "libczmq.so" "zhash_Keys" 'N Self) )
    
(de zhash-foreach (Self Fn Arg)
   (native "libczmq.so" "zhash_foreach" 'I Self Fn Arg) )

(de zhash-save (Self Filename)
   (native "libczmq.so" "zhash_save" 'I Self Filename) )

(de zhash-load (Self Filename)
   (native "libczmq.so" "zhash_load" 'I Self Filename) )

(de zhash-autofree (Self)
   (native "libczmq.so" "zhash_autofree" NIL Self) )
