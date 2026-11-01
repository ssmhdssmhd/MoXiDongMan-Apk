package com.bumptech.glide.load.engine;

import android.support.v4.f81;
import android.support.v4.jw0;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Ccase;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.throw, reason: invalid class name */
/* loaded from: classes.dex */
final class Cthrow implements Key {

    /* renamed from: this, reason: not valid java name */
    private static final jw0<Class<?>, byte[]> f9917this = new jw0<>(50);

    /* renamed from: case, reason: not valid java name */
    private final Class<?> f9918case;

    /* renamed from: do, reason: not valid java name */
    private final ArrayPool f9919do;

    /* renamed from: else, reason: not valid java name */
    private final f81 f9920else;

    /* renamed from: for, reason: not valid java name */
    private final Key f9921for;

    /* renamed from: goto, reason: not valid java name */
    private final Transformation<?> f9922goto;

    /* renamed from: if, reason: not valid java name */
    private final Key f9923if;

    /* renamed from: new, reason: not valid java name */
    private final int f9924new;

    /* renamed from: try, reason: not valid java name */
    private final int f9925try;

    public Cthrow(ArrayPool arrayPool, Key key, Key key2, int i, int i2, Transformation<?> transformation, Class<?> cls, f81 f81Var) {
        this.f9919do = arrayPool;
        this.f9923if = key;
        this.f9921for = key2;
        this.f9924new = i;
        this.f9925try = i2;
        this.f9922goto = transformation;
        this.f9918case = cls;
        this.f9920else = f81Var;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m11566do() {
        jw0<Class<?>, byte[]> jw0Var = f9917this;
        byte[] bArrM4120for = jw0Var.m4120for(this.f9918case);
        if (bArrM4120for != null) {
            return bArrM4120for;
        }
        byte[] bytes = this.f9918case.getName().getBytes(Key.CHARSET);
        jw0Var.m4119else(this.f9918case, bytes);
        return bytes;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof Cthrow)) {
            return false;
        }
        Cthrow cthrow = (Cthrow) obj;
        return this.f9925try == cthrow.f9925try && this.f9924new == cthrow.f9924new && Ccase.m12051new(this.f9922goto, cthrow.f9922goto) && this.f9918case.equals(cthrow.f9918case) && this.f9923if.equals(cthrow.f9923if) && this.f9921for.equals(cthrow.f9921for) && this.f9920else.equals(cthrow.f9920else);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        int iHashCode = (((((this.f9923if.hashCode() * 31) + this.f9921for.hashCode()) * 31) + this.f9924new) * 31) + this.f9925try;
        Transformation<?> transformation = this.f9922goto;
        if (transformation != null) {
            iHashCode = (iHashCode * 31) + transformation.hashCode();
        }
        return (((iHashCode * 31) + this.f9918case.hashCode()) * 31) + this.f9920else.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f9923if + ", signature=" + this.f9921for + ", width=" + this.f9924new + ", height=" + this.f9925try + ", decodedResourceClass=" + this.f9918case + ", transformation='" + this.f9922goto + "', options=" + this.f9920else + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f9919do.getExact(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f9924new).putInt(this.f9925try).array();
        this.f9921for.updateDiskCacheKey(messageDigest);
        this.f9923if.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        Transformation<?> transformation = this.f9922goto;
        if (transformation != null) {
            transformation.updateDiskCacheKey(messageDigest);
        }
        this.f9920else.updateDiskCacheKey(messageDigest);
        messageDigest.update(m11566do());
        this.f9919do.put(bArr);
    }
}
