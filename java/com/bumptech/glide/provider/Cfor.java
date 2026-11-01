package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.provider.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final List<Cdo<?>> f10300do = new ArrayList();

    /* renamed from: com.bumptech.glide.provider.for$do, reason: invalid class name */
    public static final class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        private final Class<T> f10301do;

        /* renamed from: if, reason: not valid java name */
        public final ResourceEncoder<T> f10302if;

        public Cdo(@NonNull Class<T> cls, @NonNull ResourceEncoder<T> resourceEncoder) {
            this.f10301do = cls;
            this.f10302if = resourceEncoder;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m11908do(@NonNull Class<?> cls) {
            return this.f10301do.isAssignableFrom(cls);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized <Z> void m11905do(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        this.f10300do.add(new Cdo<>(cls, resourceEncoder));
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized <Z> void m11906for(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        this.f10300do.add(0, new Cdo<>(cls, resourceEncoder));
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public synchronized <Z> ResourceEncoder<Z> m11907if(@NonNull Class<Z> cls) {
        int size = this.f10300do.size();
        for (int i = 0; i < size; i++) {
            Cdo<?> cdo = this.f10300do.get(i);
            if (cdo.m11908do(cls)) {
                return (ResourceEncoder<Z>) cdo.f10302if;
            }
        }
        return null;
    }
}
