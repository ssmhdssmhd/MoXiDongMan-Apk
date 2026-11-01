package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: case, reason: not valid java name */
    private List<ModelLoader<File, ?>> f9844case;

    /* renamed from: do, reason: not valid java name */
    private final List<Key> f9845do;

    /* renamed from: else, reason: not valid java name */
    private int f9846else;

    /* renamed from: for, reason: not valid java name */
    private final DataFetcherGenerator.FetcherReadyCallback f9847for;

    /* renamed from: goto, reason: not valid java name */
    private volatile ModelLoader.Cdo<?> f9848goto;

    /* renamed from: if, reason: not valid java name */
    private final Ctry<?> f9849if;

    /* renamed from: new, reason: not valid java name */
    private int f9850new;

    /* renamed from: this, reason: not valid java name */
    private File f9851this;

    /* renamed from: try, reason: not valid java name */
    private Key f9852try;

    public Cif(Ctry<?> ctry, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this(ctry.m11575for(), ctry, fetcherReadyCallback);
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m11538do() {
        return this.f9846else < this.f9844case.size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.Cdo<?> cdo = this.f9848goto;
        if (cdo != null) {
            cdo.f9976for.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onDataReady(Object obj) {
        this.f9847for.onDataFetcherReady(this.f9852try, obj, this.f9848goto.f9976for, Cdo.DATA_DISK_CACHE, this.f9852try);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onLoadFailed(@NonNull Exception exc) {
        this.f9847for.onDataFetcherFailed(this.f9852try, exc, this.f9848goto.f9976for, Cdo.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public boolean startNext() {
        while (true) {
            boolean z = false;
            if (this.f9844case != null && m11538do()) {
                this.f9848goto = null;
                while (!z && m11538do()) {
                    List<ModelLoader<File, ?>> list = this.f9844case;
                    int i = this.f9846else;
                    this.f9846else = i + 1;
                    this.f9848goto = list.get(i).buildLoadData(this.f9851this, this.f9849if.m11579native(), this.f9849if.m11568case(), this.f9849if.m11569catch());
                    if (this.f9848goto != null && this.f9849if.m11581public(this.f9848goto.f9976for.getDataClass())) {
                        this.f9848goto.f9976for.loadData(this.f9849if.m11570class(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f9850new + 1;
            this.f9850new = i2;
            if (i2 >= this.f9845do.size()) {
                return false;
            }
            Key key = this.f9845do.get(this.f9850new);
            File file = this.f9849if.m11580new().get(new Cfor(key, this.f9849if.m11584super()));
            this.f9851this = file;
            if (file != null) {
                this.f9852try = key;
                this.f9844case = this.f9849if.m11567break(file);
                this.f9846else = 0;
            }
        }
    }

    public Cif(List<Key> list, Ctry<?> ctry, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f9850new = -1;
        this.f9845do = list;
        this.f9849if = ctry;
        this.f9847for = fetcherReadyCallback;
    }
}
