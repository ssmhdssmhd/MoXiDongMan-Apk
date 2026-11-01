package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.provider.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final List<C0041do<?>> f10297do = new ArrayList();

    /* renamed from: com.bumptech.glide.provider.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0041do<T> {

        /* renamed from: do, reason: not valid java name */
        private final Class<T> f10298do;

        /* renamed from: if, reason: not valid java name */
        public final Encoder<T> f10299if;

        public C0041do(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
            this.f10298do = cls;
            this.f10299if = encoder;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m11904do(@NonNull Class<?> cls) {
            return this.f10298do.isAssignableFrom(cls);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized <T> void m11901do(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        this.f10297do.add(new C0041do<>(cls, encoder));
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized <T> void m11902for(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        this.f10297do.add(0, new C0041do<>(cls, encoder));
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public synchronized <T> Encoder<T> m11903if(@NonNull Class<T> cls) {
        for (C0041do<?> c0041do : this.f10297do) {
            if (c0041do.m11904do(cls)) {
                return (Encoder<T>) c0041do.f10299if;
            }
        }
        return null;
    }
}
