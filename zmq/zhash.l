
(de zhash-new ()
   (native "libczmq.so" "zhash_new" 'N) )

(de zhash-destroy (ctx)
   (native "libczmq.so" "zhash_destroy" NIL ctx) )

(de zhash-insert (self key item)
   (native "libczmq.so" "zhash_insert" 'I self key item) )

(de zhash-update (self key item)
   (native "libczmq.so" "zhash_update" 'N self key item) )

(de zhash-delete (self key)
   (native "libczmq.so" "zhash_delete" 'N self key) )

(de zhash-lookup (self key)
   (native "libczmq.so" "zhash_lookup" 'N self key) )

(de zhash-rename (self old new)
   (native "libczmq.so" "zhash_rename" 'I self old new) )

(de zhash-freefn (self key fn)
   (native "libczmq.so" "zhash_freefn" 'N self key fn) )

(de zhash-size (self)
   (native "libczmq.so" "zhash-size" 'I self) )

(de zhash-dup (self)
   (native "libczmq.so" "zhash-dup" 'N self) )

(de zhash-keys (self)
   (native "libczmq.so" "zhash_keys" 'N self) )
    
(de zhash-foreach (self fn arg)
   (native "libczmq.so" "zhash_foreach" 'I self fn arg) )

(de zhash-save (self filename)
   (native "libczmq.so" "zhash_save" 'I self filename) )

(de zhash-load (self filename)
   (native "libczmq.so" "zhash_load" 'I self filename) )

(de zhash-autofree (self)
   (native "libczmq.so" "zhash_autofree" NIL self) )
