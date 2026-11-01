package com.bumptech.glide.load.model;

import android.support.v4.f81;
import android.support.v4.s51;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;

/* renamed from: com.bumptech.glide.load.model.catch, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccatch<Model> implements ModelLoader<Model, Model> {

    /* renamed from: do, reason: not valid java name */
    private static final Ccatch<?> f9988do = new Ccatch<>();

    /* renamed from: com.bumptech.glide.load.model.catch$do, reason: invalid class name */
    public static class Cdo<Model> implements ModelLoaderFactory<Model, Model> {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo<?> f9989do = new Cdo<>();

        @Deprecated
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public static <T> Cdo<T> m11626do() {
            return (Cdo<T>) f9989do;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Model, Model> build(Cgoto cgoto) {
            return Ccatch.m11625do();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.catch$if, reason: invalid class name */
    public static class Cif<Model> implements DataFetcher<Model> {

        /* renamed from: do, reason: not valid java name */
        private final Model f9990do;

        public Cif(Model model) {
            this.f9990do = model;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Model> getDataClass() {
            return (Class<Model>) this.f9990do.getClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super Model> dataCallback) {
            dataCallback.onDataReady(this.f9990do);
        }
    }

    @Deprecated
    public Ccatch() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Ccatch<T> m11625do() {
        return (Ccatch<T>) f9988do;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.Cdo<Model> buildLoadData(@NonNull Model model, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(model), new Cif(model));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull Model model) {
        return true;
    }
}
