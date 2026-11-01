package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.Ccatch;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto implements DataRewinder<InputStream> {

    /* renamed from: if, reason: not valid java name */
    private static final int f9511if = 5242880;

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f9512do;

    /* renamed from: com.bumptech.glide.load.data.goto$do, reason: invalid class name */
    public static final class Cdo implements DataRewinder.Factory<InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final ArrayPool f9513do;

        public Cdo(ArrayPool arrayPool) {
            this.f9513do = arrayPool;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public DataRewinder<InputStream> build(InputStream inputStream) {
            return new Cgoto(inputStream, this.f9513do);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<InputStream> getDataClass() {
            return InputStream.class;
        }
    }

    public Cgoto(InputStream inputStream, ArrayPool arrayPool) {
        Ccatch ccatch = new Ccatch(inputStream, arrayPool);
        this.f9512do = ccatch;
        ccatch.mark(f9511if);
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void cleanup() {
        this.f9512do.m11759for();
    }

    /* renamed from: do, reason: not valid java name */
    public void m11294do() {
        this.f9512do.m11760if();
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public InputStream rewindAndGet() throws IOException {
        this.f9512do.reset();
        return this.f9512do;
    }
}
