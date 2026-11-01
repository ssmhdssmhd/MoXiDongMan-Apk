package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import com.google.common.base.Function;
import com.google.common.collect.g3;
import com.google.common.collect.v0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

@li0
@o8
/* loaded from: classes2.dex */
public class e1<K extends Comparable<?>, V> implements RangeMap<K, V>, Serializable {

    /* renamed from: for, reason: not valid java name */
    private static final e1<Comparable<?>, Object> f14230for = new e1<>(v0.of(), v0.of());
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    private final transient v0<n2<K>> f14231do;

    /* renamed from: if, reason: not valid java name */
    private final transient v0<V> f14232if;

    /* renamed from: com.google.common.collect.e1$do, reason: invalid class name */
    public class Cdo extends v0<n2<K>> {
        public final /* synthetic */ int val$len;
        public final /* synthetic */ int val$off;
        public final /* synthetic */ n2 val$range;

        public Cdo(int i, int i2, n2 n2Var) {
            this.val$len = i;
            this.val$off = i2;
            this.val$range = n2Var;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.val$len;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public n2<K> get(int i) {
            af1.m222private(i, this.val$len);
            return (i == 0 || i == this.val$len + (-1)) ? ((n2) e1.this.f14231do.get(i + this.val$off)).intersection(this.val$range) : (n2) e1.this.f14231do.get(i + this.val$off);
        }
    }

    @v10
    /* renamed from: com.google.common.collect.e1$for, reason: invalid class name */
    public static final class Cfor<K extends Comparable<?>, V> {

        /* renamed from: do, reason: not valid java name */
        private final List<Map.Entry<n2<K>, V>> f14233do = x1.m16520while();

        /* renamed from: do, reason: not valid java name */
        public e1<K, V> m15758do() {
            Collections.sort(this.f14233do, n2.rangeLexOrdering().onKeys());
            v0.Cdo cdo = new v0.Cdo(this.f14233do.size());
            v0.Cdo cdo2 = new v0.Cdo(this.f14233do.size());
            for (int i = 0; i < this.f14233do.size(); i++) {
                n2<K> key = this.f14233do.get(i).getKey();
                if (i > 0) {
                    n2<K> key2 = this.f14233do.get(i - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + key2 + " overlaps with entry " + key);
                    }
                }
                cdo.mo15635do(key);
                cdo2.mo15635do(this.f14233do.get(i).getValue());
            }
            return new e1<>(cdo.mo15642try(), cdo2.mo15642try());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @lf
        /* renamed from: for, reason: not valid java name */
        public Cfor<K, V> m15759for(RangeMap<K, ? extends V> rangeMap) {
            for (Map.Entry entry : rangeMap.asMapOfRanges().entrySet()) {
                m15760if((n2) entry.getKey(), entry.getValue());
            }
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cfor<K, V> m15760if(n2<K> n2Var, V v) {
            af1.m205continue(n2Var);
            af1.m205continue(v);
            af1.m225return(!n2Var.isEmpty(), "Range must not be empty, but was %s", n2Var);
            this.f14233do.add(Maps.b(n2Var, v));
            return this;
        }
    }

    /* renamed from: com.google.common.collect.e1$if, reason: invalid class name */
    public class Cif extends e1<K, V> {
        public final /* synthetic */ e1 val$outer;
        public final /* synthetic */ n2 val$range;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(v0 v0Var, v0 v0Var2, n2 n2Var, e1 e1Var) {
            super(v0Var, v0Var2);
            this.val$range = n2Var;
            this.val$outer = e1Var;
        }

        @Override // com.google.common.collect.e1, com.google.common.collect.RangeMap
        public /* bridge */ /* synthetic */ Map asDescendingMapOfRanges() {
            return super.asDescendingMapOfRanges();
        }

        @Override // com.google.common.collect.e1, com.google.common.collect.RangeMap
        public /* bridge */ /* synthetic */ Map asMapOfRanges() {
            return super.asMapOfRanges();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.e1, com.google.common.collect.RangeMap
        public e1<K, V> subRangeMap(n2<K> n2Var) {
            return this.val$range.isConnected(n2Var) ? this.val$outer.subRangeMap((n2) n2Var.intersection(this.val$range)) : e1.of();
        }
    }

    /* renamed from: com.google.common.collect.e1$new, reason: invalid class name */
    public static class Cnew<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final x0<n2<K>, V> mapOfRanges;

        public Cnew(x0<n2<K>, V> x0Var) {
            this.mapOfRanges = x0Var;
        }

        public Object createRangeMap() {
            Cfor cfor = new Cfor();
            ac2<Map.Entry<n2<K>, V>> it = this.mapOfRanges.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<n2<K>, V> next = it.next();
                cfor.m15760if(next.getKey(), next.getValue());
            }
            return cfor.m15758do();
        }

