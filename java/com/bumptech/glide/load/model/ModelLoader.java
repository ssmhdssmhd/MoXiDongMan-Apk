package com.bumptech.glide.load.model;

import android.support.v4.cf1;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public interface ModelLoader<Model, Data> {

    /* renamed from: com.bumptech.glide.load.model.ModelLoader$do, reason: invalid class name */
    public static class Cdo<Data> {

        /* renamed from: do, reason: not valid java name */
        public final Key f9975do;

        /* renamed from: for, reason: not valid java name */
        public final DataFetcher<Data> f9976for;

        /* renamed from: if, reason: not valid java name */
        public final List<Key> f9977if;

        public Cdo(@NonNull Key key, @NonNull DataFetcher<Data> dataFetcher) {
            this(key, Collections.emptyList(), dataFetcher);
        }

        public Cdo(@NonNull Key key, @NonNull List<Key> list, @NonNull DataFetcher<Data> dataFetcher) {
            this.f9975do = (Key) cf1.m900new(key);
            this.f9977if = (List) cf1.m900new(list);
            this.f9976for = (DataFetcher) cf1.m900new(dataFetcher);
        }
    }

    @Nullable
    Cdo<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull f81 f81Var);

    boolean handles(@NonNull Model model);
}
