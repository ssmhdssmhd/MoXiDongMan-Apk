package com.bumptech.glide.load.model;

import android.net.Uri;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.model.class, reason: invalid class name */
/* loaded from: classes.dex */
public class Cclass<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: if, reason: not valid java name */
    private static final Set<String> f9991if = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Cif, Data> f9992do;

    /* renamed from: com.bumptech.glide.load.model.class$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Uri, InputStream> build(Cgoto cgoto) {
            return new Cclass(cgoto.m11651new(Cif.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public Cclass(ModelLoader<Cif, Data> modelLoader) {
        this.f9992do = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        return this.f9992do.buildLoadData(new Cif(uri.toString()), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri) {
        return f9991if.contains(uri.getScheme());
    }
}
