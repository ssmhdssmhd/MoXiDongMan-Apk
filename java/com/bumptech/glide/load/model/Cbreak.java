package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.model.break, reason: invalid class name */
/* loaded from: classes.dex */
public class Cbreak<Data> implements ModelLoader<String, Data> {

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Uri, Data> f9983do;

    /* renamed from: com.bumptech.glide.load.model.break$do, reason: invalid class name */
    public static final class Cdo implements ModelLoaderFactory<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<String, AssetFileDescriptor> build(@NonNull Cgoto cgoto) {
            return new Cbreak(cgoto.m11651new(Uri.class, AssetFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.break$for, reason: invalid class name */
    public static class Cfor implements ModelLoaderFactory<String, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<String, InputStream> build(@NonNull Cgoto cgoto) {
            return new Cbreak(cgoto.m11651new(Uri.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.break$if, reason: invalid class name */
    public static class Cif implements ModelLoaderFactory<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<String, ParcelFileDescriptor> build(@NonNull Cgoto cgoto) {
            return new Cbreak(cgoto.m11651new(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public Cbreak(ModelLoader<Uri, Data> modelLoader) {
        this.f9983do = modelLoader;
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private static Uri m11608for(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            return m11609new(str);
        }
        Uri uri = Uri.parse(str);
        return uri.getScheme() == null ? m11609new(str) : uri;
    }

    /* renamed from: new, reason: not valid java name */
    private static Uri m11609new(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull String str, int i, int i2, @NonNull f81 f81Var) {
        Uri uriM11608for = m11608for(str);
        if (uriM11608for == null || !this.f9983do.handles(uriM11608for)) {
            return null;
        }
        return this.f9983do.buildLoadData(uriM11608for, i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull String str) {
        return true;
    }
}
