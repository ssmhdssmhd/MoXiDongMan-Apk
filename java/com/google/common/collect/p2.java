package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class p2<C extends Comparable> extends Cinstanceof<C> {
    private static final long serialVersionUID = 0;
    private final n2<C> range;

    /* renamed from: com.google.common.collect.p2$do, reason: invalid class name */
    public class Cdo extends android.support.v4.e<C> {

        /* renamed from: if, reason: not valid java name */
        public final C f14494if;

        public Cdo(Comparable comparable) {
            super(comparable);
            this.f14494if = (C) p2.this.last();
        }

        @Override // android.support.v4.e
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public C mo1571do(C c) {
            if (p2.m16117for(c, this.f14494if)) {
                return null;
            }
            return (C) p2.this.domain.next(c);
        }
    }

    /* renamed from: com.google.common.collect.p2$for, reason: invalid class name */
    public class Cfor extends o0<C> {
        public Cfor() {
        }

        @Override // com.google.common.collect.o0
        public m1<C> delegateCollection() {
            return p2.this;
        }

        @Override // java.util.List
        public C get(int i) {
            af1.m222private(i, size());
            p2 p2Var = p2.this;
            return (C) p2Var.domain.offset(p2Var.first(), i);
        }
    }

    /* renamed from: com.google.common.collect.p2$if, reason: invalid class name */
    public class Cif extends android.support.v4.e<C> {

        /* renamed from: if, reason: not valid java name */
        public final C f14496if;

        public Cif(Comparable comparable) {
            super(comparable);
            this.f14496if = (C) p2.this.first();
        }

        @Override // android.support.v4.e
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public C mo1571do(C c) {
            if (p2.m16117for(c, this.f14496if)) {
                return null;
            }
            return (C) p2.this.domain.previous(c);
        }
    }

    @li0
    /* renamed from: com.google.common.collect.p2$new, reason: invalid class name */
    public static final class Cnew<C extends Comparable> implements Serializable {
        public final f<C> domain;
        public final n2<C> range;

        public /* synthetic */ Cnew(n2 n2Var, f fVar, Cdo cdo) {
            this(n2Var, fVar);
        }

        private Object readResolve() {
            return new p2(this.range, this.domain);
        }

        private Cnew(n2<C> n2Var, f<C> fVar) {
            this.range = n2Var;
            this.domain = fVar;
        }
    }

    public p2(n2<C> n2Var, f<C> fVar) {
        super(fVar);
        this.range = n2Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static boolean m16117for(Comparable<?> comparable, @b51 Comparable<?> comparable2) {
        return comparable2 != null && n2.compareOrThrow(comparable, comparable2) == 0;
    }

    /* renamed from: new, reason: not valid java name */
    private Cinstanceof<C> m16118new(n2<C> n2Var) {
        return this.range.isConnected(n2Var) ? Cinstanceof.create(this.range.intersection(n2Var), this.domain) : new g(this.domain);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.range.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return Cextends.m15769for(this, collection);
    }

    @Override // com.google.common.collect.g1
    public v0<C> createAsList() {
        return this.domain.supportsFastOffset ? new Cfor() : super.createAsList();
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p2) {
            p2 p2Var = (p2) obj;
            if (this.domain.equals(p2Var.domain)) {
                return first().equals(p2Var.first()) && last().equals(p2Var.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public int hashCode() {
        return c3.m15683catch(this);
    }

    @Override // com.google.common.collect.m1
    @li0
    public int indexOf(Object obj) {
        if (contains(obj)) {
            return (int) this.domain.distance(first(), (Comparable) obj);
        }
        return -1;
    }

    @Override // com.google.common.collect.Cinstanceof
    public Cinstanceof<C> intersection(Cinstanceof<C> cinstanceof) {
        af1.m205continue(cinstanceof);
        af1.m220new(this.domain.equals(cinstanceof.domain));
        if (cinstanceof.isEmpty()) {
            return cinstanceof;
        }
        Comparable comparable = (Comparable) k2.natural().max(first(), cinstanceof.first());
        Comparable comparable2 = (Comparable) k2.natural().min(last(), cinstanceof.last());
        return comparable.compareTo(comparable2) <= 0 ? Cinstanceof.create(n2.closed(comparable, comparable2), this.domain) : new g(this.domain);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.Cinstanceof
    public n2<C> range() {
        Cstatic cstatic = Cstatic.CLOSED;
        return range(cstatic, cstatic);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long jDistance = this.domain.distance(first(), last());
        if (jDistance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jDistance) + 1;
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cnew(this.range, this.domain, null);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public ac2<C> descendingIterator() {
        return new Cif(last());
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public C first() {
        return (C) this.range.lowerBound.leastValueAbove(this.domain);
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> headSetImpl(C c, boolean z) {
        return m16118new(n2.upTo(c, Cstatic.forBoolean(z)));
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<C> iterator() {
        return new Cdo(first());
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public C last() {
        return (C) this.range.upperBound.greatestValueBelow(this.domain);
    }

    @Override // com.google.common.collect.Cinstanceof
    public n2<C> range(Cstatic cstatic, Cstatic cstatic2) {
        return n2.create(this.range.lowerBound.withLowerBoundType(cstatic, this.domain), this.range.upperBound.withUpperBoundType(cstatic2, this.domain));
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
        return (c.compareTo(c2) != 0 || z || z2) ? m16118new(n2.range(c, Cstatic.forBoolean(z), c2, Cstatic.forBoolean(z2))) : new g(this.domain);
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> tailSetImpl(C c, boolean z) {
        return m16118new(n2.downTo(c, Cstatic.forBoolean(z)));
    }
}
