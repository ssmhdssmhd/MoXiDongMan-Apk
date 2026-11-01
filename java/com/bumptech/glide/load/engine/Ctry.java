package com.bumptech.glide.load.engine;

import android.support.v4.f81;
import android.support.v4.wb2;
import com.bumptech.glide.Ccase;
import com.bumptech.glide.Cfor;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.engine.try, reason: invalid class name */
/* loaded from: classes.dex */
final class Ctry<Transcode> {

    /* renamed from: break, reason: not valid java name */
    private Map<Class<?>, Transformation<?>> f9926break;

    /* renamed from: case, reason: not valid java name */
    private int f9927case;

    /* renamed from: catch, reason: not valid java name */
    private Class<Transcode> f9928catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f9929class;

    /* renamed from: const, reason: not valid java name */
    private boolean f9930const;

    /* renamed from: else, reason: not valid java name */
    private Class<?> f9932else;

    /* renamed from: final, reason: not valid java name */
    private Key f9933final;

    /* renamed from: for, reason: not valid java name */
    private Cfor f9934for;

    /* renamed from: goto, reason: not valid java name */
    private DecodeJob.DiskCacheProvider f9935goto;

    /* renamed from: import, reason: not valid java name */
    private boolean f9937import;

    /* renamed from: new, reason: not valid java name */
    private Object f9938new;

    /* renamed from: super, reason: not valid java name */
    private com.bumptech.glide.Ctry f9939super;

    /* renamed from: this, reason: not valid java name */
    private f81 f9940this;

    /* renamed from: throw, reason: not valid java name */
    private Ccase f9941throw;

    /* renamed from: try, reason: not valid java name */
    private int f9942try;

    /* renamed from: while, reason: not valid java name */
    private boolean f9943while;

    /* renamed from: do, reason: not valid java name */
    private final List<ModelLoader.Cdo<?>> f9931do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private final List<Key> f9936if = new ArrayList();

    /* renamed from: break, reason: not valid java name */
    public List<ModelLoader<File, ?>> m11567break(File file) throws Ccase.Cfor {
        return this.f9934for.m11171goto().m11092this(file);
    }

    /* renamed from: case, reason: not valid java name */
    public int m11568case() {
        return this.f9927case;
    }

    /* renamed from: catch, reason: not valid java name */
    public f81 m11569catch() {
        return this.f9940this;
    }

    /* renamed from: class, reason: not valid java name */
    public com.bumptech.glide.Ctry m11570class() {
        return this.f9939super;
    }

    /* renamed from: const, reason: not valid java name */
    public List<Class<?>> m11571const() {
        return this.f9934for.m11171goto().m11072break(this.f9938new.getClass(), this.f9932else, this.f9928catch);
    }

    /* renamed from: do, reason: not valid java name */
    public void m11572do() {
        this.f9934for = null;
        this.f9938new = null;
        this.f9933final = null;
        this.f9932else = null;
        this.f9928catch = null;
        this.f9940this = null;
        this.f9939super = null;
        this.f9926break = null;
        this.f9941throw = null;
        this.f9931do.clear();
        this.f9929class = false;
        this.f9936if.clear();
        this.f9930const = false;
    }

