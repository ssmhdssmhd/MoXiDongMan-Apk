package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import org.antlr.v4.runtime.misc.FlexibleHashMap;
import org.apache.commons.lang3.Cclass;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class pc0<K, V> implements Map<K, V> {

    /* renamed from: else, reason: not valid java name */
    public static final int f4899else = 16;

    /* renamed from: goto, reason: not valid java name */
    public static final int f4900goto = 8;

    /* renamed from: this, reason: not valid java name */
    public static final double f4901this = 0.75d;

    /* renamed from: case, reason: not valid java name */
    public int f4902case;

    /* renamed from: do, reason: not valid java name */
    public final Cinterface<? super K> f4903do;

    /* renamed from: for, reason: not valid java name */
    public int f4904for;

    /* renamed from: if, reason: not valid java name */
    public LinkedList<FlexibleHashMap.Entry<K, V>>[] f4905if;

    /* renamed from: new, reason: not valid java name */
    public int f4906new;

    /* renamed from: try, reason: not valid java name */
    public int f4907try;

    /* renamed from: android.support.v4.pc0$do, reason: invalid class name */
    public static class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f4908do;

        /* renamed from: if, reason: not valid java name */
        public V f4909if;

        public Cdo(K k, V v) {
            this.f4908do = k;
            this.f4909if = v;
        }

        public String toString() {
            return this.f4908do.toString() + ":" + this.f4909if.toString();
        }
    }

    public pc0() {
        this(null, 16, 8);
    }

    /* renamed from: do, reason: not valid java name */
    private static <K, V> LinkedList<FlexibleHashMap.Entry<K, V>>[] m5939do(int i) {
        return new LinkedList[i];
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5940new(String[] strArr) {
        pc0 pc0Var = new pc0();
        pc0Var.put("hi", 1);
        pc0Var.put("mom", 2);
        pc0Var.put("foo", 3);
        pc0Var.put("ach", 4);
        pc0Var.put("cbba", 5);
        pc0Var.put("d", 6);
        pc0Var.put("edf", 7);
        pc0Var.put("mom", 8);
        pc0Var.put("hi", 9);
        System.out.println(pc0Var);
        System.out.println(pc0Var.m5943try());
    }

    @Override // java.util.Map
    public void clear() {
        this.f4905if = m5939do(16);
        this.f4904for = 0;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: for, reason: not valid java name */
    public int m5941for(K k) {
        return this.f4903do.hashCode(k) & (this.f4905if.length - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object obj) {
        if (obj == 0) {
            return null;
        }
        LinkedList<FlexibleHashMap.Entry<K, V>> linkedList = this.f4905if[m5941for(obj)];
        if (linkedList == null) {
            return null;
        }
        Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (this.f4903do.equals(next.f4908do, obj)) {
                return next.f4909if;
            }
        }
        return null;
    }

    @Override // java.util.Map
    public int hashCode() {
        Cdo next;
        int iM9665for = y01.m9665for();
        for (LinkedList<FlexibleHashMap.Entry<K, V>> linkedList : this.f4905if) {
            if (linkedList != null) {
                Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
                while (it.hasNext() && (next = it.next()) != null) {
                    iM9665for = y01.m9668try(iM9665for, this.f4903do.hashCode(next.f4908do));
                }
            }
        }
        return y01.m9664do(iM9665for, size());
    }

    /* renamed from: if, reason: not valid java name */
    public void m5942if() {
        Cdo next;
        LinkedList<FlexibleHashMap.Entry<K, V>>[] linkedListArr = this.f4905if;
        this.f4907try += 4;
        int length = linkedListArr.length * 2;
        this.f4905if = m5939do(length);
        double d = length;
        Double.isNaN(d);
        this.f4906new = (int) (d * 0.75d);
        int size = size();
        for (LinkedList<FlexibleHashMap.Entry<K, V>> linkedList : linkedListArr) {
            if (linkedList != null) {
                Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
                while (it.hasNext() && (next = it.next()) != null) {
                    put(next.f4908do, next.f4909if);
                }
            }
        }
        this.f4904for = size;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f4904for == 0;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            return null;
        }
        if (this.f4904for > this.f4906new) {
            m5942if();
        }
        int iM5941for = m5941for(k);
        LinkedList<FlexibleHashMap.Entry<K, V>>[] linkedListArr = this.f4905if;
        LinkedList<FlexibleHashMap.Entry<K, V>> linkedList = linkedListArr[iM5941for];
        if (linkedList == null) {
            linkedList = new LinkedList<>();
            linkedListArr[iM5941for] = linkedList;
        }
        Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (this.f4903do.equals(next.f4908do, k)) {
                V v2 = next.f4909if;
                next.f4909if = v;
                this.f4904for++;
                return v2;
            }
        }
        linkedList.add(new Cdo(k, v));
        this.f4904for++;
        return null;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public int size() {
        return this.f4904for;
    }

    public String toString() {
        Cdo next;
        if (size() == 0) {
            return MessageFormatter.DELIM_STR;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(MessageFormatter.DELIM_START);
        boolean z = true;
        for (LinkedList<FlexibleHashMap.Entry<K, V>> linkedList : this.f4905if) {
            if (linkedList != null) {
                Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
                while (it.hasNext() && (next = it.next()) != null) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(next.toString());
                }
            }
        }
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public String m5943try() {
        StringBuilder sb = new StringBuilder();
        for (LinkedList<FlexibleHashMap.Entry<K, V>> linkedList : this.f4905if) {
            if (linkedList == null) {
                sb.append("null\n");
            } else {
                sb.append('[');
                Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
                boolean z = true;
                while (it.hasNext()) {
                    Cdo next = it.next();
                    if (z) {
                        z = false;
                    } else {
                        sb.append(Cclass.f28652do);
                    }
                    if (next == null) {
                        sb.append("_");
                    } else {
                        sb.append(next.toString());
                    }
                }
                sb.append("]\n");
            }
        }
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        ArrayList arrayList = new ArrayList(size());
        for (LinkedList<FlexibleHashMap.Entry<K, V>> linkedList : this.f4905if) {
            if (linkedList != null) {
                Iterator<FlexibleHashMap.Entry<K, V>> it = linkedList.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().f4909if);
                }
            }
        }
        return arrayList;
    }

    public pc0(Cinterface<? super K> cinterface) {
        this(cinterface, 16, 8);
    }

    public pc0(Cinterface<? super K> cinterface, int i, int i2) {
        this.f4904for = 0;
        this.f4906new = 12;
        this.f4907try = 1;
        this.f4902case = 8;
        this.f4903do = cinterface == null ? r51.f5664do : cinterface;
        this.f4905if = m5939do(i2);
        this.f4902case = i2;
    }
}
