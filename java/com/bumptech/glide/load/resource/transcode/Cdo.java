package com.bumptech.glide.load.resource.transcode;

import android.support.v4.vb2;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.resource.transcode.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final List<C0040do<?, ?>> f10250do = new ArrayList();

    /* renamed from: com.bumptech.glide.load.resource.transcode.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0040do<Z, R> {

        /* renamed from: do, reason: not valid java name */
        private final Class<Z> f10251do;

        /* renamed from: for, reason: not valid java name */
        public final ResourceTranscoder<Z, R> f10252for;

        /* renamed from: if, reason: not valid java name */
        private final Class<R> f10253if;

        public C0040do(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
            this.f10251do = cls;
            this.f10253if = cls2;
            this.f10252for = resourceTranscoder;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m11848do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f10251do.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f10253if);
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public synchronized <Z, R> ResourceTranscoder<Z, R> m11845do(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return vb2.m8823do();
        }
        for (C0040do<?, ?> c0040do : this.f10250do) {
            if (c0040do.m11848do(cls, cls2)) {
                return (ResourceTranscoder<Z, R>) c0040do.f10252for;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized <Z, R> void m11846for(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
        this.f10250do.add(new C0040do<>(cls, cls2, resourceTranscoder));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public synchronized <Z, R> List<Class<R>> m11847if(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<C0040do<?, ?>> it = this.f10250do.iterator();
        while (it.hasNext()) {
            if (it.next().m11848do(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }
}
