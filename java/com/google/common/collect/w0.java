package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.collect.b1;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class w0<K, V> extends b1<K, V> implements ListMultimap<K, V> {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: case, reason: not valid java name */
    @bo1
    @fs0
    private transient w0<V, K> f14799case;

    /* renamed from: com.google.common.collect.w0$do, reason: invalid class name */
    public static final class Cdo<K, V> extends b1.Cfor<K, V> {
        @Override // com.google.common.collect.b1.Cfor
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public w0<K, V> mo15546do() {
            return (w0) super.mo15546do();
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15551new(Comparator<? super K> comparator) {
            super.mo15551new(comparator);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15553try(Comparator<? super V> comparator) {
            super.mo15553try(comparator);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        @o8
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15552this(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo15552this(iterable);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15543break(K k, Iterable<? extends V> iterable) {
            super.mo15543break(k, iterable);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15545catch(K k, V... vArr) {
            super.mo15545catch(k, vArr);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15544case(K k, V v) {
            super.mo15544case(k, v);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15547else(Map.Entry<? extends K, ? extends V> entry) {
            super.mo15547else(entry);
            return this;
        }

        @Override // com.google.common.collect.b1.Cfor
        @lf
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15549goto(Multimap<? extends K, ? extends V> multimap) {
            super.mo15549goto(multimap);
            return this;
        }
    }

    public w0(x0<K, v0<V>> x0Var, int i) {
        super(x0Var, i);
    }

    public static <K, V> Cdo<K, V> builder() {
        return new Cdo<>();
    }

    public static <K, V> w0<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap.isEmpty()) {
            return of();
        }
        if (multimap instanceof w0) {
            w0<K, V> w0Var = (w0) multimap;
            if (!w0Var.isPartialView()) {
                return w0Var;
            }
        }
        return fromMapEntries(multimap.asMap().entrySet(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    private w0<V, K> m16463do() {
        Cdo cdoBuilder = builder();
        ac2 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            cdoBuilder.mo15544case(entry.getValue(), entry.getKey());
        }
        w0<V, K> w0VarMo15546do = cdoBuilder.mo15546do();
        w0VarMo15546do.f14799case = this;
        return w0VarMo15546do;
    }

    public static <K, V> w0<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @b51 Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        x0.Cif cif = new x0.Cif(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            v0 v0VarCopyOf = comparator == null ? v0.copyOf((Collection) value) : v0.sortedCopyOf(comparator, value);
            if (!v0VarCopyOf.isEmpty()) {
                cif.mo15869new(key, v0VarCopyOf);
                size += v0VarCopyOf.size();
            }
        }
        return new w0<>(cif.mo15865do(), size);
    }

    public static <K, V> w0<K, V> of() {
        return h.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, ClassNotFoundException, IOException, IllegalArgumentException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid key count " + i);
        }
        x0.Cif cifBuilder = x0.builder();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object object = objectInputStream.readObject();
            int i4 = objectInputStream.readInt();
            if (i4 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i4);
            }
            v0.Cdo cdoBuilder = v0.builder();
            for (int i5 = 0; i5 < i4; i5++) {
                cdoBuilder.mo15635do(objectInputStream.readObject());
            }
            cifBuilder.mo15869new(object, cdoBuilder.mo15642try());
            i2 += i4;
        }
        try {
            b1.Ctry.f14097do.m15616if(this, cifBuilder.mo15865do());
            b1.Ctry.f14098if.m15615do(this, i2);
        } catch (IllegalArgumentException e) {
            throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
        }
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b3.m15604break(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ r0 get(@b51 Object obj) {
        return get((w0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ r0 replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w0<K, V>) obj, iterable);
    }

    public static <K, V> w0<K, V> of(K k, V v) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        return cdoBuilder.mo15546do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((w0<K, V>) obj);
    }

    @Override // com.google.common.collect.b1
    public w0<V, K> inverse() {
        w0<V, K> w0Var = this.f14799case;
        if (w0Var != null) {
            return w0Var;
        }
        w0<V, K> w0VarM16463do = m16463do();
        this.f14799case = w0VarM16463do;
        return w0VarM16463do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ List get(@b51 Object obj) {
        return get((w0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ List replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public v0<V> get(@b51 K k) {
        v0<V> v0Var = (v0) this.map.get(k);
        return v0Var == null ? v0.of() : v0Var;
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public v0<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public v0<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> w0<K, V> of(K k, V v, K k2, V v2) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        return cdoBuilder.mo15546do();
    }

    @o8
    public static <K, V> w0<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new Cdo().mo15552this(iterable).mo15546do();
    }

    public static <K, V> w0<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        return cdoBuilder.mo15546do();
    }

    public static <K, V> w0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        cdoBuilder.mo15544case(k4, v4);
        return cdoBuilder.mo15546do();
    }

    public static <K, V> w0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        cdoBuilder.mo15544case(k4, v4);
        cdoBuilder.mo15544case(k5, v5);
        return cdoBuilder.mo15546do();
    }
}
