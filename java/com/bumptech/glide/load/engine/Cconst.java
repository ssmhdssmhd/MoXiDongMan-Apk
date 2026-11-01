package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DecodePath;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.const, reason: invalid class name */
/* loaded from: classes.dex */
public class Cconst<Data, ResourceType, Transcode> {

    /* renamed from: do, reason: not valid java name */
    private final Class<Data> f9746do;

    /* renamed from: for, reason: not valid java name */
    private final List<? extends DecodePath<Data, ResourceType, Transcode>> f9747for;

    /* renamed from: if, reason: not valid java name */
    private final Pools.Pool<List<Throwable>> f9748if;

    /* renamed from: new, reason: not valid java name */
    private final String f9749new;

    public Cconst(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<DecodePath<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f9746do = cls;
        this.f9748if = pool;
        this.f9747for = (List) cf1.m898for(list);
        this.f9749new = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: for, reason: not valid java name */
    private Resource<Transcode> m11470for(DataRewinder<Data> dataRewinder, @NonNull f81 f81Var, int i, int i2, DecodePath.DecodeCallback<ResourceType> decodeCallback, List<Throwable> list) throws Ccatch {
        int size = this.f9747for.size();
        Resource<Transcode> resourceM11355do = null;
        for (int i3 = 0; i3 < size; i3++) {
            try {
                resourceM11355do = this.f9747for.get(i3).m11355do(dataRewinder, i, i2, f81Var, decodeCallback);
            } catch (Ccatch e) {
                list.add(e);
            }
            if (resourceM11355do != null) {
                break;
            }
        }
        if (resourceM11355do != null) {
            return resourceM11355do;
        }
        throw new Ccatch(this.f9749new, new ArrayList(list));
    }

    /* renamed from: do, reason: not valid java name */
    public Class<Data> m11471do() {
        return this.f9746do;
    }

    /* renamed from: if, reason: not valid java name */
    public Resource<Transcode> m11472if(DataRewinder<Data> dataRewinder, @NonNull f81 f81Var, int i, int i2, DecodePath.DecodeCallback<ResourceType> decodeCallback) throws Ccatch {
        List<Throwable> list = (List) cf1.m900new(this.f9748if.acquire());
        try {
            return m11470for(dataRewinder, f81Var, i, i2, decodeCallback, list);
        } finally {
            this.f9748if.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f9747for.toArray()) + MessageFormatter.DELIM_STOP;
    }
}
