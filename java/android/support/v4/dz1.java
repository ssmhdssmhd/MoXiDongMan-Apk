package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public class dz1<T> implements Resource<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f1169do;

    public dz1(@NonNull T t) {
        this.f1169do = (T) cf1.m900new(t);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public final T get() {
        return this.f1169do;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<T> getResourceClass() {
        return (Class<T>) this.f1169do.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
