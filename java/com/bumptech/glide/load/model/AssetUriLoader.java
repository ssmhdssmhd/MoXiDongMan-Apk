package com.bumptech.glide.load.model;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.support.v4.s51;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.Ccase;
import com.bumptech.glide.load.data.Ccatch;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;

/* loaded from: classes.dex */
public class AssetUriLoader<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: for, reason: not valid java name */
    private static final String f9949for = "android_asset";

    /* renamed from: new, reason: not valid java name */
    private static final String f9950new = "file:///android_asset/";

    /* renamed from: try, reason: not valid java name */
    private static final int f9951try = 22;

    /* renamed from: do, reason: not valid java name */
    private final AssetManager f9952do;

    /* renamed from: if, reason: not valid java name */
    private final AssetFetcherFactory<Data> f9953if;

    public interface AssetFetcherFactory<Data> {
        DataFetcher<Data> buildFetcher(AssetManager assetManager, String str);
    }

    /* renamed from: com.bumptech.glide.load.model.AssetUriLoader$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, AssetFetcherFactory<ParcelFileDescriptor> {

        /* renamed from: do, reason: not valid java name */
        private final AssetManager f9954do;

        public Cdo(AssetManager assetManager) {
            this.f9954do = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, ParcelFileDescriptor> build(Cgoto cgoto) {
            return new AssetUriLoader(this.f9954do, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public DataFetcher<ParcelFileDescriptor> buildFetcher(AssetManager assetManager, String str) {
            return new Ccase(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.AssetUriLoader$if, reason: invalid class name */
    public static class Cif implements ModelLoaderFactory<Uri, InputStream>, AssetFetcherFactory<InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final AssetManager f9955do;

        public Cif(AssetManager assetManager) {
            this.f9955do = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new AssetUriLoader(this.f9955do, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public DataFetcher<InputStream> buildFetcher(AssetManager assetManager, String str) {
            return new Ccatch(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public AssetUriLoader(AssetManager assetManager, AssetFetcherFactory<Data> assetFetcherFactory) {
        this.f9952do = assetManager;
        this.f9953if = assetFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(uri), this.f9953if.buildFetcher(this.f9952do, uri.toString().substring(f9951try)));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && f9949for.equals(uri.getPathSegments().get(0));
    }
}
