package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class b70 implements Key {

    /* renamed from: do, reason: not valid java name */
    private static final b70 f368do = new b70();

    private b70() {
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static b70 m459do() {
        return f368do;
    }

    public String toString() {
        return "EmptySignature";
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
