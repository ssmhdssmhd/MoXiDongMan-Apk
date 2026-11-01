package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Ccase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.model.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f9984do;

    /* renamed from: if, reason: not valid java name */
    private final Cdo f9985if;

    /* renamed from: com.bumptech.glide.load.model.case$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Map<Class<?>, C0033do<?>> f9986do = new HashMap();

        /* renamed from: com.bumptech.glide.load.model.case$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0033do<Model> {

            /* renamed from: do, reason: not valid java name */
            public final List<ModelLoader<Model, ?>> f9987do;

            public C0033do(List<ModelLoader<Model, ?>> list) {
                this.f9987do = list;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m11622do() {
            this.f9986do.clear();
        }

        /* renamed from: for, reason: not valid java name */
        public <Model> void m11623for(Class<Model> cls, List<ModelLoader<Model, ?>> list) {
            if (this.f9986do.put(cls, new C0033do<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }

        @Nullable
        /* renamed from: if, reason: not valid java name */
        public <Model> List<ModelLoader<Model, ?>> m11624if(Class<Model> cls) {
            C0033do<?> c0033do = this.f9986do.get(cls);
            if (c0033do == null) {
                return null;
            }
            return (List<ModelLoader<Model, ?>>) c0033do.f9987do;
        }
    }

    public Ccase(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new Cgoto(pool));
    }

    /* renamed from: break, reason: not valid java name */
    private <Model, Data> void m11612break(@NonNull List<ModelLoaderFactory<? extends Model, ? extends Data>> list) {
        Iterator<ModelLoaderFactory<? extends Model, ? extends Data>> it = list.iterator();
        while (it.hasNext()) {
            it.next().teardown();
        }
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    private synchronized <A> List<ModelLoader<A, ?>> m11613case(@NonNull Class<A> cls) {
        List<ModelLoader<A, ?>> listM11624if;
        listM11624if = this.f9985if.m11624if(cls);
        if (listM11624if == null) {
            listM11624if = Collections.unmodifiableList(this.f9984do.m11653try(cls));
            this.f9985if.m11623for(cls, listM11624if);
        }
        return listM11624if;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private static <A> Class<A> m11614for(@NonNull A a) {
        return (Class<A>) a.getClass();
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized <Model, Data> void m11615do(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f9984do.m11650if(cls, cls2, modelLoaderFactory);
        this.f9985if.m11622do();
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized <Model, Data> void m11616else(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f9984do.m11652this(cls, cls2, modelLoaderFactory);
        this.f9985if.m11622do();
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized <Model, Data> void m11617goto(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        m11612break(this.f9984do.m11647break(cls, cls2));
        this.f9985if.m11622do();
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized <Model, Data> ModelLoader<Model, Data> m11618if(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.f9984do.m11651new(cls, cls2);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public synchronized List<Class<?>> m11619new(@NonNull Class<?> cls) {
        return this.f9984do.m11649else(cls);
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized <Model, Data> void m11620this(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m11612break(this.f9984do.m11648catch(cls, cls2, modelLoaderFactory));
        this.f9985if.m11622do();
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public <A> List<ModelLoader<A, ?>> m11621try(@NonNull A a) {
        List<ModelLoader<A, ?>> listM11613case = m11613case(m11614for(a));
        if (listM11613case.isEmpty()) {
            throw new Ccase.Cfor(a);
        }
        int size = listM11613case.size();
        List<ModelLoader<A, ?>> listEmptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            ModelLoader<A, ?> modelLoader = listM11613case.get(i);
            if (modelLoader.handles(a)) {
                if (z) {
                    listEmptyList = new ArrayList<>(size - i);
                    z = false;
                }
                listEmptyList.add(modelLoader);
            }
        }
        if (listEmptyList.isEmpty()) {
            throw new Ccase.Cfor(a, listM11613case);
        }
        return listEmptyList;
    }

    private Ccase(@NonNull Cgoto cgoto) {
        this.f9985if = new Cdo();
        this.f9984do = cgoto;
    }
}
