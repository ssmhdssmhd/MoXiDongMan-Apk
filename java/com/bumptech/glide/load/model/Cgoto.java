package com.bumptech.glide.load.model;

import android.support.v4.cf1;
import android.support.v4.f81;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Ccase;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.model.goto, reason: invalid class name */
/* loaded from: classes.dex */
public class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private final List<Cif<?, ?>> f10015do;

    /* renamed from: for, reason: not valid java name */
    private final Set<Cif<?, ?>> f10016for;

    /* renamed from: if, reason: not valid java name */
    private final Cfor f10017if;

    /* renamed from: new, reason: not valid java name */
    private final Pools.Pool<List<Throwable>> f10018new;

    /* renamed from: try, reason: not valid java name */
    private static final Cfor f10014try = new Cfor();

    /* renamed from: case, reason: not valid java name */
    private static final ModelLoader<Object, Object> f10013case = new Cdo();

    /* renamed from: com.bumptech.glide.load.model.goto$do, reason: invalid class name */
    public static class Cdo implements ModelLoader<Object, Object> {
        @Override // com.bumptech.glide.load.model.ModelLoader
        @Nullable
        public ModelLoader.Cdo<Object> buildLoadData(@NonNull Object obj, int i, int i2, @NonNull f81 f81Var) {
            return null;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public boolean handles(@NonNull Object obj) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.model.goto$for, reason: invalid class name */
    public static class Cfor {
        @NonNull
        /* renamed from: do, reason: not valid java name */
        public <Model, Data> Celse<Model, Data> m11654do(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new Celse<>(list, pool);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.goto$if, reason: invalid class name */
    public static class Cif<Model, Data> {

        /* renamed from: do, reason: not valid java name */
        private final Class<Model> f10019do;

        /* renamed from: for, reason: not valid java name */
        public final ModelLoaderFactory<? extends Model, ? extends Data> f10020for;

        /* renamed from: if, reason: not valid java name */
        public final Class<Data> f10021if;

        public Cif(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
            this.f10019do = cls;
            this.f10021if = cls2;
            this.f10020for = modelLoaderFactory;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m11655do(@NonNull Class<?> cls) {
            return this.f10019do.isAssignableFrom(cls);
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m11656if(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return m11655do(cls) && this.f10021if.isAssignableFrom(cls2);
        }
    }

    public Cgoto(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f10014try);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    private static <Model, Data> ModelLoader<Model, Data> m11643case() {
        return (ModelLoader<Model, Data>) f10013case;
    }

    /* renamed from: do, reason: not valid java name */
    private <Model, Data> void m11644do(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory, boolean z) {
        Cif<?, ?> cif = new Cif<>(cls, cls2, modelLoaderFactory);
        List<Cif<?, ?>> list = this.f10015do;
        list.add(z ? list.size() : 0, cif);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private <Model, Data> ModelLoader<Model, Data> m11645for(@NonNull Cif<?, ?> cif) {
        return (ModelLoader) cf1.m900new(cif.f10020for.build(this));
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private <Model, Data> ModelLoaderFactory<Model, Data> m11646goto(@NonNull Cif<?, ?> cif) {
        return (ModelLoaderFactory<Model, Data>) cif.f10020for;
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public synchronized <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> m11647break(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<Cif<?, ?>> it = this.f10015do.iterator();
        while (it.hasNext()) {
            Cif<?, ?> next = it.next();
            if (next.m11656if(cls, cls2)) {
                it.remove();
                arrayList.add(m11646goto(next));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public synchronized <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> m11648catch(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        List<ModelLoaderFactory<? extends Model, ? extends Data>> listM11647break;
        listM11647break = m11647break(cls, cls2);
        m11650if(cls, cls2, modelLoaderFactory);
        return listM11647break;
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public synchronized List<Class<?>> m11649else(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Cif<?, ?> cif : this.f10015do) {
            if (!arrayList.contains(cif.f10021if) && cif.m11655do(cls)) {
                arrayList.add(cif.f10021if);
            }
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized <Model, Data> void m11650if(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m11644do(cls, cls2, modelLoaderFactory, true);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public synchronized <Model, Data> ModelLoader<Model, Data> m11651new(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Cif<?, ?> cif : this.f10015do) {
                if (this.f10016for.contains(cif)) {
                    z = true;
                } else if (cif.m11656if(cls, cls2)) {
                    this.f10016for.add(cif);
                    arrayList.add(m11645for(cif));
                    this.f10016for.remove(cif);
                }
            }
            if (arrayList.size() > 1) {
                return this.f10017if.m11654do(arrayList, this.f10018new);
            }
            if (arrayList.size() == 1) {
                return (ModelLoader) arrayList.get(0);
            }
            if (!z) {
                throw new Ccase.Cfor((Class<?>) cls, (Class<?>) cls2);
            }
            return m11643case();
        } catch (Throwable th) {
            this.f10016for.clear();
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized <Model, Data> void m11652this(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m11644do(cls, cls2, modelLoaderFactory, false);
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public synchronized <Model> List<ModelLoader<Model, ?>> m11653try(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Cif<?, ?> cif : this.f10015do) {
                if (!this.f10016for.contains(cif) && cif.m11655do(cls)) {
                    this.f10016for.add(cif);
                    arrayList.add(m11645for(cif));
                    this.f10016for.remove(cif);
                }
            }
        } catch (Throwable th) {
            this.f10016for.clear();
            throw th;
        }
        return arrayList;
    }

    @VisibleForTesting
    public Cgoto(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull Cfor cfor) {
        this.f10015do = new ArrayList();
        this.f10016for = new HashSet();
        this.f10018new = pool;
        this.f10017if = cfor;
    }
}
