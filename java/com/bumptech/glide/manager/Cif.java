package com.bumptech.glide.manager;

import androidx.annotation.NonNull;

/* renamed from: com.bumptech.glide.manager.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements Lifecycle {
    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        lifecycleListener.onStart();
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
    }
}
