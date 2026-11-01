package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Cdo;

/* loaded from: classes.dex */
public interface DataFetcher<T> {

    public interface DataCallback<T> {
        void onDataReady(@Nullable T t);

        void onLoadFailed(@NonNull Exception exc);
    }

    void cancel();

    void cleanup();

    @NonNull
    Class<T> getDataClass();

    @NonNull
    Cdo getDataSource();

    void loadData(@NonNull Ctry ctry, @NonNull DataCallback<? super T> dataCallback);
}
