package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.support.v4.s51;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.Cclass;
import com.bumptech.glide.load.data.Celse;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class UriLoader<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: if, reason: not valid java name */
    private static final Set<String> f9978if = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: do, reason: not valid java name */
    private final LocalUriFetcherFactory<Data> f9979do;

    public interface LocalUriFetcherFactory<Data> {
        DataFetcher<Data> build(Uri uri);
    }

    /* renamed from: com.bumptech.glide.load.model.UriLoader$do, reason: invalid class name */
    public static final class Cdo implements ModelLoaderFactory<Uri, AssetFileDescriptor>, LocalUriFetcherFactory<AssetFileDescriptor> {

        /* renamed from: do, reason: not valid java name */
        private final ContentResolver f9980do;

        public Cdo(ContentResolver contentResolver) {
            this.f9980do = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, AssetFileDescriptor> build(Cgoto cgoto) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<AssetFileDescriptor> build(Uri uri) {
            return new com.bumptech.glide.load.data.Cdo(this.f9980do, uri);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.UriLoader$for, reason: invalid class name */
    public static class Cfor implements ModelLoaderFactory<Uri, InputStream>, LocalUriFetcherFactory<InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final ContentResolver f9981do;

        public Cfor(ContentResolver contentResolver) {
            this.f9981do = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<InputStream> build(Uri uri) {
            return new Cclass(this.f9981do, uri);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new UriLoader(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.UriLoader$if, reason: invalid class name */
    public static class Cif implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, LocalUriFetcherFactory<ParcelFileDescriptor> {

        /* renamed from: do, reason: not valid java name */
        private final ContentResolver f9982do;

        public Cif(ContentResolver contentResolver) {
            this.f9982do = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public DataFetcher<ParcelFileDescriptor> build(Uri uri) {
            return new Celse(this.f9982do, uri);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, ParcelFileDescriptor> build(Cgoto cgoto) {
            return new UriLoader(this);
        }
    }

    public UriLoader(LocalUriFetcherFactory<Data> localUriFetcherFactory) {
        this.f9979do = localUriFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(uri), this.f9979do.build(uri));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return f9978if.contains(uri.getScheme());
    }
}
