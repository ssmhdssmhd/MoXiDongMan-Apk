package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.ListPreloader;

/* loaded from: classes.dex */
public class kc0<T> implements ListPreloader.PreloadSizeProvider<T> {

    /* renamed from: do, reason: not valid java name */
    private final int[] f3357do;

    public kc0(int i, int i2) {
        this.f3357do = new int[]{i, i2};
    }

    @Override // com.bumptech.glide.ListPreloader.PreloadSizeProvider
    @Nullable
    public int[] getPreloadSize(@NonNull T t, int i, int i2) {
        return this.f3357do;
    }
}
