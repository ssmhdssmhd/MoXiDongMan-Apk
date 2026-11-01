package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import java.security.MessageDigest;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.this, reason: invalid class name */
/* loaded from: classes.dex */
class Cthis implements Key {

    /* renamed from: case, reason: not valid java name */
    private final Key f9908case;

    /* renamed from: do, reason: not valid java name */
    private final Object f9909do;

    /* renamed from: else, reason: not valid java name */
    private final Map<Class<?>, Transformation<?>> f9910else;

    /* renamed from: for, reason: not valid java name */
    private final int f9911for;

    /* renamed from: goto, reason: not valid java name */
    private final f81 f9912goto;

    /* renamed from: if, reason: not valid java name */
    private final int f9913if;

    /* renamed from: new, reason: not valid java name */
    private final Class<?> f9914new;

    /* renamed from: this, reason: not valid java name */
    private int f9915this;

    /* renamed from: try, reason: not valid java name */
    private final Class<?> f9916try;

    public Cthis(Object obj, Key key, int i, int i2, Map<Class<?>, Transformation<?>> map, Class<?> cls, Class<?> cls2, f81 f81Var) {
        this.f9909do = cf1.m900new(obj);
        this.f9908case = (Key) cf1.m901try(key, "Signature must not be null");
        this.f9913if = i;
        this.f9911for = i2;
        this.f9910else = (Map) cf1.m900new(map);
        this.f9914new = (Class) cf1.m901try(cls, "Resource class must not be null");
        this.f9916try = (Class) cf1.m901try(cls2, "Transcode class must not be null");
        this.f9912goto = (f81) cf1.m900new(f81Var);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof Cthis)) {
            return false;
        }
        Cthis cthis = (Cthis) obj;
        return this.f9909do.equals(cthis.f9909do) && this.f9908case.equals(cthis.f9908case) && this.f9911for == cthis.f9911for && this.f9913if == cthis.f9913if && this.f9910else.equals(cthis.f9910else) && this.f9914new.equals(cthis.f9914new) && this.f9916try.equals(cthis.f9916try) && this.f9912goto.equals(cthis.f9912goto);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f9915this == 0) {
            int iHashCode = this.f9909do.hashCode();
            this.f9915this = iHashCode;
            int iHashCode2 = (iHashCode * 31) + this.f9908case.hashCode();
            this.f9915this = iHashCode2;
            int i = (iHashCode2 * 31) + this.f9913if;
            this.f9915this = i;
            int i2 = (i * 31) + this.f9911for;
            this.f9915this = i2;
            int iHashCode3 = (i2 * 31) + this.f9910else.hashCode();
            this.f9915this = iHashCode3;
            int iHashCode4 = (iHashCode3 * 31) + this.f9914new.hashCode();
            this.f9915this = iHashCode4;
            int iHashCode5 = (iHashCode4 * 31) + this.f9916try.hashCode();
            this.f9915this = iHashCode5;
            this.f9915this = (iHashCode5 * 31) + this.f9912goto.hashCode();
        }
        return this.f9915this;
    }

    public String toString() {
        return "EngineKey{model=" + this.f9909do + ", width=" + this.f9913if + ", height=" + this.f9911for + ", resourceClass=" + this.f9914new + ", transcodeClass=" + this.f9916try + ", signature=" + this.f9908case + ", hashCode=" + this.f9915this + ", transformations=" + this.f9910else + ", options=" + this.f9912goto + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
