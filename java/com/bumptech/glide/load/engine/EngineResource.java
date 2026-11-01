package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
class EngineResource<Z> implements Resource<Z> {

    /* renamed from: case, reason: not valid java name */
    private int f9613case;

    /* renamed from: do, reason: not valid java name */
    private final boolean f9614do;

    /* renamed from: else, reason: not valid java name */
    private boolean f9615else;

    /* renamed from: for, reason: not valid java name */
    private final Resource<Z> f9616for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f9617if;

    /* renamed from: new, reason: not valid java name */
    private final ResourceListener f9618new;

    /* renamed from: try, reason: not valid java name */
    private final Key f9619try;

    public interface ResourceListener {
        void onResourceReleased(Key key, EngineResource<?> engineResource);
    }

    public EngineResource(Resource<Z> resource, boolean z, boolean z2, Key key, ResourceListener resourceListener) {
        this.f9616for = (Resource) cf1.m900new(resource);
        this.f9614do = z;
        this.f9617if = z2;
        this.f9619try = key;
        this.f9618new = (ResourceListener) cf1.m900new(resourceListener);
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m11356do() {
        if (this.f9615else) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f9613case++;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m11357for() {
        return this.f9614do;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f9616for.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> getResourceClass() {
        return this.f9616for.getResourceClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f9616for.getSize();
    }

    /* renamed from: if, reason: not valid java name */
    public Resource<Z> m11358if() {
        return this.f9616for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m11359new() {
        boolean z;
        synchronized (this) {
            int i = this.f9613case;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f9613case = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f9618new.onResourceReleased(this.f9619try, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        if (this.f9613case > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f9615else) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f9615else = true;
        if (this.f9617if) {
            this.f9616for.recycle();
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f9614do + ", listener=" + this.f9618new + ", key=" + this.f9619try + ", acquired=" + this.f9613case + ", isRecycled=" + this.f9615else + ", resource=" + this.f9616for + MessageFormatter.DELIM_STOP;
    }
}
