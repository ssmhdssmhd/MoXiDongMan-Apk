package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import android.support.v4.f81;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class DecodePath<DataType, ResourceType, Transcode> {

    /* renamed from: case, reason: not valid java name */
    private static final String f9607case = "DecodePath";

    /* renamed from: do, reason: not valid java name */
    private final Class<DataType> f9608do;

    /* renamed from: for, reason: not valid java name */
    private final ResourceTranscoder<ResourceType, Transcode> f9609for;

    /* renamed from: if, reason: not valid java name */
    private final List<? extends ResourceDecoder<DataType, ResourceType>> f9610if;

    /* renamed from: new, reason: not valid java name */
    private final Pools.Pool<List<Throwable>> f9611new;

    /* renamed from: try, reason: not valid java name */
    private final String f9612try;

    public interface DecodeCallback<ResourceType> {
        @NonNull
        Resource<ResourceType> onResourceDecoded(@NonNull Resource<ResourceType> resource);
    }

    public DecodePath(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends ResourceDecoder<DataType, ResourceType>> list, ResourceTranscoder<ResourceType, Transcode> resourceTranscoder, Pools.Pool<List<Throwable>> pool) {
        this.f9608do = cls;
        this.f9610if = list;
        this.f9609for = resourceTranscoder;
        this.f9611new = pool;
        this.f9612try = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private Resource<ResourceType> m11353for(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull f81 f81Var, List<Throwable> list) throws Ccatch {
        int size = this.f9610if.size();
        Resource<ResourceType> resourceDecode = null;
        for (int i3 = 0; i3 < size; i3++) {
            ResourceDecoder<DataType, ResourceType> resourceDecoder = this.f9610if.get(i3);
            try {
                if (resourceDecoder.handles(dataRewinder.rewindAndGet(), f81Var)) {
                    resourceDecode = resourceDecoder.decode(dataRewinder.rewindAndGet(), i, i2, f81Var);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable(f9607case, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to decode data for ");
                    sb.append(resourceDecoder);
                }
                list.add(e);
            }
            if (resourceDecode != null) {
                break;
            }
        }
        if (resourceDecode != null) {
            return resourceDecode;
        }
        throw new Ccatch(this.f9612try, new ArrayList(list));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private Resource<ResourceType> m11354if(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull f81 f81Var) throws Ccatch {
        List<Throwable> list = (List) cf1.m900new(this.f9611new.acquire());
        try {
            return m11353for(dataRewinder, i, i2, f81Var, list);
        } finally {
            this.f9611new.release(list);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Resource<Transcode> m11355do(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull f81 f81Var, DecodeCallback<ResourceType> decodeCallback) throws Ccatch {
        return this.f9609for.transcode(decodeCallback.onResourceDecoded(m11354if(dataRewinder, i, i2, f81Var)), f81Var);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f9608do + ", decoders=" + this.f9610if + ", transcoder=" + this.f9609for + MessageFormatter.DELIM_STOP;
    }
}
