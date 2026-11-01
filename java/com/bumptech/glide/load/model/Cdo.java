package com.bumptech.glide.load.model;

import android.support.v4.f81;
import android.support.v4.s51;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.model.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo implements ModelLoader<File, ByteBuffer> {

    /* renamed from: do, reason: not valid java name */
    private static final String f9993do = "ByteBufferFileLoader";

    /* renamed from: com.bumptech.glide.load.model.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0034do implements DataFetcher<ByteBuffer> {

        /* renamed from: do, reason: not valid java name */
        private final File f9994do;

        public C0034do(File file) {
            this.f9994do = file;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super ByteBuffer> dataCallback) {
            try {
                dataCallback.onDataReady(com.bumptech.glide.util.Cdo.m12062do(this.f9994do));
            } catch (IOException e) {
                Log.isLoggable(Cdo.f9993do, 3);
                dataCallback.onLoadFailed(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.model.do$if, reason: invalid class name */
    public static class Cif implements ModelLoaderFactory<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<File, ByteBuffer> build(@NonNull Cgoto cgoto) {
            return new Cdo();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<ByteBuffer> buildLoadData(@NonNull File file, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(file), new C0034do(file));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull File file) {
        return true;
    }
}
