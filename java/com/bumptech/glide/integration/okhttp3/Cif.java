package com.bumptech.glide.integration.okhttp3;

import android.support.v4.f81;
import android.support.v4.q61;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.Cgoto;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* renamed from: com.bumptech.glide.integration.okhttp3.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements ModelLoader<com.bumptech.glide.load.model.Cif, InputStream> {

    /* renamed from: do, reason: not valid java name */
    private final Call.Factory f9472do;

    /* renamed from: com.bumptech.glide.integration.okhttp3.if$do, reason: invalid class name */
    public static class Cdo implements ModelLoaderFactory<com.bumptech.glide.load.model.Cif, InputStream> {

        /* renamed from: if, reason: not valid java name */
        private static volatile Call.Factory f9473if;

        /* renamed from: do, reason: not valid java name */
        private final Call.Factory f9474do;

        public Cdo() {
            this(m11251do());
        }

        /* renamed from: do, reason: not valid java name */
        private static Call.Factory m11251do() {
            if (f9473if == null) {
                synchronized (Cdo.class) {
                    if (f9473if == null) {
                        f9473if = new OkHttpClient();
                    }
                }
            }
            return f9473if;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public ModelLoader<com.bumptech.glide.load.model.Cif, InputStream> build(Cgoto cgoto) {
            return new Cif(this.f9474do);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }

        public Cdo(@NonNull Call.Factory factory) {
            this.f9474do = factory;
        }
    }

    public Cif(@NonNull Call.Factory factory) {
        this.f9472do = factory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public ModelLoader.Cdo<InputStream> buildLoadData(@NonNull com.bumptech.glide.load.model.Cif cif, int i, int i2, @NonNull f81 f81Var) {
        return new ModelLoader.Cdo<>(cif, new q61(this.f9472do, cif));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull com.bumptech.glide.load.model.Cif cif) {
        return true;
    }
}
