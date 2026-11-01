package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.f81;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import org.jsoup.nodes.Attributes;

/* renamed from: com.bumptech.glide.load.model.this, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthis<Data> implements ModelLoader<Integer, Data> {

    /* renamed from: for, reason: not valid java name */
    private static final String f10052for = "ResourceLoader";

    /* renamed from: do, reason: not valid java name */
    private final ModelLoader<Uri, Data> f10053do;

    /* renamed from: if, reason: not valid java name */
    private final Resources f10054if;

    /* renamed from: com.bumptech.glide.load.model.this$do, reason: invalid class name */
    public static final class Cdo implements ModelLoaderFactory<Integer, AssetFileDescriptor> {

        /* renamed from: do, reason: not valid java name */
        private final Resources f10055do;

        public Cdo(Resources resources) {
            this.f10055do = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Integer, AssetFileDescriptor> build(Cgoto cgoto) {
            return new Cthis(this.f10055do, cgoto.m11651new(Uri.class, AssetFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.this$for, reason: invalid class name */
    public static class Cfor implements ModelLoaderFactory<Integer, InputStream> {

        /* renamed from: do, reason: not valid java name */
        private final Resources f10056do;

        public Cfor(Resources resources) {
            this.f10056do = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, InputStream> build(Cgoto cgoto) {
            return new Cthis(this.f10056do, cgoto.m11651new(Uri.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.this$if, reason: invalid class name */
    public static class Cif implements ModelLoaderFactory<Integer, ParcelFileDescriptor> {

        /* renamed from: do, reason: not valid java name */
        private final Resources f10057do;

        public Cif(Resources resources) {
            this.f10057do = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, ParcelFileDescriptor> build(Cgoto cgoto) {
            return new Cthis(this.f10057do, cgoto.m11651new(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.this$new, reason: invalid class name */
    public static class Cnew implements ModelLoaderFactory<Integer, Uri> {

        /* renamed from: do, reason: not valid java name */
        private final Resources f10058do;

        public Cnew(Resources resources) {
            this.f10058do = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<Integer, Uri> build(Cgoto cgoto) {
            return new Cthis(this.f10058do, Ccatch.m11625do());
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public Cthis(Resources resources, ModelLoader<Uri, Data> modelLoader) {
        this.f10054if = resources;
        this.f10053do = modelLoader;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private Uri m11672if(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f10054if.getResourcePackageName(num.intValue()) + Attributes.InternalPrefix + this.f10054if.getResourceTypeName(num.intValue()) + Attributes.InternalPrefix + this.f10054if.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException unused) {
            if (!Log.isLoggable(f10052for, 5)) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Received invalid resource id: ");
            sb.append(num);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Integer num, int i, int i2, @NonNull f81 f81Var) {
        Uri uriM11672if = m11672if(num);
        if (uriM11672if == null) {
            return null;
        }
        return this.f10053do.buildLoadData(uriM11672if, i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Integer num) {
        return true;
    }
}
