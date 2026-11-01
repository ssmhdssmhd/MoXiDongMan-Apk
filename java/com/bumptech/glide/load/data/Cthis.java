package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.data.this, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cthis<T> implements DataFetcher<T> {

    /* renamed from: new, reason: not valid java name */
    private static final String f9538new = "LocalUriFetcher";

    /* renamed from: do, reason: not valid java name */
    private final Uri f9539do;

    /* renamed from: for, reason: not valid java name */
    private T f9540for;

    /* renamed from: if, reason: not valid java name */
    private final ContentResolver f9541if;

    public Cthis(ContentResolver contentResolver, Uri uri) {
        this.f9541if = contentResolver;
        this.f9539do = uri;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t = this.f9540for;
        if (t != null) {
            try {
                mo11283do(t);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: do */
    public abstract void mo11283do(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Cdo getDataSource() {
        return Cdo.LOCAL;
    }

    /* renamed from: if */
    public abstract T mo11285if(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void loadData(@NonNull Ctry ctry, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tMo11285if = mo11285if(this.f9539do, this.f9541if);
            this.f9540for = tMo11285if;
            dataCallback.onDataReady(tMo11285if);
        } catch (FileNotFoundException e) {
            Log.isLoggable(f9538new, 3);
            dataCallback.onLoadFailed(e);
        }
    }
}
