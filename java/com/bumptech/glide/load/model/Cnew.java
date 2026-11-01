package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.f81;
import android.support.v4.lz0;
import android.support.v4.s51;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.FileNotFoundException;

/* renamed from: com.bumptech.glide.load.model.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements ModelLoader<Uri, File> {

    /* renamed from: do, reason: not valid java name */
    private final Context f10030do;

    /* renamed from: com.bumptech.glide.load.model.new$do, reason: invalid class name */
    public static final class Cdo implements ModelLoaderFactory<Uri, File> {

        /* renamed from: do, reason: not valid java name */
        private final Context f10031do;

        public Cdo(Context context) {
            this.f10031do = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, File> build(Cgoto cgoto) {
            return new Cnew(this.f10031do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.new$if, reason: invalid class name */
    public static class Cif implements DataFetcher<File> {

        /* renamed from: for, reason: not valid java name */
        private static final String[] f10032for = {"_data"};

        /* renamed from: do, reason: not valid java name */
        private final Context f10033do;

        /* renamed from: if, reason: not valid java name */
        private final Uri f10034if;

        public Cif(Context context, Uri uri) {
            this.f10033do = context;
            this.f10034if = uri;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<File> getDataClass() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return com.bumptech.glide.load.Cdo.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super File> dataCallback) {
            Cursor cursorQuery = this.f10033do.getContentResolver().query(this.f10034if, f10032for, null, null, null);
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    cursorQuery.close();
                }
            }
            if (!TextUtils.isEmpty(string)) {
                dataCallback.onDataReady(new File(string));
                return;
            }
            dataCallback.onLoadFailed(new FileNotFoundException("Failed to find file path for: " + this.f10034if));
        }
    }

    public Cnew(Context context) {
        this.f10030do = context;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<File> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(new s51(uri), new Cif(this.f10030do, uri));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return lz0.m4809if(uri);
    }
}
