package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public final class s51 implements Key {

    /* renamed from: do, reason: not valid java name */
    private final Object f6014do;

    public s51(@NonNull Object obj) {
        this.f6014do = cf1.m900new(obj);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof s51) {
            return this.f6014do.equals(((s51) obj).f6014do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f6014do.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f6014do + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f6014do.toString().getBytes(Key.CHARSET));
    }
}
