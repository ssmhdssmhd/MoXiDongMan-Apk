package com.bumptech.glide.load.resource.transcode;

import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public interface ResourceTranscoder<Z, R> {
    @Nullable
    Resource<R> transcode(@NonNull Resource<Z> resource, @NonNull f81 f81Var);
}