        public Object readResolve() {
            return this.mapOfRanges.isEmpty() ? e1.of() : createRangeMap();
        }
    }

    public e1(v0<n2<K>> v0Var, v0<V> v0Var2) {
        this.f14231do = v0Var;
        this.f14232if = v0Var2;
    }

    public static <K extends Comparable<?>, V> Cfor<K, V> builder() {
        return new Cfor<>();
    }

    public static <K extends Comparable<?>, V> e1<K, V> copyOf(RangeMap<K, ? extends V> rangeMap) {
        if (rangeMap instanceof e1) {
            return (e1) rangeMap;
        }
        Map<n2<K>, ? extends V> mapAsMapOfRanges = rangeMap.asMapOfRanges();
        v0.Cdo cdo = new v0.Cdo(mapAsMapOfRanges.size());
        v0.Cdo cdo2 = new v0.Cdo(mapAsMapOfRanges.size());
        for (Map.Entry entry : mapAsMapOfRanges.entrySet()) {
            cdo.mo15635do(entry.getKey());
            cdo2.mo15635do(entry.getValue());
        }
        return new e1<>(cdo.mo15642try(), cdo2.mo15642try());
    }

    public static <K extends Comparable<?>, V> e1<K, V> of() {
        return (e1<K, V>) f14230for;
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@b51 Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeMap
    @b51
    public V get(K k) {
        int iM15815do = g3.m15815do(this.f14231do, n2.lowerBoundFn(), a.belowValue(k), g3.Cfor.ANY_PRESENT, g3.Cif.NEXT_LOWER);
        if (iM15815do != -1 && this.f14231do.get(iM15815do).contains(k)) {
            return this.f14232if.get(iM15815do);
        }
        return null;
    }

    @Override // com.google.common.collect.RangeMap
    @b51
    public Map.Entry<n2<K>, V> getEntry(K k) {
        int iM15815do = g3.m15815do(this.f14231do, n2.lowerBoundFn(), a.belowValue(k), g3.Cfor.ANY_PRESENT, g3.Cif.NEXT_LOWER);
        if (iM15815do == -1) {
            return null;
        }
        n2<K> n2Var = this.f14231do.get(iM15815do);
        if (n2Var.contains(k)) {
            return Maps.b(n2Var, this.f14232if.get(iM15815do));
        }
        return null;
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void put(n2<K> n2Var, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void putAll(RangeMap<K, V> rangeMap) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void putCoalescing(n2<K> n2Var, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void remove(n2<K> n2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    public n2<K> span() {
        if (this.f14231do.isEmpty()) {
            throw new NoSuchElementException();
        }
        return n2.create(this.f14231do.get(0).lowerBound, this.f14231do.get(r1.size() - 1).upperBound);
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return asMapOfRanges().toString();
    }

    public Object writeReplace() {
        return new Cnew(asMapOfRanges());
    }

    public static <K extends Comparable<?>, V> e1<K, V> of(n2<K> n2Var, V v) {
        return new e1<>(v0.of(n2Var), v0.of(v));
    }

    @Override // com.google.common.collect.RangeMap
    public x0<n2<K>, V> asDescendingMapOfRanges() {
        return this.f14231do.isEmpty() ? x0.of() : new i1(new x2(this.f14231do.reverse(), n2.rangeLexOrdering().reverse()), this.f14232if.reverse());
    }

    @Override // com.google.common.collect.RangeMap
    public x0<n2<K>, V> asMapOfRanges() {
        return this.f14231do.isEmpty() ? x0.of() : new i1(new x2(this.f14231do, n2.rangeLexOrdering()), this.f14232if);
    }

    @Override // com.google.common.collect.RangeMap
    public e1<K, V> subRangeMap(n2<K> n2Var) {
        if (((n2) af1.m205continue(n2Var)).isEmpty()) {
            return of();
        }
        if (this.f14231do.isEmpty() || n2Var.encloses(span())) {
            return this;
        }
        v0<n2<K>> v0Var = this.f14231do;
        Function functionUpperBoundFn = n2.upperBoundFn();
        Comparable comparable = n2Var.lowerBound;
        g3.Cfor cfor = g3.Cfor.FIRST_AFTER;
        g3.Cif cif = g3.Cif.NEXT_HIGHER;
        int iM15815do = g3.m15815do(v0Var, functionUpperBoundFn, comparable, cfor, cif);
        int iM15815do2 = g3.m15815do(this.f14231do, n2.lowerBoundFn(), n2Var.upperBound, g3.Cfor.ANY_PRESENT, cif);
        return iM15815do >= iM15815do2 ? of() : new Cif(new Cdo(iM15815do2 - iM15815do, iM15815do, n2Var), this.f14232if.subList(iM15815do, iM15815do2), n2Var, this);
    }
}
