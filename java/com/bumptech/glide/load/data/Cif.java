package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.data.if, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cif<T> implements DataFetcher<T> {

    /* renamed from: new, reason: not valid java name */
    private static final String f9514new = "AssetPathFetcher";

    /* renamed from: do, reason: not valid java name */
    private final String f9515do;

    /* renamed from: for, reason: not valid java name */
    private T f9516for;

    /* renamed from: if, reason: not valid java name */
    private final AssetManager f9517if;

    public Cif(AssetManager assetManager, String str) {
        this.f9517if = assetManager;
        this.f9515do = str;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t = this.f9516for;
        if (t == null) {
            return;
        }
        try {
            mo11275do(t);
        } catch (IOException unused) {
        }
    }

    /* renamed from: do */
    public abstract void mo11275do(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Cdo getDataSource() {
        return Cdo.LOCAL;
    }

    /* renamed from: if */
    public abstract T mo11277if(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tMo11277if = mo11277if(this.f9517if, this.f9515do);
            this.f9516for = tMo11277if;
            dataCallback.onDataReady(tMo11277if);
        } catch (IOException e) {
            Log.isLoggable(f9514new, 3);
            dataCallback.onLoadFailed(e);
        }
    }
}
