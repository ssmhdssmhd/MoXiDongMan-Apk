package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.provider.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private final List<String> f10303do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private final Map<String, List<Cdo<?, ?>>> f10304if = new HashMap();

    /* renamed from: com.bumptech.glide.provider.if$do, reason: invalid class name */
    public static class Cdo<T, R> {

        /* renamed from: do, reason: not valid java name */
        private final Class<T> f10305do;

        /* renamed from: for, reason: not valid java name */
        public final ResourceDecoder<T, R> f10306for;

        /* renamed from: if, reason: not valid java name */
        public final Class<R> f10307if;

        public Cdo(@NonNull Class<T> cls, @NonNull Class<R> cls2, ResourceDecoder<T, R> resourceDecoder) {
            this.f10305do = cls;
            this.f10307if = cls2;
            this.f10306for = resourceDecoder;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m11915do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f10305do.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f10307if);
        }
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private synchronized List<Cdo<?, ?>> m11909for(@NonNull String str) {
        List<Cdo<?, ?>> arrayList;
        if (!this.f10303do.contains(str)) {
            this.f10303do.add(str);
        }
        arrayList = this.f10304if.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f10304if.put(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public synchronized void m11910case(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f10303do);
        this.f10303do.clear();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.f10303do.add(it.next());
        }
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f10303do.add(str);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized <T, R> void m11911do(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m11909for(str).add(new Cdo<>(cls, cls2, resourceDecoder));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public synchronized <T, R> List<ResourceDecoder<T, R>> m11912if(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f10303do.iterator();
        while (it.hasNext()) {
            List<Cdo<?, ?>> list = this.f10304if.get(it.next());
            if (list != null) {
                for (Cdo<?, ?> cdo : list) {
                    if (cdo.m11915do(cls, cls2)) {
                        arrayList.add(cdo.f10306for);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public synchronized <T, R> List<Class<R>> m11913new(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f10303do.iterator();
        while (it.hasNext()) {
            List<Cdo<?, ?>> list = this.f10304if.get(it.next());
            if (list != null) {
                for (Cdo<?, ?> cdo : list) {
                    if (cdo.m11915do(cls, cls2) && !arrayList.contains(cdo.f10307if)) {
                        arrayList.add(cdo.f10307if);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized <T, R> void m11914try(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m11909for(str).add(0, new Cdo<>(cls, cls2, resourceDecoder));
    }
}
