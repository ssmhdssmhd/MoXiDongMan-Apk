package com.bumptech.glide.load.data;

import android.support.v4.cf1;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.data.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew {

    /* renamed from: if, reason: not valid java name */
    private static final DataRewinder.Factory<?> f9535if = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final Map<Class<?>, DataRewinder.Factory<?>> f9536do = new HashMap();

    /* renamed from: com.bumptech.glide.load.data.new$do, reason: invalid class name */
    public class Cdo implements DataRewinder.Factory<Object> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public DataRewinder<Object> build(@NonNull Object obj) {
            return new Cif(obj);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<Object> getDataClass() {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    /* renamed from: com.bumptech.glide.load.data.new$if, reason: invalid class name */
    public static final class Cif implements DataRewinder<Object> {

        /* renamed from: do, reason: not valid java name */
        private final Object f9537do;

        public Cif(@NonNull Object obj) {
            this.f9537do = obj;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        @NonNull
        public Object rewindAndGet() {
            return this.f9537do;
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public synchronized <T> DataRewinder<T> m11308do(@NonNull T t) {
        DataRewinder.Factory<?> factory;
        cf1.m900new(t);
        factory = this.f9536do.get(t.getClass());
        if (factory == null) {
            Iterator<DataRewinder.Factory<?>> it = this.f9536do.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DataRewinder.Factory<?> next = it.next();
                if (next.getDataClass().isAssignableFrom(t.getClass())) {
                    factory = next;
                    break;
                }
            }
        }
        if (factory == null) {
            factory = f9535if;
        }
        return (DataRewinder<T>) factory.build(t);
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized void m11309if(@NonNull DataRewinder.Factory<?> factory) {
        this.f9536do.put(factory.getDataClass(), factory);
    }
}
