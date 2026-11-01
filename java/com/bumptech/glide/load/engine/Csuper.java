package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.super, reason: invalid class name */
/* loaded from: classes.dex */
class Csuper implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: break, reason: not valid java name */
    private Cthrow f9898break;

    /* renamed from: case, reason: not valid java name */
    private List<ModelLoader<File, ?>> f9899case;

    /* renamed from: do, reason: not valid java name */
    private final DataFetcherGenerator.FetcherReadyCallback f9900do;

    /* renamed from: else, reason: not valid java name */
    private int f9901else;

    /* renamed from: for, reason: not valid java name */
    private int f9902for;

    /* renamed from: goto, reason: not valid java name */
    private volatile ModelLoader.Cdo<?> f9903goto;

    /* renamed from: if, reason: not valid java name */
    private final Ctry<?> f9904if;

    /* renamed from: new, reason: not valid java name */
    private int f9905new = -1;

    /* renamed from: this, reason: not valid java name */
    private File f9906this;

    /* renamed from: try, reason: not valid java name */
    private Key f9907try;

    public Csuper(Ctry<?> ctry, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f9904if = ctry;
        this.f9900do = fetcherReadyCallback;
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m11565do() {
        return this.f9901else < this.f9899case.size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.Cdo<?> cdo = this.f9903goto;
        if (cdo != null) {
            cdo.f9976for.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onDataReady(Object obj) {
        this.f9900do.onDataFetcherReady(this.f9907try, obj, this.f9903goto.f9976for, Cdo.RESOURCE_DISK_CACHE, this.f9898break);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onLoadFailed(@NonNull Exception exc) {
        this.f9900do.onDataFetcherFailed(this.f9898break, exc, this.f9903goto.f9976for, Cdo.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public boolean startNext() {
        List<Key> listM11575for = this.f9904if.m11575for();
        boolean z = false;
        if (listM11575for.isEmpty()) {
            return false;
        }
        List<Class<?>> listM11571const = this.f9904if.m11571const();
        if (listM11571const.isEmpty()) {
            if (File.class.equals(this.f9904if.m11590while())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f9904if.m11586this() + " to " + this.f9904if.m11590while());
        }
        while (true) {
            if (this.f9899case != null && m11565do()) {
                this.f9903goto = null;
                while (!z && m11565do()) {
                    List<ModelLoader<File, ?>> list = this.f9899case;
                    int i = this.f9901else;
                    this.f9901else = i + 1;
                    this.f9903goto = list.get(i).buildLoadData(this.f9906this, this.f9904if.m11579native(), this.f9904if.m11568case(), this.f9904if.m11569catch());
                    if (this.f9903goto != null && this.f9904if.m11581public(this.f9903goto.f9976for.getDataClass())) {
                        this.f9903goto.f9976for.loadData(this.f9904if.m11570class(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f9905new + 1;
            this.f9905new = i2;
            if (i2 >= listM11571const.size()) {
                int i3 = this.f9902for + 1;
                this.f9902for = i3;
                if (i3 >= listM11575for.size()) {
                    return false;
                }
                this.f9905new = 0;
            }
            Key key = listM11575for.get(this.f9902for);
            Class<?> cls = listM11571const.get(this.f9905new);
            this.f9898break = new Cthrow(this.f9904if.m11577if(), key, this.f9904if.m11584super(), this.f9904if.m11579native(), this.f9904if.m11568case(), this.f9904if.m11578import(cls), cls, this.f9904if.m11569catch());
            File file = this.f9904if.m11580new().get(this.f9898break);
            this.f9906this = file;
            if (file != null) {
                this.f9907try = key;
                this.f9899case = this.f9904if.m11567break(file);
                this.f9901else = 0;
            }
        }
    }
}
