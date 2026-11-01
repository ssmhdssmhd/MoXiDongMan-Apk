package com.google.protobuf;

import com.google.protobuf.FieldSet;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes2.dex */
class b1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: case, reason: not valid java name */
    private Map<K, V> f16617case;

    /* renamed from: do, reason: not valid java name */
    private final int f16618do;

    /* renamed from: else, reason: not valid java name */
    private volatile b1<K, V>.Cfor f16619else;

    /* renamed from: for, reason: not valid java name */
    private Map<K, V> f16620for;

    /* renamed from: if, reason: not valid java name */
    private List<b1<K, V>.Ctry> f16621if;

    /* renamed from: new, reason: not valid java name */
    private boolean f16622new;

    /* renamed from: try, reason: not valid java name */
    private volatile b1<K, V>.Celse f16623try;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* renamed from: com.google.protobuf.b1$do, reason: invalid class name */
    public class Cdo<FieldDescriptorType> extends b1<FieldDescriptorType, Object> {
        public Cdo(int i) {
            super(i, null);
        }

        @Override // com.google.protobuf.b1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((Comparable) obj, obj2);
        }

        @Override // com.google.protobuf.b1
        /* renamed from: while */
        public void mo19823while() {
            if (!m19822throw()) {
                for (int i = 0; i < m19816catch(); i++) {
                    Map.Entry<FieldDescriptorType, Object> entryM19815break = m19815break(i);
                    if (((FieldSet.FieldDescriptorLite) entryM19815break.getKey()).isRepeated()) {
                        entryM19815break.setValue(Collections.unmodifiableList((List) entryM19815break.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : m19818const()) {
                    if (((FieldSet.FieldDescriptorLite) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.mo19823while();
        }
    }

    /* renamed from: com.google.protobuf.b1$else, reason: invalid class name */
    public class Celse extends AbstractSet<Map.Entry<K, V>> {
        private Celse() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            b1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = b1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            b1.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new Ccase(b1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            b1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return b1.this.size();
        }

        public /* synthetic */ Celse(b1 b1Var, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.b1$for, reason: invalid class name */
    public class Cfor extends b1<K, V>.Celse {
        private Cfor() {
            super(b1.this, null);
        }

        @Override // com.google.protobuf.b1.Celse, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new Cif(b1.this, null);
        }

        public /* synthetic */ Cfor(b1 b1Var, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.b1$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final Iterator<Object> f16633do = new Cdo();

        /* renamed from: if, reason: not valid java name */
        private static final Iterable<Object> f16634if = new Cif();

        /* renamed from: com.google.protobuf.b1$new$do, reason: invalid class name */
        public class Cdo implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* renamed from: com.google.protobuf.b1$new$if, reason: invalid class name */
        public class Cif implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return Cnew.f16633do;
            }
        }

        private Cnew() {
        }

        /* renamed from: if, reason: not valid java name */
        public static <T> Iterable<T> m19830if() {
            return (Iterable<T>) f16634if;
        }
    }

    /* renamed from: com.google.protobuf.b1$try, reason: invalid class name */
    public class Ctry implements Map.Entry<K, V>, Comparable<b1<K, V>.Ctry> {

        /* renamed from: do, reason: not valid java name */
        private final K f16635do;

        /* renamed from: if, reason: not valid java name */
        private V f16637if;

        public Ctry(b1 b1Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m19831if(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(b1<K, V>.Ctry ctry) {
            return getKey().compareTo(ctry.getKey());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return m19831if(this.f16635do, entry.getKey()) && m19831if(this.f16637if, entry.getValue());
        }

        @Override // java.util.Map.Entry
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public K getKey() {
            return this.f16635do;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f16637if;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f16635do;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.f16637if;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            b1.this.m19805else();
            V v2 = this.f16637if;
            this.f16637if = v;
            return v2;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.f16635do);
            String strValueOf2 = String.valueOf(this.f16637if);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append("=");
            sb.append(strValueOf2);
            return sb.toString();
        }

        public Ctry(K k, V v) {
            this.f16635do = k;
            this.f16637if = v;
        }
    }

    public /* synthetic */ b1(int i, Cdo cdo) {
        this(i);
    }

    /* renamed from: case, reason: not valid java name */
    private int m19803case(K k) {
        int size = this.f16621if.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo(this.f16621if.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k.compareTo(this.f16621if.get(i2).getKey());
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public void m19805else() {
        if (this.f16622new) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static <FieldDescriptorType extends FieldSet.FieldDescriptorLite<FieldDescriptorType>> b1<FieldDescriptorType, Object> m19808import(int i) {
        return new Cdo(i);
    }

    /* renamed from: native, reason: not valid java name */
    public static <K extends Comparable<K>, V> b1<K, V> m19809native(int i) {
        return new b1<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public V m19811return(int i) {
        m19805else();
        V value = this.f16621if.remove(i).getValue();
        if (!this.f16620for.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m19812super().entrySet().iterator();
            this.f16621if.add(new Ctry(this, it.next()));
            it.remove();
        }
        return value;
    }

    /* renamed from: super, reason: not valid java name */
    private SortedMap<K, V> m19812super() {
        m19805else();
        if (this.f16620for.isEmpty() && !(this.f16620for instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f16620for = treeMap;
            this.f16617case = treeMap.descendingMap();
        }
        return (SortedMap) this.f16620for;
    }

    /* renamed from: this, reason: not valid java name */
    private void m19813this() {
        m19805else();
        if (!this.f16621if.isEmpty() || (this.f16621if instanceof ArrayList)) {
            return;
        }
        this.f16621if = new ArrayList(this.f16618do);
    }

    /* renamed from: break, reason: not valid java name */
    public Map.Entry<K, V> m19815break(int i) {
        return this.f16621if.get(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m19816catch() {
        return this.f16621if.size();
    }

    /* renamed from: class, reason: not valid java name */
    public int m19817class() {
        return this.f16620for.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m19805else();
        if (!this.f16621if.isEmpty()) {
            this.f16621if.clear();
        }
        if (this.f16620for.isEmpty()) {
            return;
        }
        this.f16620for.clear();
    }

    /* renamed from: const, reason: not valid java name */
    public Iterable<Map.Entry<K, V>> m19818const() {
        return this.f16620for.isEmpty() ? Cnew.m19830if() : this.f16620for.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m19803case(comparable) >= 0 || this.f16620for.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f16623try == null) {
            this.f16623try = new Celse(this, null);
        }
        return this.f16623try;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return super.equals(obj);
        }
        b1 b1Var = (b1) obj;
        int size = size();
        if (size != b1Var.size()) {
            return false;
        }
        int iM19816catch = m19816catch();
        if (iM19816catch != b1Var.m19816catch()) {
            return entrySet().equals(b1Var.entrySet());
        }
        for (int i = 0; i < iM19816catch; i++) {
            if (!m19815break(i).equals(b1Var.m19815break(i))) {
                return false;
            }
        }
        if (iM19816catch != size) {
            return this.f16620for.equals(b1Var.f16620for);
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public Iterable<Map.Entry<K, V>> m19819final() {
        return this.f16617case.isEmpty() ? Cnew.m19830if() : this.f16617case.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iM19803case = m19803case(comparable);
        return iM19803case >= 0 ? this.f16621if.get(iM19803case).getValue() : this.f16620for.get(comparable);
    }

    /* renamed from: goto, reason: not valid java name */
    public Set<Map.Entry<K, V>> m19820goto() {
        if (this.f16619else == null) {
            this.f16619else = new Cfor(this, null);
        }
        return this.f16619else;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iM19816catch = m19816catch();
        int iHashCode = 0;
        for (int i = 0; i < iM19816catch; i++) {
            iHashCode += this.f16621if.get(i).hashCode();
        }
        return m19817class() > 0 ? iHashCode + this.f16620for.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public V put(K k, V v) {
        m19805else();
        int iM19803case = m19803case(k);
        if (iM19803case >= 0) {
            return this.f16621if.get(iM19803case).setValue(v);
        }
        m19813this();
        int i = -(iM19803case + 1);
        if (i >= this.f16618do) {
            return m19812super().put(k, v);
        }
        int size = this.f16621if.size();
        int i2 = this.f16618do;
        if (size == i2) {
            b1<K, V>.Ctry ctryRemove = this.f16621if.remove(i2 - 1);
            m19812super().put(ctryRemove.getKey(), ctryRemove.getValue());
        }
        this.f16621if.add(i, new Ctry(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m19805else();
        Comparable comparable = (Comparable) obj;
        int iM19803case = m19803case(comparable);
        if (iM19803case >= 0) {
            return m19811return(iM19803case);
        }
        if (this.f16620for.isEmpty()) {
            return null;
        }
        return this.f16620for.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f16621if.size() + this.f16620for.size();
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m19822throw() {
        return this.f16622new;
    }

    /* renamed from: while, reason: not valid java name */
    public void mo19823while() {
        if (this.f16622new) {
            return;
        }
        this.f16620for = this.f16620for.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16620for);
        this.f16617case = this.f16617case.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16617case);
        this.f16622new = true;
    }

    /* renamed from: com.google.protobuf.b1$case, reason: invalid class name */
    public class Ccase implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        private int f16624do;

        /* renamed from: for, reason: not valid java name */
        private Iterator<Map.Entry<K, V>> f16625for;

        /* renamed from: if, reason: not valid java name */
        private boolean f16626if;

        private Ccase() {
            this.f16624do = -1;
        }

        /* renamed from: do, reason: not valid java name */
        private Iterator<Map.Entry<K, V>> m19824do() {
            if (this.f16625for == null) {
                this.f16625for = b1.this.f16620for.entrySet().iterator();
            }
            return this.f16625for;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f16624do + 1 >= b1.this.f16621if.size()) {
                return !b1.this.f16620for.isEmpty() && m19824do().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.f16626if = true;
            int i = this.f16624do + 1;
            this.f16624do = i;
            return i < b1.this.f16621if.size() ? (Map.Entry) b1.this.f16621if.get(this.f16624do) : m19824do().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f16626if) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f16626if = false;
            b1.this.m19805else();
            if (this.f16624do >= b1.this.f16621if.size()) {
                m19824do().remove();
                return;
            }
            b1 b1Var = b1.this;
            int i = this.f16624do;
            this.f16624do = i - 1;
            b1Var.m19811return(i);
        }

        public /* synthetic */ Ccase(b1 b1Var, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.b1$if, reason: invalid class name */
    public class Cif implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        private int f16630do;

        /* renamed from: if, reason: not valid java name */
        private Iterator<Map.Entry<K, V>> f16632if;

        private Cif() {
            this.f16630do = b1.this.f16621if.size();
        }

        /* renamed from: do, reason: not valid java name */
        private Iterator<Map.Entry<K, V>> m19827do() {
            if (this.f16632if == null) {
                this.f16632if = b1.this.f16617case.entrySet().iterator();
            }
            return this.f16632if;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f16630do;
            return (i > 0 && i <= b1.this.f16621if.size()) || m19827do().hasNext();
        }

        @Override // java.util.Iterator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (m19827do().hasNext()) {
                return m19827do().next();
            }
            List list = b1.this.f16621if;
            int i = this.f16630do - 1;
            this.f16630do = i;
            return (Map.Entry) list.get(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public /* synthetic */ Cif(b1 b1Var, Cdo cdo) {
            this();
        }
    }

    private b1(int i) {
        this.f16618do = i;
        this.f16621if = Collections.emptyList();
        this.f16620for = Collections.emptyMap();
        this.f16617case = Collections.emptyMap();
    }
}
