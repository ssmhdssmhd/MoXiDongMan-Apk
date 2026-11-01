package com.bumptech.glide.load.engine;

import android.support.v4.sv0;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.Collections;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.import, reason: invalid class name */
/* loaded from: classes.dex */
class Cimport implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {

    /* renamed from: goto, reason: not valid java name */
    private static final String f9853goto = "SourceGenerator";

    /* renamed from: case, reason: not valid java name */
    private volatile ModelLoader.Cdo<?> f9854case;

    /* renamed from: do, reason: not valid java name */
    private final Ctry<?> f9855do;

    /* renamed from: else, reason: not valid java name */
    private Cfor f9856else;

    /* renamed from: for, reason: not valid java name */
    private int f9857for;

    /* renamed from: if, reason: not valid java name */
    private final DataFetcherGenerator.FetcherReadyCallback f9858if;

    /* renamed from: new, reason: not valid java name */
    private Cif f9859new;

    /* renamed from: try, reason: not valid java name */
    private Object f9860try;

    /* renamed from: com.bumptech.glide.load.engine.import$do, reason: invalid class name */
    public class Cdo implements DataFetcher.DataCallback<Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ModelLoader.Cdo f9861do;

        public Cdo(ModelLoader.Cdo cdo) {
            this.f9861do = cdo;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onDataReady(@Nullable Object obj) {
            if (Cimport.this.m11542for(this.f9861do)) {
                Cimport.this.m11543new(this.f9861do, obj);
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onLoadFailed(@NonNull Exception exc) {
            if (Cimport.this.m11542for(this.f9861do)) {
                Cimport.this.m11544try(this.f9861do, exc);
            }
        }
    }

    public Cimport(Ctry<?> ctry, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f9855do = ctry;
        this.f9858if = fetcherReadyCallback;
    }

    /* renamed from: case, reason: not valid java name */
    private void m11539case(ModelLoader.Cdo<?> cdo) {
        this.f9854case.f9976for.loadData(this.f9855do.m11570class(), new Cdo(cdo));
    }

    /* renamed from: do, reason: not valid java name */
    private void m11540do(Object obj) {
        long jM7613if = sv0.m7613if();
        try {
            Encoder<X> encoderM11587throw = this.f9855do.m11587throw(obj);
            Cnew cnew = new Cnew(encoderM11587throw, obj, this.f9855do.m11569catch());
            this.f9856else = new Cfor(this.f9854case.f9975do, this.f9855do.m11584super());
            this.f9855do.m11580new().put(this.f9856else, cnew);
            if (Log.isLoggable(f9853goto, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Finished encoding source to cache, key: ");
                sb.append(this.f9856else);
                sb.append(", data: ");
                sb.append(obj);
                sb.append(", encoder: ");
                sb.append(encoderM11587throw);
                sb.append(", duration: ");
                sb.append(sv0.m7612do(jM7613if));
            }
            this.f9854case.f9976for.cleanup();
            this.f9859new = new Cif(Collections.singletonList(this.f9854case.f9975do), this.f9855do, this);
        } catch (Throwable th) {
            this.f9854case.f9976for.cleanup();
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m11541if() {
        return this.f9857for < this.f9855do.m11573else().size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.Cdo<?> cdo = this.f9854case;
        if (cdo != null) {
            cdo.f9976for.cancel();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m11542for(ModelLoader.Cdo<?> cdo) {
        ModelLoader.Cdo<?> cdo2 = this.f9854case;
        return cdo2 != null && cdo2 == cdo;
    }

    /* renamed from: new, reason: not valid java name */
    public void m11543new(ModelLoader.Cdo<?> cdo, Object obj) {
        Ccase ccaseM11589try = this.f9855do.m11589try();
        if (obj != null && ccaseM11589try.mo11456for(cdo.f9976for.getDataSource())) {
            this.f9860try = obj;
            this.f9858if.reschedule();
        } else {
            DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f9858if;
            Key key = cdo.f9975do;
            DataFetcher<?> dataFetcher = cdo.f9976for;
            fetcherReadyCallback.onDataFetcherReady(key, obj, dataFetcher, dataFetcher.getDataSource(), this.f9856else);
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, com.bumptech.glide.load.Cdo cdo) {
        this.f9858if.onDataFetcherFailed(key, exc, dataFetcher, this.f9854case.f9976for.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, com.bumptech.glide.load.Cdo cdo, Key key2) {
        this.f9858if.onDataFetcherReady(key, obj, dataFetcher, this.f9854case.f9976for.getDataSource(), key);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public boolean startNext() {
        Object obj = this.f9860try;
        if (obj != null) {
            this.f9860try = null;
            m11540do(obj);
        }
        Cif cif = this.f9859new;
        if (cif != null && cif.startNext()) {
            return true;
        }
        this.f9859new = null;
        this.f9854case = null;
        boolean z = false;
        while (!z && m11541if()) {
            List<ModelLoader.Cdo<?>> listM11573else = this.f9855do.m11573else();
            int i = this.f9857for;
            this.f9857for = i + 1;
            this.f9854case = listM11573else.get(i);
            if (this.f9854case != null && (this.f9855do.m11589try().mo11456for(this.f9854case.f9976for.getDataSource()) || this.f9855do.m11581public(this.f9854case.f9976for.getDataClass()))) {
                m11539case(this.f9854case);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public void m11544try(ModelLoader.Cdo<?> cdo, @NonNull Exception exc) {
        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f9858if;
        Cfor cfor = this.f9856else;
        DataFetcher<?> dataFetcher = cdo.f9976for;
        fetcherReadyCallback.onDataFetcherFailed(cfor, exc, dataFetcher, dataFetcher.getDataSource());
    }
}
