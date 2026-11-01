package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import android.support.v4.jw0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.MemoryCache;

/* renamed from: com.bumptech.glide.load.engine.cache.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse extends jw0<Key, Resource<?>> implements MemoryCache {

    /* renamed from: try, reason: not valid java name */
    private MemoryCache.ResourceRemovedListener f9708try;

    public Celse(long j) {
        super(j);
    }

    @Override // android.support.v4.jw0
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo4124try(@Nullable Resource<?> resource) {
        return resource == null ? super.mo4124try(null) : resource.getSize();
    }

    @Override // android.support.v4.jw0
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo4117case(@NonNull Key key, @Nullable Resource<?> resource) {
        MemoryCache.ResourceRemovedListener resourceRemovedListener = this.f9708try;
        if (resourceRemovedListener == null || resource == null) {
            return;
        }
        resourceRemovedListener.onResourceRemoved(resource);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public /* bridge */ /* synthetic */ Resource put(@NonNull Key key, @Nullable Resource resource) {
        return (Resource) super.m4119else(key, resource);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @Nullable
    public /* bridge */ /* synthetic */ Resource remove(@NonNull Key key) {
        return (Resource) super.m4121goto(key);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public void setResourceRemovedListener(@NonNull MemoryCache.ResourceRemovedListener resourceRemovedListener) {
        this.f9708try = resourceRemovedListener;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i) {
        if (i >= 40) {
            clearMemory();
        } else if (i >= 20 || i == 15) {
            m4123this(getMaxSize() / 2);
        }
    }
}
