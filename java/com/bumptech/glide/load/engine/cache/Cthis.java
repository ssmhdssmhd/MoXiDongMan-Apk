package com.bumptech.glide.load.engine.cache;

import android.support.v4.cf1;
import android.support.v4.jw0;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Ccase;
import com.bumptech.glide.util.pool.FactoryPools;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.bumptech.glide.load.engine.cache.this, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthis {

    /* renamed from: do, reason: not valid java name */
    private final jw0<Key, String> f9727do = new jw0<>(1000);

    /* renamed from: if, reason: not valid java name */
    private final Pools.Pool<Cif> f9728if = FactoryPools.m12087try(10, new Cdo());

    /* renamed from: com.bumptech.glide.load.engine.cache.this$do, reason: invalid class name */
    public class Cdo implements FactoryPools.Factory<Cif> {
        public Cdo() {
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif create() {
            try {
                return new Cif(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.this$if, reason: invalid class name */
    public static final class Cif implements FactoryPools.Poolable {

        /* renamed from: do, reason: not valid java name */
        public final MessageDigest f9730do;

        /* renamed from: if, reason: not valid java name */
        private final com.bumptech.glide.util.pool.Cdo f9731if = com.bumptech.glide.util.pool.Cdo.m12090do();

        public Cif(MessageDigest messageDigest) {
            this.f9730do = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
        @NonNull
        public com.bumptech.glide.util.pool.Cdo getVerifier() {
            return this.f9731if;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private String m11451do(Key key) {
        Cif cif = (Cif) cf1.m900new(this.f9728if.acquire());
        try {
            key.updateDiskCacheKey(cif.f9730do);
            return Ccase.m12056switch(cif.f9730do.digest());
        } finally {
            this.f9728if.release(cif);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public String m11452if(Key key) {
        String strM4120for;
        synchronized (this.f9727do) {
            strM4120for = this.f9727do.m4120for(key);
        }
        if (strM4120for == null) {
            strM4120for = m11451do(key);
        }
        synchronized (this.f9727do) {
            this.f9727do.m4119else(key, strM4120for);
        }
        return strM4120for;
    }
}
