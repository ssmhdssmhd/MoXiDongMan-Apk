package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;

/* loaded from: classes.dex */
interface DataFetcherGenerator {

    public interface FetcherReadyCallback {
        void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, Cdo cdo);

        void onDataFetcherReady(Key key, @Nullable Object obj, DataFetcher<?> dataFetcher, Cdo cdo, Key key2);

        void reschedule();
    }

    void cancel();

    boolean startNext();
}
