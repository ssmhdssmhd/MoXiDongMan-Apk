package com.bumptech.glide.request;

import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public interface ResourceCallback {
    Object getLock();

    void onLoadFailed(Ccatch ccatch);

    void onResourceReady(Resource<?> resource, Cdo cdo);
}
