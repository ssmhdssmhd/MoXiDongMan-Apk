package com.bumptech.glide.request;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.request.target.Target;

/* loaded from: classes.dex */
public interface RequestListener<R> {
    boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<R> target, boolean z);

    boolean onResourceReady(R r, Object obj, Target<R> target, Cdo cdo, boolean z);
}
