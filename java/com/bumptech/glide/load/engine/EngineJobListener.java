package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;

/* loaded from: classes.dex */
interface EngineJobListener {
    void onEngineJobCancelled(Cgoto<?> cgoto, Key key);

    void onEngineJobComplete(Cgoto<?> cgoto, Key key, EngineResource<?> engineResource);
}
