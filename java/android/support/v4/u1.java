package android.support.v4;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Ccase;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class u1 implements Key {

    /* renamed from: do, reason: not valid java name */
    private final int f6725do;

    /* renamed from: if, reason: not valid java name */
    private final Key f6726if;

    private u1(int i, Key key) {
        this.f6725do = i;
        this.f6726if = key;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static Key m8182do(@NonNull Context context) {
        return new u1(context.getResources().getConfiguration().uiMode & 48, c3.m721for(context));
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof u1)) {
            return false;
        }
        u1 u1Var = (u1) obj;
        return this.f6725do == u1Var.f6725do && this.f6726if.equals(u1Var.f6726if);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Ccase.m12058throw(this.f6726if, this.f6725do);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f6726if.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f6725do).array());
    }
}
