package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.yd0;
import com.google.common.base.Cpublic;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.c3;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
class k3<R, C, V> extends Cthrow<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;

    @h0
    public final Map<R, Map<C, V>> backingMap;

    @h0
    public final Supplier<? extends Map<C, V>> factory;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient Set<C> f14397for;

    /* renamed from: new, reason: not valid java name */
    @l01
    private transient Map<R, Map<C, V>> f14398new;

    /* renamed from: try, reason: not valid java name */
    @l01
    private transient k3<R, C, V>.Ccase f14399try;

    /* renamed from: com.google.common.collect.k3$case, reason: invalid class name */
    public class Ccase extends Maps.d<C, Map<R, V>> {

        /* renamed from: com.google.common.collect.k3$case$do, reason: invalid class name */
        public class Cdo extends k3<R, C, V>.Cthis<Map.Entry<C, Map<R, V>>> {

            /* renamed from: com.google.common.collect.k3$case$do$do, reason: invalid class name and collision with other inner class name */
            public class C0099do implements Function<C, Map<R, V>> {
                public C0099do() {
                }

                @Override // com.google.common.base.Function
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map<R, V> apply(C c) {
                    return k3.this.column(c);
                }
            }

            public Cdo() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!k3.this.containsColumn(entry.getKey())) {
                    return false;
                }
                return Ccase.this.get(entry.getKey()).equals(entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.m15411const(k3.this.columnKeySet(), new C0099do());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                k3.this.m15964for(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                af1.m205continue(collection);
                return c3.m15715transient(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                af1.m205continue(collection);
                Iterator it = x1.m16507native(k3.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(Maps.b(next, k3.this.column(next)))) {
                        k3.this.m15964for(next);
                        z = true;
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return k3.this.columnKeySet().size();
            }
        }

        /* renamed from: com.google.common.collect.k3$case$if, reason: invalid class name */
        public class Cif extends Maps.c<C, Map<R, V>> {
            public Cif() {
                super(Ccase.this);
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : Ccase.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        k3.this.m15964for(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                af1.m205continue(collection);
                Iterator it = x1.m16507native(k3.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (collection.contains(k3.this.column(next))) {
                        k3.this.m15964for(next);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                af1.m205continue(collection);
                Iterator it = x1.m16507native(k3.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(k3.this.column(next))) {
                        k3.this.m15964for(next);
                        z = true;
                    }
                }
                return z;
            }
        }

        private Ccase() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return k3.this.containsColumn(obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<C, Map<R, V>>> mo15456do() {
            return new Cdo();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: for */
        public Collection<Map<R, V>> mo15457for() {
            return new Cif();
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<C> keySet() {
            return k3.this.columnKeySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<R, V> get(Object obj) {
            if (k3.this.containsColumn(obj)) {
                return k3.this.column(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<R, V> remove(Object obj) {
            if (k3.this.containsColumn(obj)) {
                return k3.this.m15964for(obj);
            }
            return null;
        }
    }

    /* renamed from: com.google.common.collect.k3$else, reason: invalid class name */
    public class Celse extends Maps.Cextends<C, V> {

        /* renamed from: do, reason: not valid java name */
        public final R f14404do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public Map<C, V> f14406if;

        /* renamed from: com.google.common.collect.k3$else$do, reason: invalid class name */
        public class Cdo implements Iterator<Map.Entry<C, V>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterator f14407do;

            public Cdo(Iterator it) {
                this.f14407do = it;
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<C, V> next() {
                return Celse.this.m15973try((Map.Entry) this.f14407do.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14407do.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f14407do.remove();
                Celse.this.mo15972new();
            }
        }

        /* renamed from: com.google.common.collect.k3$else$if, reason: invalid class name */
        public class Cif extends yd0<C, V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Map.Entry f14409do;

            public Cif(Map.Entry entry) {
                this.f14409do = entry;
            }

            @Override // android.support.v4.yd0, android.support.v4.ae0
            /* renamed from: do */
            public Map.Entry<C, V> delegate() {
                return this.f14409do;
            }

            @Override // android.support.v4.yd0, java.util.Map.Entry
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.support.v4.yd0, java.util.Map.Entry
            public V setValue(V v) {
                return (V) super.setValue(af1.m205continue(v));
            }
        }

        public Celse(R r) {
            this.f14404do = (R) af1.m205continue(r);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public void clear() {
            Map<C, V> mapMo15971if = mo15971if();
            if (mapMo15971if != null) {
                mapMo15971if.clear();
            }
            mo15972new();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> mapMo15971if = mo15971if();
            return (obj == null || mapMo15971if == null || !Maps.B(mapMo15971if, obj)) ? false : true;
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<C, V>> mo15460do() {
            Map<C, V> mapMo15971if = mo15971if();
            return mapMo15971if == null ? s1.m16244switch() : new Cdo(mapMo15971if.entrySet().iterator());
        }

        /* renamed from: for, reason: not valid java name */
        public Map<C, V> mo15970for() {
            return k3.this.backingMap.get(this.f14404do);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> mapMo15971if = mo15971if();
            if (obj == null || mapMo15971if == null) {
                return null;
            }
            return (V) Maps.C(mapMo15971if, obj);
        }

        /* renamed from: if, reason: not valid java name */
        public Map<C, V> mo15971if() {
            Map<C, V> map = this.f14406if;
            if (map != null && (!map.isEmpty() || !k3.this.backingMap.containsKey(this.f14404do))) {
                return this.f14406if;
            }
            Map<C, V> mapMo15970for = mo15970for();
            this.f14406if = mapMo15970for;
            return mapMo15970for;
        }

        /* renamed from: new, reason: not valid java name */
        public void mo15972new() {
            if (mo15971if() == null || !this.f14406if.isEmpty()) {
                return;
            }
            k3.this.backingMap.remove(this.f14404do);
            this.f14406if = null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            af1.m205continue(c);
            af1.m205continue(v);
            Map<C, V> map = this.f14406if;
            return (map == null || map.isEmpty()) ? (V) k3.this.put(this.f14404do, c, v) : this.f14406if.put(c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            Map<C, V> mapMo15971if = mo15971if();
            if (mapMo15971if == null) {
                return null;
            }
            V v = (V) Maps.D(mapMo15971if, obj);
            mo15972new();
            return v;
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            Map<C, V> mapMo15971if = mo15971if();
            if (mapMo15971if == null) {
                return 0;
            }
            return mapMo15971if.size();
        }

        /* renamed from: try, reason: not valid java name */
        public Map.Entry<C, V> m15973try(Map.Entry<C, V> entry) {
            return new Cif(entry);
        }
    }

    /* renamed from: com.google.common.collect.k3$for, reason: invalid class name */
    public class Cfor extends Maps.d<R, V> {

        /* renamed from: new, reason: not valid java name */
        public final C f14411new;

        /* renamed from: com.google.common.collect.k3$for$do, reason: invalid class name */
        public class Cdo extends c3.Ccatch<Map.Entry<R, V>> {
            private Cdo() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                Cfor.this.m15975new(Cpublic.m15168for());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return k3.this.m15963do(entry.getKey(), Cfor.this.f14411new, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                Cfor cfor = Cfor.this;
                return !k3.this.containsColumn(cfor.f14411new);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new Cif();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return k3.this.m15966new(entry.getKey(), Cfor.this.f14411new, entry.getValue());
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return Cfor.this.m15975new(Cpublic.m15182while(Cpublic.m15167final(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<Map<C, V>> it = k3.this.backingMap.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(Cfor.this.f14411new)) {
                        i++;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.k3$for$for, reason: invalid class name and collision with other inner class name */
        public class C0100for extends Maps.Cfinally<R, V> {
            public C0100for() {
                super(Cfor.this);
            }

            @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                Cfor cfor = Cfor.this;
                return k3.this.contains(obj, cfor.f14411new);
            }

            @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                Cfor cfor = Cfor.this;
                return k3.this.remove(obj, cfor.f14411new) != null;
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return Cfor.this.m15975new(Maps.h(Cpublic.m15182while(Cpublic.m15167final(collection))));
            }
        }

        /* renamed from: com.google.common.collect.k3$for$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<Map.Entry<R, V>> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<Map.Entry<R, Map<C, V>>> f14415for;

            /* renamed from: com.google.common.collect.k3$for$if$do, reason: invalid class name */
            public class Cdo extends com.google.common.collect.Celse<R, V> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Map.Entry f14417do;

                public Cdo(Map.Entry entry) {
                    this.f14417do = entry;
                }

                @Override // com.google.common.collect.Celse, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f14417do.getKey();
                }

                @Override // com.google.common.collect.Celse, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f14417do.getValue()).get(Cfor.this.f14411new);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.Celse, java.util.Map.Entry
                public V setValue(V v) {
                    return (V) ((Map) this.f14417do.getValue()).put(Cfor.this.f14411new, af1.m205continue(v));
                }
            }

            private Cif() {
                this.f14415for = k3.this.backingMap.entrySet().iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<R, V> mo15521do() {
                while (this.f14415for.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f14415for.next();
                    if (next.getValue().containsKey(Cfor.this.f14411new)) {
                        return new Cdo(next);
                    }
                }
                return m15805if();
            }
        }

        /* renamed from: com.google.common.collect.k3$for$new, reason: invalid class name */
        public class Cnew extends Maps.c<R, V> {
            public Cnew() {
                super(Cfor.this);
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && Cfor.this.m15975new(Maps.d0(Cpublic.m15164const(obj)));
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return Cfor.this.m15975new(Maps.d0(Cpublic.m15167final(collection)));
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return Cfor.this.m15975new(Maps.d0(Cpublic.m15182while(Cpublic.m15167final(collection))));
            }
        }

        public Cfor(C c) {
            this.f14411new = (C) af1.m205continue(c);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return k3.this.contains(obj, this.f14411new);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<R, V>> mo15456do() {
            return new Cdo();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: for */
        public Collection<V> mo15457for() {
            return new Cnew();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) k3.this.get(obj, this.f14411new);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: if */
        public Set<R> mo15458if() {
            return new C0100for();
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public boolean m15975new(Predicate<? super Map.Entry<R, V>> predicate) {
            Iterator<Map.Entry<R, Map<C, V>>> it = k3.this.backingMap.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.f14411new);
                if (v != null && predicate.apply(Maps.b(next.getKey(), v))) {
                    value.remove(this.f14411new);
                    z = true;
                    if (value.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r, V v) {
            return (V) k3.this.put(r, this.f14411new, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) k3.this.remove(obj, this.f14411new);
        }
    }

    /* renamed from: com.google.common.collect.k3$goto, reason: invalid class name */
    public class Cgoto extends Maps.d<R, Map<C, V>> {

        /* renamed from: com.google.common.collect.k3$goto$do, reason: invalid class name */
        public class Cdo extends k3<R, C, V>.Cthis<Map.Entry<R, Map<C, V>>> {

            /* renamed from: com.google.common.collect.k3$goto$do$do, reason: invalid class name and collision with other inner class name */
            public class C0101do implements Function<R, Map<C, V>> {
                public C0101do() {
                }

                @Override // com.google.common.base.Function
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map<C, V> apply(R r) {
                    return k3.this.row(r);
                }
            }

            public Cdo() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && Cextends.m15763catch(k3.this.backingMap.entrySet(), entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.m15411const(k3.this.backingMap.keySet(), new C0101do());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && k3.this.backingMap.entrySet().remove(entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return k3.this.backingMap.size();
            }
        }

        public Cgoto() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return k3.this.containsRow(obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<R, Map<C, V>>> mo15456do() {
            return new Cdo();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<C, V> get(Object obj) {
            if (k3.this.containsRow(obj)) {
                return k3.this.row(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return k3.this.backingMap.remove(obj);
        }
    }

    /* renamed from: com.google.common.collect.k3$if, reason: invalid class name */
    public class Cif implements Iterator<Table.Cell<R, C, V>> {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<Map.Entry<R, Map<C, V>>> f14423do;

        /* renamed from: for, reason: not valid java name */
        public Iterator<Map.Entry<C, V>> f14424for;

        /* renamed from: if, reason: not valid java name */
        @b51
        public Map.Entry<R, Map<C, V>> f14425if;

        private Cif() {
            this.f14423do = k3.this.backingMap.entrySet().iterator();
            this.f14424for = s1.m16244switch();
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> next() {
            if (!this.f14424for.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f14423do.next();
                this.f14425if = next;
                this.f14424for = next.getValue().entrySet().iterator();
            }
            Map.Entry<C, V> next2 = this.f14424for.next();
            return m3.m16061for(this.f14425if.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14423do.hasNext() || this.f14424for.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f14424for.remove();
            if (this.f14425if.getValue().isEmpty()) {
                this.f14423do.remove();
                this.f14425if = null;
            }
        }
    }

    /* renamed from: com.google.common.collect.k3$new, reason: invalid class name */
    public class Cnew extends com.google.common.collect.Cfor<C> {

        /* renamed from: for, reason: not valid java name */
        public final Map<C, V> f14428for;

        /* renamed from: new, reason: not valid java name */
        public final Iterator<Map<C, V>> f14429new;

        /* renamed from: try, reason: not valid java name */
        public Iterator<Map.Entry<C, V>> f14430try;

        private Cnew() {
            this.f14428for = k3.this.factory.get();
            this.f14429new = k3.this.backingMap.values().iterator();
            this.f14430try = s1.m16240return();
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: do */
        public C mo15521do() {
            while (true) {
                if (this.f14430try.hasNext()) {
                    Map.Entry<C, V> next = this.f14430try.next();
                    if (!this.f14428for.containsKey(next.getKey())) {
                        this.f14428for.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else {
                    if (!this.f14429new.hasNext()) {
                        return m15805if();
                    }
                    this.f14430try = this.f14429new.next().entrySet().iterator();
                }
            }
        }
    }

    /* renamed from: com.google.common.collect.k3$this, reason: invalid class name */
    public abstract class Cthis<T> extends c3.Ccatch<T> {
        private Cthis() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k3.this.backingMap.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return k3.this.backingMap.isEmpty();
        }
    }

    /* renamed from: com.google.common.collect.k3$try, reason: invalid class name */
    public class Ctry extends k3<R, C, V>.Cthis<C> {
        private Ctry() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return k3.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return k3.this.createColumnKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = k3.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            af1.m205continue(collection);
            Iterator<Map<C, V>> it = k3.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (s1.i(next.keySet().iterator(), collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            af1.m205continue(collection);
            Iterator<Map<C, V>> it = k3.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s1.m(iterator());
        }
    }

    public k3(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        this.backingMap = map;
        this.factory = supplier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public boolean m15963do(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @lf
    /* renamed from: for, reason: not valid java name */
    public Map<R, V> m15964for(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: if, reason: not valid java name */
    private Map<C, V> m15965if(R r) {
        Map<C, V> map = this.backingMap.get(r);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = this.factory.get();
        this.backingMap.put(r, map2);
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public boolean m15966new(Object obj, Object obj2, Object obj3) {
        if (!m15963do(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override // com.google.common.collect.Cthrow
    public Iterator<Table.Cell<R, C, V>> cellIterator() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public void clear() {
        this.backingMap.clear();
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c) {
        return new Cfor(c);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Set<C> columnKeySet() {
        Set<C> set = this.f14397for;
        if (set != null) {
            return set;
        }
        Ctry ctry = new Ctry();
        this.f14397for = ctry;
        return ctry;
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        k3<R, C, V>.Ccase ccase = this.f14399try;
        if (ccase != null) {
            return ccase;
        }
        k3<R, C, V>.Ccase ccase2 = new Ccase();
        this.f14399try = ccase2;
        return ccase2;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean contains(@b51 Object obj, @b51 Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsColumn(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        while (it.hasNext()) {
            if (Maps.B(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsRow(@b51 Object obj) {
        return obj != null && Maps.B(this.backingMap, obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsValue(@b51 Object obj) {
        return obj != null && super.containsValue(obj);
    }

    public Iterator<C> createColumnKeyIterator() {
        return new Cnew();
    }

    public Map<R, Map<C, V>> createRowMap() {
        return new Cgoto();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public V get(@b51 Object obj, @b51 Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    public V put(R r, C c, V v) {
        af1.m205continue(r);
        af1.m205continue(c);
        af1.m205continue(v);
        return m15965if(r).put(c, v);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    public V remove(@b51 Object obj, @b51 Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.C(this.backingMap, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v;
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        return new Celse(r);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.f14398new;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapCreateRowMap = createRowMap();
        this.f14398new = mapCreateRowMap;
        return mapCreateRowMap;
    }

    @Override // com.google.common.collect.Table
    public int size() {
        Iterator<Map<C, V>> it = this.backingMap.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }
}
