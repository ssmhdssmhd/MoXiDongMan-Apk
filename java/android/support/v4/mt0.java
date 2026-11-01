package android.support.v4;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.Cconst;
import com.bumptech.glide.load.engine.DecodePath;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class mt0 {

    /* renamed from: for, reason: not valid java name */
    private static final Cconst<?, ?, ?> f4025for = new Cconst<>(Object.class, Object.class, Object.class, Collections.singletonList(new DecodePath(Object.class, Object.class, Object.class, Collections.emptyList(), new vb2(), null)), null);

    /* renamed from: do, reason: not valid java name */
    private final ArrayMap<u01, Cconst<?, ?, ?>> f4026do = new ArrayMap<>();

    /* renamed from: if, reason: not valid java name */
    private final AtomicReference<u01> f4027if = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private u01 m4997if(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        u01 andSet = this.f4027if.getAndSet(null);
        if (andSet == null) {
            andSet = new u01();
        }
        andSet.m8181if(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public <Data, TResource, Transcode> Cconst<Data, TResource, Transcode> m4998do(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        Cconst<Data, TResource, Transcode> cconst;
        u01 u01VarM4997if = m4997if(cls, cls2, cls3);
        synchronized (this.f4026do) {
            cconst = (Cconst) this.f4026do.get(u01VarM4997if);
        }
        this.f4027if.set(u01VarM4997if);
        return cconst;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m4999for(@Nullable Cconst<?, ?, ?> cconst) {
        return f4025for.equals(cconst);
    }

    /* renamed from: new, reason: not valid java name */
    public void m5000new(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable Cconst<?, ?, ?> cconst) {
        synchronized (this.f4026do) {
            ArrayMap<u01, Cconst<?, ?, ?>> arrayMap = this.f4026do;
            u01 u01Var = new u01(cls, cls2, cls3);
            if (cconst == null) {
                cconst = f4025for;
            }
            arrayMap.put(u01Var, cconst);
        }
    }
}
