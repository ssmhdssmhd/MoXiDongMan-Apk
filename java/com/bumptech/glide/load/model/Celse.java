package com.bumptech.glide.load.model;

import android.support.v4.cf1;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.model.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: do, reason: not valid java name */
    private final List<ModelLoader<Model, Data>> f9995do;

    /* renamed from: if, reason: not valid java name */
    private final Pools.Pool<List<Throwable>> f9996if;

    /* renamed from: com.bumptech.glide.load.model.else$do, reason: invalid class name */
    public static class Cdo<Data> implements DataFetcher<Data>, DataFetcher.DataCallback<Data> {

        /* renamed from: case, reason: not valid java name */
        @Nullable
        private List<Throwable> f9997case;

        /* renamed from: do, reason: not valid java name */
        private final List<DataFetcher<Data>> f9998do;

        /* renamed from: else, reason: not valid java name */
        private boolean f9999else;

        /* renamed from: for, reason: not valid java name */
        private int f10000for;

        /* renamed from: if, reason: not valid java name */
        private final Pools.Pool<List<Throwable>> f10001if;

        /* renamed from: new, reason: not valid java name */
        private Ctry f10002new;

        /* renamed from: try, reason: not valid java name */
        private DataFetcher.DataCallback<? super Data> f10003try;

        public Cdo(@NonNull List<DataFetcher<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f10001if = pool;
            cf1.m898for(list);
            this.f9998do = list;
            this.f10000for = 0;
        }

        /* renamed from: do, reason: not valid java name */
        private void m11631do() {
            if (this.f9999else) {
                return;
            }
            if (this.f10000for < this.f9998do.size() - 1) {
                this.f10000for++;
                loadData(this.f10002new, this.f10003try);
            } else {
                cf1.m900new(this.f9997case);
                this.f10003try.onLoadFailed(new Ccatch("Fetch failed", new ArrayList(this.f9997case)));
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f9999else = true;
            Iterator<DataFetcher<Data>> it = this.f9998do.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            List<Throwable> list = this.f9997case;
            if (list != null) {
                this.f10001if.release(list);
            }
            this.f9997case = null;
            Iterator<DataFetcher<Data>> it = this.f9998do.iterator();
            while (it.hasNext()) {
                it.next().cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f9998do.get(0).getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public com.bumptech.glide.load.Cdo getDataSource() {
            return this.f9998do.get(0).getDataSource();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            this.f10002new = ctry;
            this.f10003try = dataCallback;
            this.f9997case = this.f10001if.acquire();
            this.f9998do.get(this.f10000for).loadData(ctry, this);
            if (this.f9999else) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onDataReady(@Nullable Data data) {
            if (data != null) {
                this.f10003try.onDataReady(data);
            } else {
                m11631do();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onLoadFailed(@NonNull Exception exc) {
            ((List) cf1.m900new(this.f9997case)).add(exc);
            m11631do();
        }
    }

    public Celse(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f9995do = list;
        this.f9996if = pool;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.Cdo<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull f81 f81Var) {
        ModelLoader.Cdo<Data> cdoBuildLoadData;
        int size = this.f9995do.size();
        ArrayList arrayList = new ArrayList(size);
        Key key = null;
        for (int i3 = 0; i3 < size; i3++) {
            ModelLoader<Model, Data> modelLoader = this.f9995do.get(i3);
            if (modelLoader.handles(model) && (cdoBuildLoadData = modelLoader.buildLoadData(model, i, i2, f81Var)) != null) {
                key = cdoBuildLoadData.f9975do;
                arrayList.add(cdoBuildLoadData.f9976for);
            }
        }
        if (arrayList.isEmpty() || key == null) {
            return null;
        }
        return new ModelLoader.Cdo<>(key, new Cdo(arrayList, this.f9996if));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull Model model) {
        Iterator<ModelLoader<Model, Data>> it = this.f9995do.iterator();
        while (it.hasNext()) {
            if (it.next().handles(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f9995do.toArray()) + MessageFormatter.DELIM_STOP;
    }
}
