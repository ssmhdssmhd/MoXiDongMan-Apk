package com.bumptech.glide.load;

import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;

/* loaded from: classes.dex */
public interface ResourceDecoder<T, Z> {
    @Nullable
    Resource<Z> decode(@NonNull T t, int i, int i2, @NonNull f81 f81Var) throws IOException;

    boolean handles(@NonNull T t, @NonNull f81 f81Var) throws IOException;
}
