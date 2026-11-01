package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.l01;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.qd0;
import com.google.common.base.Csuper;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;

@li0
@o8
/* loaded from: classes2.dex */
public class u3<C extends Comparable<?>> extends Ccatch<C> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Set<n2<C>> f14747do;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient RangeSet<C> f14748for;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient Set<n2<C>> f14749if;

    @af2
    public final NavigableMap<a<C>, n2<C>> rangesByLowerBound;

    /* renamed from: com.google.common.collect.u3$case, reason: invalid class name */
    public final class Ccase extends u3<C> {
        private final n2<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        public Ccase(n2<C> n2Var) {
            super(new Celse(n2.all(), n2Var, u3.this.rangesByLowerBound));
            this.restriction = n2Var;
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public void add(n2<C> n2Var) {
            af1.m206default(this.restriction.encloses(n2Var), "Cannot add range %s to subRangeSet(%s)", n2Var, this.restriction);
            super.add(n2Var);
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public void clear() {
            u3.this.remove(this.restriction);
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return this.restriction.contains(c) && u3.this.contains(c);
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public boolean encloses(n2<C> n2Var) {
            n2 n2VarM16414do;
            return (this.restriction.isEmpty() || !this.restriction.encloses(n2Var) || (n2VarM16414do = u3.this.m16414do(n2Var)) == null || n2VarM16414do.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        @b51
        public n2<C> rangeContaining(C c) {
            n2<C> n2VarRangeContaining;
            if (this.restriction.contains(c) && (n2VarRangeContaining = u3.this.rangeContaining(c)) != null) {
                return n2VarRangeContaining.intersection(this.restriction);
            }
            return null;
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public void remove(n2<C> n2Var) {
            if (n2Var.isConnected(this.restriction)) {
                u3.this.remove(n2Var.intersection(this.restriction));
            }
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.RangeSet
        public RangeSet<C> subRangeSet(n2<C> n2Var) {
            return n2Var.encloses(this.restriction) ? this : n2Var.isConnected(this.restriction) ? new Ccase(this.restriction.intersection(n2Var)) : f1.of();
        }
    }

    /* renamed from: com.google.common.collect.u3$else, reason: invalid class name */
    public static final class Celse<C extends Comparable<?>> extends Cbreak<a<C>, n2<C>> {

        /* renamed from: do, reason: not valid java name */
        private final n2<a<C>> f14750do;

        /* renamed from: for, reason: not valid java name */
        private final NavigableMap<a<C>, n2<C>> f14751for;

        /* renamed from: if, reason: not valid java name */
        private final n2<C> f14752if;

        /* renamed from: new, reason: not valid java name */
        private final NavigableMap<a<C>, n2<C>> f14753new;

        /* renamed from: com.google.common.collect.u3$else$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14754for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ a f14755new;

            public Cdo(Iterator it, a aVar) {
                this.f14754for = it;
                this.f14755new = aVar;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                if (!this.f14754for.hasNext()) {
                    return (Map.Entry) m15805if();
                }
                n2 n2Var = (n2) this.f14754for.next();
                if (this.f14755new.isLessThan(n2Var.lowerBound)) {
                    return (Map.Entry) m15805if();
                }
                n2 n2VarIntersection = n2Var.intersection(Celse.this.f14752if);
                return Maps.b(n2VarIntersection.lowerBound, n2VarIntersection);
            }
        }

        /* renamed from: com.google.common.collect.u3$else$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14757for;

            public Cif(Iterator it) {
                this.f14757for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                if (!this.f14757for.hasNext()) {
                    return (Map.Entry) m15805if();
                }
                n2 n2Var = (n2) this.f14757for.next();
                if (Celse.this.f14752if.lowerBound.compareTo((a) n2Var.upperBound) >= 0) {
                    return (Map.Entry) m15805if();
                }
                n2 n2VarIntersection = n2Var.intersection(Celse.this.f14752if);
                return Celse.this.f14750do.contains(n2VarIntersection.lowerBound) ? Maps.b(n2VarIntersection.lowerBound, n2VarIntersection) : (Map.Entry) m15805if();
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private NavigableMap<a<C>, n2<C>> m16417goto(n2<a<C>> n2Var) {
            return !n2Var.isConnected(this.f14750do) ? i1.of() : new Celse(this.f14750do.intersection(n2Var), this.f14752if, this.f14751for);
        }

        @Override // java.util.NavigableMap
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> headMap(a<C> aVar, boolean z) {
            return m16417goto(n2.upTo(aVar, Cstatic.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super a<C>> comparator() {
            return k2.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15460do() {
            Iterator<n2<C>> it;
            if (this.f14752if.isEmpty()) {
                return s1.m16240return();
            }
            if (this.f14750do.upperBound.isLessThan(this.f14752if.lowerBound)) {
                return s1.m16240return();
            }
            if (this.f14750do.lowerBound.isLessThan(this.f14752if.lowerBound)) {
                it = this.f14753new.tailMap(this.f14752if.lowerBound, false).values().iterator();
            } else {
                it = this.f14751for.tailMap(this.f14750do.lowerBound.endpoint(), this.f14750do.lowerBoundType() == Cstatic.CLOSED).values().iterator();
            }
            return new Cdo(it, (a) k2.natural().min(this.f14750do.upperBound, a.belowValue(this.f14752if.upperBound)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> subMap(a<C> aVar, boolean z, a<C> aVar2, boolean z2) {
            return m16417goto(n2.range(aVar, Cstatic.forBoolean(z), aVar2, Cstatic.forBoolean(z2)));
        }

        @Override // com.google.common.collect.Cbreak
        /* renamed from: if */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15465if() {
            if (this.f14752if.isEmpty()) {
                return s1.m16240return();
            }
            a aVar = (a) k2.natural().min(this.f14750do.upperBound, a.belowValue(this.f14752if.upperBound));
            return new Cif(this.f14751for.headMap(aVar.endpoint(), aVar.typeAsUpperBound() == Cstatic.CLOSED).descendingMap().values().iterator());
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return s1.m(mo15460do());
        }

        @Override // java.util.NavigableMap
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> tailMap(a<C> aVar, boolean z) {
            return m16417goto(n2.downTo(aVar, Cstatic.forBoolean(z)));
        }

        @Override // com.google.common.collect.Cbreak, java.util.AbstractMap, java.util.Map
        @b51
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public n2<C> get(@b51 Object obj) {
            if (obj instanceof a) {
                try {
                    a<C> aVar = (a) obj;
                    if (this.f14750do.contains(aVar) && aVar.compareTo((a) this.f14752if.lowerBound) >= 0 && aVar.compareTo((a) this.f14752if.upperBound) < 0) {
                        if (aVar.equals(this.f14752if.lowerBound)) {
                            n2 n2Var = (n2) Maps.c0(this.f14751for.floorEntry(aVar));
                            if (n2Var != null && n2Var.upperBound.compareTo((a) this.f14752if.lowerBound) > 0) {
                                return n2Var.intersection(this.f14752if);
                            }
                        } else {
                            n2 n2Var2 = (n2) this.f14751for.get(aVar);
                            if (n2Var2 != null) {
                                return n2Var2.intersection(this.f14752if);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        private Celse(n2<a<C>> n2Var, n2<C> n2Var2, NavigableMap<a<C>, n2<C>> navigableMap) {
            this.f14750do = (n2) af1.m205continue(n2Var);
            this.f14752if = (n2) af1.m205continue(n2Var2);
            this.f14751for = (NavigableMap) af1.m205continue(navigableMap);
            this.f14753new = new Ctry(navigableMap);
        }
    }

    /* renamed from: com.google.common.collect.u3$for, reason: invalid class name */
    public final class Cfor extends u3<C> {
        public Cfor() {
            super(new Cnew(u3.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public void add(n2<C> n2Var) {
            u3.this.remove(n2Var);
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.RangeSet
        public RangeSet<C> complement() {
            return u3.this;
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return !u3.this.contains(c);
        }

        @Override // com.google.common.collect.u3, com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
        public void remove(n2<C> n2Var) {
            u3.this.add(n2Var);
        }
    }

    /* renamed from: com.google.common.collect.u3$if, reason: invalid class name */
    public final class Cif extends qd0<n2<C>> implements Set<n2<C>> {

        /* renamed from: do, reason: not valid java name */
        public final Collection<n2<C>> f14759do;

        public Cif(Collection<n2<C>> collection) {
            this.f14759do = collection;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return c3.m15689else(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return c3.m15683catch(this);
        }

        @Override // android.support.v4.qd0, android.support.v4.ae0
        public Collection<n2<C>> delegate() {
            return this.f14759do;
        }
    }

    /* renamed from: com.google.common.collect.u3$new, reason: invalid class name */
    public static final class Cnew<C extends Comparable<?>> extends Cbreak<a<C>, n2<C>> {

        /* renamed from: do, reason: not valid java name */
        private final NavigableMap<a<C>, n2<C>> f14761do;

        /* renamed from: for, reason: not valid java name */
        private final n2<a<C>> f14762for;

        /* renamed from: if, reason: not valid java name */
        private final NavigableMap<a<C>, n2<C>> f14763if;

        /* renamed from: com.google.common.collect.u3$new$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public a<C> f14765for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ a f14766new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ PeekingIterator f14767try;

            public Cdo(a aVar, PeekingIterator peekingIterator) {
                this.f14766new = aVar;
                this.f14767try = peekingIterator;
                this.f14765for = aVar;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                n2 n2VarCreate;
                if (Cnew.this.f14762for.upperBound.isLessThan(this.f14765for) || this.f14765for == a.aboveAll()) {
                    return (Map.Entry) m15805if();
                }
                if (this.f14767try.hasNext()) {
                    n2 n2Var = (n2) this.f14767try.next();
                    n2VarCreate = n2.create(this.f14765for, n2Var.lowerBound);
                    this.f14765for = n2Var.upperBound;
                } else {
                    n2VarCreate = n2.create(this.f14765for, a.aboveAll());
                    this.f14765for = a.aboveAll();
                }
                return Maps.b(n2VarCreate.lowerBound, n2VarCreate);
            }
        }

        /* renamed from: com.google.common.collect.u3$new$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public a<C> f14769for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ a f14770new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ PeekingIterator f14771try;

            public Cif(a aVar, PeekingIterator peekingIterator) {
                this.f14770new = aVar;
                this.f14771try = peekingIterator;
                this.f14769for = aVar;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                if (this.f14769for == a.belowAll()) {
                    return (Map.Entry) m15805if();
                }
                if (this.f14771try.hasNext()) {
                    n2 n2Var = (n2) this.f14771try.next();
                    n2 n2VarCreate = n2.create(n2Var.upperBound, this.f14769for);
                    this.f14769for = n2Var.lowerBound;
                    if (Cnew.this.f14762for.lowerBound.isLessThan(n2VarCreate.lowerBound)) {
                        return Maps.b(n2VarCreate.lowerBound, n2VarCreate);
                    }
                } else if (Cnew.this.f14762for.lowerBound.isLessThan(a.belowAll())) {
                    n2 n2VarCreate2 = n2.create(a.belowAll(), this.f14769for);
                    this.f14769for = a.belowAll();
                    return Maps.b(a.belowAll(), n2VarCreate2);
                }
                return (Map.Entry) m15805if();
            }
        }

        public Cnew(NavigableMap<a<C>, n2<C>> navigableMap) {
            this(navigableMap, n2.all());
        }

        /* renamed from: else, reason: not valid java name */
        private NavigableMap<a<C>, n2<C>> m16425else(n2<a<C>> n2Var) {
            if (!this.f14762for.isConnected(n2Var)) {
                return i1.of();
            }
            return new Cnew(this.f14761do, n2Var.intersection(this.f14762for));
        }

        @Override // java.util.NavigableMap
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> subMap(a<C> aVar, boolean z, a<C> aVar2, boolean z2) {
            return m16425else(n2.range(aVar, Cstatic.forBoolean(z), aVar2, Cstatic.forBoolean(z2)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super a<C>> comparator() {
            return k2.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15460do() {
            Collection<n2<C>> collectionValues;
            a aVarBelowAll;
            if (this.f14762for.hasLowerBound()) {
                collectionValues = this.f14763if.tailMap(this.f14762for.lowerEndpoint(), this.f14762for.lowerBoundType() == Cstatic.CLOSED).values();
            } else {
                collectionValues = this.f14763if.values();
            }
            PeekingIterator peekingIteratorG = s1.g(collectionValues.iterator());
            if (this.f14762for.contains(a.belowAll()) && (!peekingIteratorG.hasNext() || ((n2) peekingIteratorG.peek()).lowerBound != a.belowAll())) {
                aVarBelowAll = a.belowAll();
            } else {
                if (!peekingIteratorG.hasNext()) {
                    return s1.m16240return();
                }
                aVarBelowAll = ((n2) peekingIteratorG.next()).upperBound;
            }
            return new Cdo(aVarBelowAll, peekingIteratorG);
        }

        @Override // java.util.NavigableMap
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> tailMap(a<C> aVar, boolean z) {
            return m16425else(n2.downTo(aVar, Cstatic.forBoolean(z)));
        }

        @Override // com.google.common.collect.Cbreak
        /* renamed from: if */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15465if() {
            a<C> aVarHigherKey;
            PeekingIterator peekingIteratorG = s1.g(this.f14763if.headMap(this.f14762for.hasUpperBound() ? (a) this.f14762for.upperEndpoint() : a.aboveAll(), this.f14762for.hasUpperBound() && this.f14762for.upperBoundType() == Cstatic.CLOSED).descendingMap().values().iterator());
            if (peekingIteratorG.hasNext()) {
                aVarHigherKey = ((n2) peekingIteratorG.peek()).upperBound == a.aboveAll() ? ((n2) peekingIteratorG.next()).lowerBound : this.f14761do.higherKey(((n2) peekingIteratorG.peek()).upperBound);
            } else {
                if (!this.f14762for.contains(a.belowAll()) || this.f14761do.containsKey(a.belowAll())) {
                    return s1.m16240return();
                }
                aVarHigherKey = this.f14761do.higherKey(a.belowAll());
            }
            return new Cif((a) Csuper.m15183do(aVarHigherKey, a.aboveAll()), peekingIteratorG);
        }

        @Override // com.google.common.collect.Cbreak, java.util.AbstractMap, java.util.Map
        @b51
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public n2<C> get(Object obj) {
            if (obj instanceof a) {
                try {
                    a<C> aVar = (a) obj;
                    Map.Entry<a<C>, n2<C>> entryFirstEntry = tailMap(aVar, true).firstEntry();
                    if (entryFirstEntry != null && entryFirstEntry.getKey().equals(aVar)) {
                        return entryFirstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return s1.m(mo15460do());
        }

        @Override // java.util.NavigableMap
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> headMap(a<C> aVar, boolean z) {
            return m16425else(n2.upTo(aVar, Cstatic.forBoolean(z)));
        }

        private Cnew(NavigableMap<a<C>, n2<C>> navigableMap, n2<a<C>> n2Var) {
            this.f14761do = navigableMap;
            this.f14763if = new Ctry(navigableMap);
            this.f14762for = n2Var;
        }
    }

    public static <C extends Comparable<?>> u3<C> create() {
        return new u3<>(new TreeMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    /* renamed from: do, reason: not valid java name */
    public n2<C> m16414do(n2<C> n2Var) {
        af1.m205continue(n2Var);
        Map.Entry<a<C>, n2<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(n2Var.lowerBound);
        if (entryFloorEntry == null || !entryFloorEntry.getValue().encloses(n2Var)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    /* renamed from: if, reason: not valid java name */
    private void m16415if(n2<C> n2Var) {
        if (n2Var.isEmpty()) {
            this.rangesByLowerBound.remove(n2Var.lowerBound);
        } else {
            this.rangesByLowerBound.put(n2Var.lowerBound, n2Var);
        }
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public void add(n2<C> n2Var) {
        af1.m205continue(n2Var);
        if (n2Var.isEmpty()) {
            return;
        }
        a<C> aVar = n2Var.lowerBound;
        a<C> aVar2 = n2Var.upperBound;
        Map.Entry<a<C>, n2<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(aVar);
        if (entryLowerEntry != null) {
            n2<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((a) aVar) >= 0) {
                if (value.upperBound.compareTo((a) aVar2) >= 0) {
                    aVar2 = value.upperBound;
                }
                aVar = value.lowerBound;
            }
        }
        Map.Entry<a<C>, n2<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(aVar2);
        if (entryFloorEntry != null) {
            n2<C> value2 = entryFloorEntry.getValue();
            if (value2.upperBound.compareTo((a) aVar2) >= 0) {
                aVar2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(aVar, aVar2).clear();
        m16415if(n2.create(aVar, aVar2));
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(RangeSet rangeSet) {
        super.addAll(rangeSet);
    }

    @Override // com.google.common.collect.RangeSet
    public Set<n2<C>> asDescendingSetOfRanges() {
        Set<n2<C>> set = this.f14749if;
        if (set != null) {
            return set;
        }
        Cif cif = new Cif(this.rangesByLowerBound.descendingMap().values());
        this.f14749if = cif;
        return cif;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<n2<C>> asRanges() {
        Set<n2<C>> set = this.f14747do;
        if (set != null) {
            return set;
        }
        Cif cif = new Cif(this.rangesByLowerBound.values());
        this.f14747do = cif;
        return cif;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> complement() {
        RangeSet<C> rangeSet = this.f14748for;
        if (rangeSet != null) {
            return rangeSet;
        }
        Cfor cfor = new Cfor();
        this.f14748for = cfor;
        return cfor;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public boolean encloses(n2<C> n2Var) {
        af1.m205continue(n2Var);
        Map.Entry<a<C>, n2<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(n2Var.lowerBound);
        return entryFloorEntry != null && entryFloorEntry.getValue().encloses(n2Var);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public boolean intersects(n2<C> n2Var) {
        af1.m205continue(n2Var);
        Map.Entry<a<C>, n2<C>> entryCeilingEntry = this.rangesByLowerBound.ceilingEntry(n2Var.lowerBound);
        if (entryCeilingEntry != null && entryCeilingEntry.getValue().isConnected(n2Var) && !entryCeilingEntry.getValue().intersection(n2Var).isEmpty()) {
            return true;
        }
        Map.Entry<a<C>, n2<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(n2Var.lowerBound);
        return (entryLowerEntry == null || !entryLowerEntry.getValue().isConnected(n2Var) || entryLowerEntry.getValue().intersection(n2Var).isEmpty()) ? false : true;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @b51
    public n2<C> rangeContaining(C c) {
        af1.m205continue(c);
        Map.Entry<a<C>, n2<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(a.belowValue(c));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().contains(c)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public void remove(n2<C> n2Var) {
        af1.m205continue(n2Var);
        if (n2Var.isEmpty()) {
            return;
        }
        Map.Entry<a<C>, n2<C>> entryLowerEntry = this.rangesByLowerBound.lowerEntry(n2Var.lowerBound);
        if (entryLowerEntry != null) {
            n2<C> value = entryLowerEntry.getValue();
            if (value.upperBound.compareTo((a) n2Var.lowerBound) >= 0) {
                if (n2Var.hasUpperBound() && value.upperBound.compareTo((a) n2Var.upperBound) >= 0) {
                    m16415if(n2.create(n2Var.upperBound, value.upperBound));
                }
                m16415if(n2.create(value.lowerBound, n2Var.lowerBound));
            }
        }
        Map.Entry<a<C>, n2<C>> entryFloorEntry = this.rangesByLowerBound.floorEntry(n2Var.upperBound);
        if (entryFloorEntry != null) {
            n2<C> value2 = entryFloorEntry.getValue();
            if (n2Var.hasUpperBound() && value2.upperBound.compareTo((a) n2Var.upperBound) >= 0) {
                m16415if(n2.create(n2Var.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(n2Var.lowerBound, n2Var.upperBound).clear();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(RangeSet rangeSet) {
        super.removeAll(rangeSet);
    }

    @Override // com.google.common.collect.RangeSet
    public n2<C> span() {
        Map.Entry<a<C>, n2<C>> entryFirstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<a<C>, n2<C>> entryLastEntry = this.rangesByLowerBound.lastEntry();
        if (entryFirstEntry != null) {
            return n2.create(entryFirstEntry.getValue().lowerBound, entryLastEntry.getValue().upperBound);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> subRangeSet(n2<C> n2Var) {
        return n2Var.equals(n2.all()) ? this : new Ccase(n2Var);
    }

    private u3(NavigableMap<a<C>, n2<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> u3<C> create(RangeSet<C> rangeSet) {
        u3<C> u3VarCreate = create();
        u3VarCreate.addAll(rangeSet);
        return u3VarCreate;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    @af2
    /* renamed from: com.google.common.collect.u3$try, reason: invalid class name */
    public static final class Ctry<C extends Comparable<?>> extends Cbreak<a<C>, n2<C>> {

        /* renamed from: do, reason: not valid java name */
        private final NavigableMap<a<C>, n2<C>> f14772do;

        /* renamed from: if, reason: not valid java name */
        private final n2<a<C>> f14773if;

        /* renamed from: com.google.common.collect.u3$try$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14774for;

            public Cdo(Iterator it) {
                this.f14774for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                if (!this.f14774for.hasNext()) {
                    return (Map.Entry) m15805if();
                }
                n2 n2Var = (n2) this.f14774for.next();
                return Ctry.this.f14773if.upperBound.isLessThan(n2Var.upperBound) ? (Map.Entry) m15805if() : Maps.b(n2Var.upperBound, n2Var);
            }
        }

        /* renamed from: com.google.common.collect.u3$try$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<Map.Entry<a<C>, n2<C>>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ PeekingIterator f14776for;

            public Cif(PeekingIterator peekingIterator) {
                this.f14776for = peekingIterator;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<a<C>, n2<C>> mo15521do() {
                if (!this.f14776for.hasNext()) {
                    return (Map.Entry) m15805if();
                }
                n2 n2Var = (n2) this.f14776for.next();
                return Ctry.this.f14773if.lowerBound.isLessThan(n2Var.upperBound) ? Maps.b(n2Var.upperBound, n2Var) : (Map.Entry) m15805if();
            }
        }

        public Ctry(NavigableMap<a<C>, n2<C>> navigableMap) {
            this.f14772do = navigableMap;
            this.f14773if = n2.all();
        }

        /* renamed from: else, reason: not valid java name */
        private NavigableMap<a<C>, n2<C>> m16433else(n2<a<C>> n2Var) {
            return n2Var.isConnected(this.f14773if) ? new Ctry(this.f14772do, n2Var.intersection(this.f14773if)) : i1.of();
        }

        @Override // java.util.NavigableMap
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> subMap(a<C> aVar, boolean z, a<C> aVar2, boolean z2) {
            return m16433else(n2.range(aVar, Cstatic.forBoolean(z), aVar2, Cstatic.forBoolean(z2)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super a<C>> comparator() {
            return k2.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15460do() {
            Map.Entry entryLowerEntry;
            Iterator<n2<C>> it = (this.f14773if.hasLowerBound() && (entryLowerEntry = this.f14772do.lowerEntry(this.f14773if.lowerEndpoint())) != null) ? this.f14773if.lowerBound.isLessThan(((n2) entryLowerEntry.getValue()).upperBound) ? this.f14772do.tailMap(entryLowerEntry.getKey(), true).values().iterator() : this.f14772do.tailMap(this.f14773if.lowerEndpoint(), true).values().iterator() : this.f14772do.values().iterator();
            return new Cdo(it);
        }

        @Override // java.util.NavigableMap
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> tailMap(a<C> aVar, boolean z) {
            return m16433else(n2.downTo(aVar, Cstatic.forBoolean(z)));
        }

        @Override // com.google.common.collect.Cbreak
        /* renamed from: if */
        public Iterator<Map.Entry<a<C>, n2<C>>> mo15465if() {
            PeekingIterator peekingIteratorG = s1.g((this.f14773if.hasUpperBound() ? this.f14772do.headMap(this.f14773if.upperEndpoint(), false).descendingMap().values() : this.f14772do.descendingMap().values()).iterator());
            if (peekingIteratorG.hasNext() && this.f14773if.upperBound.isLessThan(((n2) peekingIteratorG.peek()).upperBound)) {
                peekingIteratorG.next();
            }
            return new Cif(peekingIteratorG);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f14773if.equals(n2.all()) ? this.f14772do.isEmpty() : !mo15460do().hasNext();
        }

        @Override // com.google.common.collect.Cbreak, java.util.AbstractMap, java.util.Map
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public n2<C> get(@b51 Object obj) {
            Map.Entry<a<C>, n2<C>> entryLowerEntry;
            if (obj instanceof a) {
                try {
                    a<C> aVar = (a) obj;
                    if (this.f14773if.contains(aVar) && (entryLowerEntry = this.f14772do.lowerEntry(aVar)) != null && entryLowerEntry.getValue().upperBound.equals(aVar)) {
                        return entryLowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14773if.equals(n2.all()) ? this.f14772do.size() : s1.m(mo15460do());
        }

        @Override // java.util.NavigableMap
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<a<C>, n2<C>> headMap(a<C> aVar, boolean z) {
            return m16433else(n2.upTo(aVar, Cstatic.forBoolean(z)));
        }

        private Ctry(NavigableMap<a<C>, n2<C>> navigableMap, n2<a<C>> n2Var) {
            this.f14772do = navigableMap;
            this.f14773if = n2Var;
        }
    }

    public static <C extends Comparable<?>> u3<C> create(Iterable<n2<C>> iterable) {
        u3<C> u3VarCreate = create();
        u3VarCreate.addAll(iterable);
        return u3VarCreate;
    }
}
