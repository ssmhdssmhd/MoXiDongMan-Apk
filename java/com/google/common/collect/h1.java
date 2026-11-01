package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.fs0;
import android.support.v4.hf2;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.collect.b1;
import com.google.common.collect.b3;
import com.google.common.collect.g1;
import com.google.common.collect.m1;
import com.google.common.collect.x0;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class h1<K, V> extends b1<K, V> implements SetMultimap<K, V> {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: case, reason: not valid java name */
    private final transient g1<V> f14310case;

    /* renamed from: else, reason: not valid java name */
    @bo1
    @fs0
    @l01
    private transient h1<V, K> f14311else;

    /* renamed from: goto, reason: not valid java name */
    @bo1
    @fs0
    @l01
    private transient g1<Map.Entry<K, V>> f14312goto;

    /* renamed from: com.google.common.collect.h1$do, reason: invalid class name */
    public static final class Cdo<K, V> extends b1.Cfor<K, V> {
        @Override // com.google.common.collect.b1.Cfor
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public h1<K, V> mo15546do() {
            Collection collectionEntrySet = this.f14090do.entrySet();
            Comparator<? super K> comparator = this.f14092if;
            if (comparator != null) {
                collectionEntrySet = k2.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return h1.fromMapEntries(collectionEntrySet, this.f14091for);
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
        /* renamed from: for */
        public Collection<V> mo15548for() {
            return l2.m15993goto();
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
            return mo15543break(k, Arrays.asList(vArr));
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
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                mo15543break(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    @li0
    /* renamed from: com.google.common.collect.h1$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final b3.Cif<h1> f14313do = b3.m15607do(h1.class, "emptySet");

        private Cfor() {
        }
    }

    /* renamed from: com.google.common.collect.h1$if, reason: invalid class name */
    public static final class Cif<K, V> extends g1<Map.Entry<K, V>> {

        /* renamed from: try, reason: not valid java name */
        @hf2
        private final transient h1<K, V> f14314try;

        public Cif(h1<K, V> h1Var) {
            this.f14314try = h1Var;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f14314try.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14314try.size();
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<Map.Entry<K, V>> iterator() {
            return this.f14314try.entryIterator();
        }
    }

    public h1(x0<K, g1<V>> x0Var, int i, @b51 Comparator<? super V> comparator) {
        super(x0Var, i);
        this.f14310case = m15821if(comparator);
    }

    public static <K, V> Cdo<K, V> builder() {
        return new Cdo<>();
    }

    public static <K, V> h1<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        return m15819do(multimap, null);
    }

    /* renamed from: do, reason: not valid java name */
    private static <K, V> h1<K, V> m15819do(Multimap<? extends K, ? extends V> multimap, Comparator<? super V> comparator) {
        af1.m205continue(multimap);
        if (multimap.isEmpty() && comparator == null) {
            return of();
        }
        if (multimap instanceof h1) {
            h1<K, V> h1Var = (h1) multimap;
            if (!h1Var.isPartialView()) {
                return h1Var;
            }
        }
        return fromMapEntries(multimap.asMap().entrySet(), comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    private h1<V, K> m15820for() {
        Cdo cdoBuilder = builder();
        ac2 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            cdoBuilder.mo15544case(entry.getValue(), entry.getKey());
        }
        h1<V, K> h1VarMo15546do = cdoBuilder.mo15546do();
        h1VarMo15546do.f14311else = this;
        return h1VarMo15546do;
    }

    public static <K, V> h1<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @b51 Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        x0.Cif cif = new x0.Cif(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            g1 g1VarM15822new = m15822new(comparator, entry.getValue());
            if (!g1VarM15822new.isEmpty()) {
                cif.mo15869new(key, g1VarM15822new);
                size += g1VarM15822new.size();
            }
        }
        return new h1<>(cif.mo15865do(), size, comparator);
    }

    /* renamed from: if, reason: not valid java name */
    private static <V> g1<V> m15821if(@b51 Comparator<? super V> comparator) {
        return comparator == null ? g1.of() : m1.emptySet(comparator);
    }

    /* renamed from: new, reason: not valid java name */
    private static <V> g1<V> m15822new(@b51 Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? g1.copyOf((Collection) collection) : m1.copyOf((Comparator) comparator, (Collection) collection);
    }

    public static <K, V> h1<K, V> of() {
        return i.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, ClassNotFoundException, IOException, IllegalArgumentException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
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
            g1.Cdo cdoM15823try = m15823try(comparator);
            for (int i5 = 0; i5 < i4; i5++) {
                cdoM15823try.mo15812else(objectInputStream.readObject());
            }
            g1 g1VarMo15642try = cdoM15823try.mo15642try();
            if (g1VarMo15642try.size() != i4) {
                throw new InvalidObjectException("Duplicate key-value pairs exist for key " + object);
            }
            cifBuilder.mo15869new(object, g1VarMo15642try);
            i2 += i4;
        }
        try {
            b1.Ctry.f14097do.m15616if(this, cifBuilder.mo15865do());
            b1.Ctry.f14098if.m15615do(this, i2);
            Cfor.f14313do.m15616if(this, m15821if(comparator));
        } catch (IllegalArgumentException e) {
            throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static <V> g1.Cdo<V> m15823try(@b51 Comparator<? super V> comparator) {
        return comparator == null ? new g1.Cdo<>() : new m1.Cdo(comparator);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        b3.m15604break(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ r0 get(@b51 Object obj) {
        return get((h1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ r0 replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h1<K, V>) obj, iterable);
    }

    @b51
    public Comparator<? super V> valueComparator() {
        g1<V> g1Var = this.f14310case;
        if (g1Var instanceof m1) {
            return ((m1) g1Var).comparator();
        }
        return null;
    }

    @o8
    public static <K, V> h1<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new Cdo().mo15552this(iterable).mo15546do();
    }

    public static <K, V> h1<K, V> of(K k, V v) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        return cdoBuilder.mo15546do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((h1<K, V>) obj);
    }

    @Override // com.google.common.collect.b1
    public h1<V, K> inverse() {
        h1<V, K> h1Var = this.f14311else;
        if (h1Var != null) {
            return h1Var;
        }
        h1<V, K> h1VarM15820for = m15820for();
        this.f14311else = h1VarM15820for;
        return h1VarM15820for;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h1<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return get((h1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public g1<Map.Entry<K, V>> entries() {
        g1<Map.Entry<K, V>> g1Var = this.f14312goto;
        if (g1Var != null) {
            return g1Var;
        }
        Cif cif = new Cif(this);
        this.f14312goto = cif;
        return cif;
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    public g1<V> get(@b51 K k) {
        return (g1) Csuper.m15183do((g1) this.map.get(k), this.f14310case);
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public g1<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.b1, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public g1<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> h1<K, V> of(K k, V v, K k2, V v2) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        return cdoBuilder.mo15546do();
    }

    public static <K, V> h1<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        return cdoBuilder.mo15546do();
    }

    public static <K, V> h1<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        cdoBuilder.mo15544case(k4, v4);
        return cdoBuilder.mo15546do();
    }

    public static <K, V> h1<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        Cdo cdoBuilder = builder();
        cdoBuilder.mo15544case(k, v);
        cdoBuilder.mo15544case(k2, v2);
        cdoBuilder.mo15544case(k3, v3);
        cdoBuilder.mo15544case(k4, v4);
        cdoBuilder.mo15544case(k5, v5);
        return cdoBuilder.mo15546do();
    }
}