    /* renamed from: else, reason: not valid java name */
    public List<ModelLoader.Cdo<?>> m11573else() {
        if (!this.f9929class) {
            this.f9929class = true;
            this.f9931do.clear();
            List listM11092this = this.f9934for.m11171goto().m11092this(this.f9938new);
            int size = listM11092this.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.Cdo<?> cdoBuildLoadData = ((ModelLoader) listM11092this.get(i)).buildLoadData(this.f9938new, this.f9942try, this.f9927case, this.f9940this);
                if (cdoBuildLoadData != null) {
                    this.f9931do.add(cdoBuildLoadData);
                }
            }
        }
        return this.f9931do;
    }

    /* renamed from: final, reason: not valid java name */
    public <Z> ResourceEncoder<Z> m11574final(Resource<Z> resource) {
        return this.f9934for.m11171goto().m11073catch(resource);
    }

    /* renamed from: for, reason: not valid java name */
    public List<Key> m11575for() {
        if (!this.f9930const) {
            this.f9930const = true;
            this.f9936if.clear();
            List<ModelLoader.Cdo<?>> listM11573else = m11573else();
            int size = listM11573else.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.Cdo<?> cdo = listM11573else.get(i);
                if (!this.f9936if.contains(cdo.f9975do)) {
                    this.f9936if.add(cdo.f9975do);
                }
                for (int i2 = 0; i2 < cdo.f9977if.size(); i2++) {
                    if (!this.f9936if.contains(cdo.f9977if.get(i2))) {
                        this.f9936if.add(cdo.f9977if.get(i2));
                    }
                }
            }
        }
        return this.f9936if;
    }

    /* renamed from: goto, reason: not valid java name */
    public <Data> Cconst<Data, ?, Transcode> m11576goto(Class<Data> cls) {
        return this.f9934for.m11171goto().m11082goto(cls, this.f9932else, this.f9928catch);
    }

    /* renamed from: if, reason: not valid java name */
    public ArrayPool m11577if() {
        return this.f9934for.m11172if();
    }

    /* renamed from: import, reason: not valid java name */
    public <Z> Transformation<Z> m11578import(Class<Z> cls) {
        Transformation<Z> transformation = (Transformation) this.f9926break.get(cls);
        if (transformation == null) {
            Iterator<Map.Entry<Class<?>, Transformation<?>>> it = this.f9926break.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, Transformation<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    transformation = (Transformation) next.getValue();
                    break;
                }
            }
        }
        if (transformation != null) {
            return transformation;
        }
        if (!this.f9926break.isEmpty() || !this.f9943while) {
            return wb2.m9118do();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* renamed from: native, reason: not valid java name */
    public int m11579native() {
        return this.f9942try;
    }

    /* renamed from: new, reason: not valid java name */
    public DiskCache m11580new() {
        return this.f9935goto.getDiskCache();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    public boolean m11581public(Class<?> cls) {
        return m11576goto(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: return, reason: not valid java name */
    public <R> void m11582return(Cfor cfor, Object obj, Key key, int i, int i2, Ccase ccase, Class<?> cls, Class<R> cls2, com.bumptech.glide.Ctry ctry, f81 f81Var, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, DecodeJob.DiskCacheProvider diskCacheProvider) {
        this.f9934for = cfor;
        this.f9938new = obj;
        this.f9933final = key;
        this.f9942try = i;
        this.f9927case = i2;
        this.f9941throw = ccase;
        this.f9932else = cls;
        this.f9935goto = diskCacheProvider;
        this.f9928catch = cls2;
        this.f9939super = ctry;
        this.f9940this = f81Var;
        this.f9926break = map;
        this.f9943while = z;
        this.f9937import = z2;
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m11583static(Resource<?> resource) {
        return this.f9934for.m11171goto().m11080final(resource);
    }

    /* renamed from: super, reason: not valid java name */
    public Key m11584super() {
        return this.f9933final;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m11585switch() {
        return this.f9937import;
    }

    /* renamed from: this, reason: not valid java name */
    public Class<?> m11586this() {
        return this.f9938new.getClass();
    }

    /* renamed from: throw, reason: not valid java name */
    public <X> Encoder<X> m11587throw(X x) throws Ccase.Ctry {
        return this.f9934for.m11171goto().m11075const(x);
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m11588throws(Key key) {
        List<ModelLoader.Cdo<?>> listM11573else = m11573else();
        int size = listM11573else.size();
        for (int i = 0; i < size; i++) {
            if (listM11573else.get(i).f9975do.equals(key)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m11589try() {
        return this.f9941throw;
    }

    /* renamed from: while, reason: not valid java name */
    public Class<?> m11590while() {
        return this.f9928catch;
    }
}
