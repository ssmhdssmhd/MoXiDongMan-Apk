package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class g01 {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<u01> f2030do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final ArrayMap<u01, List<Class<?>>> f2031if = new ArrayMap<>();

    /* renamed from: do, reason: not valid java name */
    public void m2499do() {
        synchronized (this.f2031if) {
            this.f2031if.clear();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m2500for(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f2031if) {
            this.f2031if.put(new u01(cls, cls2, cls3), list);
        }
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public List<Class<?>> m2501if(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        u01 andSet = this.f2030do.getAndSet(null);
        if (andSet == null) {
            andSet = new u01(cls, cls2, cls3);
        } else {
            andSet.m8181if(cls, cls2, cls3);
        }
        synchronized (this.f2031if) {
            list = this.f2031if.get(andSet);
        }
        this.f2030do.set(andSet);
        return list;
    }
}
