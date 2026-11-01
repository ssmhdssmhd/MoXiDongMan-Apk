package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class kz0 implements Key {

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final String f3509do;

    /* renamed from: for, reason: not valid java name */
    private final int f3510for;

    /* renamed from: if, reason: not valid java name */
    private final long f3511if;

    public kz0(@Nullable String str, long j, int i) {
        this.f3509do = str == null ? "" : str;
        this.f3511if = j;
        this.f3510for = i;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        kz0 kz0Var = (kz0) obj;
        return this.f3511if == kz0Var.f3511if && this.f3510for == kz0Var.f3510for && this.f3509do.equals(kz0Var.f3509do);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        int iHashCode = this.f3509do.hashCode() * 31;
        long j = this.f3511if;
        return ((iHashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.f3510for;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f3511if).putInt(this.f3510for).array());
        messageDigest.update(this.f3509do.getBytes(Key.CHARSET));
    }
}
