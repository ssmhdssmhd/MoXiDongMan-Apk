package com.bumptech.glide.load.model;

import android.support.v4.f81;
import android.support.v4.s51;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteArrayLoader<Data> implements ModelLoader<byte[], Data> {

    /* renamed from: do, reason: not valid java name */
    private final Converter<Data> f9956do;

    public interface Converter<Data> {
        Data convert(byte[] bArr);

        Class<Data> getDataClass();
    }

    /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<byte[], ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$do$do, reason: invalid class name and collision with other inner class name */
        public class C0032do implements Converter<ByteBuffer> {
            public C0032do() {
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public ByteBuffer convert(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public Class<ByteBuffer> getDataClass() {
                return ByteBuffer.class;
            }
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<byte[], ByteBuffer> build(@NonNull Cgoto cgoto) {
            return new ByteArrayLoader(new C0032do());
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$for, reason: invalid class name */
    public static class Cfor implements ModelLoaderFactory<byte[], InputStream> {

        /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$for$do, reason: invalid class name */
        public class Cdo implements Converter<InputStream> {
            public Cdo() {
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public InputStream convert(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<byte[], InputStream> build(@NonNull Cgoto cgoto) {
            return new ByteArrayLoader(new Cdo());
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$if, reason: invalid class name */
    public static class Cif<Data> implements DataFetcher<Data> {

        /* renamed from: do, reason: not valid java name */
        private final byte[] f9959do;

        /* renamed from: if, reason: not valid java name */
        private final Converter<Data> f9960if;

        public Cif(byte[] bArr, Converter<Data> converter) {
            this.f9959do = bArr;
            this.f9960if = converter;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f9960if.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            dataCallback.onDataReady(this.f9960if.convert(this.f9959do));
        }
    }

    public ByteArrayLoader(Converter<Data> converter) {
        this.f9956do = converter;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull byte[] bArr, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(bArr), new Cif(bArr, this.f9956do));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull byte[] bArr) {
        return true;
    }
}
