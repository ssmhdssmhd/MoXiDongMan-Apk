package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes4.dex */
public final class f12<T> implements Queue<T> {

    /* renamed from: case, reason: not valid java name */
    public int f1658case;

    /* renamed from: do, reason: not valid java name */
    public final AtomicLong f1659do;

    /* renamed from: else, reason: not valid java name */
    public AtomicReferenceArray<Object> f1660else;

    /* renamed from: for, reason: not valid java name */
    public long f1661for;

    /* renamed from: goto, reason: not valid java name */
    public final AtomicLong f1662goto;

    /* renamed from: if, reason: not valid java name */
    public int f1663if;

    /* renamed from: new, reason: not valid java name */
    public int f1664new;

    /* renamed from: try, reason: not valid java name */
    public AtomicReferenceArray<Object> f1665try;

    /* renamed from: this, reason: not valid java name */
    public static final int f1657this = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: break, reason: not valid java name */
    private static final Object f1656break = new Object();

    public f12(int i) {
        int iM8842if = ve1.m8842if(Math.max(8, i));
        int i2 = iM8842if - 1;
        this.f1659do = new AtomicLong();
        this.f1662goto = new AtomicLong();
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iM8842if + 1);
        this.f1665try = atomicReferenceArray;
        this.f1664new = i2;
        m2095do(iM8842if);
        this.f1660else = atomicReferenceArray;
        this.f1658case = i2;
        this.f1661for = i2 - 1;
        m2104throw(0L);
    }

    /* renamed from: break, reason: not valid java name */
    private T m2090break(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f1660else = atomicReferenceArray;
        return (T) m2096else(atomicReferenceArray, m2098for(j, i));
    }

    /* renamed from: case, reason: not valid java name */
    private long m2091case() {
        return this.f1662goto.get();
    }

    /* renamed from: catch, reason: not valid java name */
    private T m2092catch(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f1660else = atomicReferenceArray;
        int iM2098for = m2098for(j, i);
        T t = (T) m2096else(atomicReferenceArray, iM2098for);
        if (t == null) {
            return null;
        }
        m2094const(j + 1);
        m2097final(atomicReferenceArray, iM2098for, null);
        return t;
    }

    /* renamed from: class, reason: not valid java name */
    private void m2093class(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f1665try = atomicReferenceArray2;
        this.f1661for = (j2 + j) - 1;
        m2104throw(j + 1);
        m2097final(atomicReferenceArray2, i, t);
        m2102super(atomicReferenceArray, atomicReferenceArray2);
        m2097final(atomicReferenceArray, i, f1656break);
    }

    /* renamed from: const, reason: not valid java name */
    private void m2094const(long j) {
        this.f1662goto.lazySet(j);
    }

    /* renamed from: do, reason: not valid java name */
    private void m2095do(int i) {
        this.f1663if = Math.min(i / 4, f1657this);
    }

    /* renamed from: else, reason: not valid java name */
    private static <E> Object m2096else(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m2097final(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m2098for(long j, int i) {
        return m2100if(((int) j) & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private AtomicReferenceArray<Object> m2099goto(AtomicReferenceArray<Object> atomicReferenceArray) {
        return (AtomicReferenceArray) m2096else(atomicReferenceArray, m2100if(atomicReferenceArray.length() - 1));
    }

    /* renamed from: if, reason: not valid java name */
    private static int m2100if(int i) {
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    private long m2101new() {
        return this.f1662goto.get();
    }

    /* renamed from: super, reason: not valid java name */
    private void m2102super(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        m2097final(atomicReferenceArray, m2100if(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    /* renamed from: this, reason: not valid java name */
    private long m2103this() {
        return this.f1659do.get();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m2104throw(long j) {
        this.f1659do.lazySet(j);
    }

    /* renamed from: try, reason: not valid java name */
    private long m2105try() {
        return this.f1659do.get();
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m2106while(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        m2104throw(j + 1);
        m2097final(atomicReferenceArray, i, t);
        return true;
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public T element() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m2103this() == m2091case();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        Objects.requireNonNull(t);
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1665try;
        long jM2105try = m2105try();
        int i = this.f1664new;
        int iM2098for = m2098for(jM2105try, i);
        if (jM2105try < this.f1661for) {
            return m2106while(atomicReferenceArray, t, jM2105try, iM2098for);
        }
        long j = this.f1663if + jM2105try;
        if (m2096else(atomicReferenceArray, m2098for(j, i)) == null) {
            this.f1661for = j - 1;
            return m2106while(atomicReferenceArray, t, jM2105try, iM2098for);
        }
        if (m2096else(atomicReferenceArray, m2098for(1 + jM2105try, i)) != null) {
            return m2106while(atomicReferenceArray, t, jM2105try, iM2098for);
        }
        m2093class(atomicReferenceArray, jM2105try, iM2098for, t, i);
        return true;
    }

    @Override // java.util.Queue
    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1660else;
        long jM2101new = m2101new();
        int i = this.f1658case;
        T t = (T) m2096else(atomicReferenceArray, m2098for(jM2101new, i));
        return t == f1656break ? m2090break(m2099goto(atomicReferenceArray), jM2101new, i) : t;
    }

    @Override // java.util.Queue
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1660else;
        long jM2101new = m2101new();
        int i = this.f1658case;
        int iM2098for = m2098for(jM2101new, i);
        T t = (T) m2096else(atomicReferenceArray, iM2098for);
        boolean z = t == f1656break;
        if (t == null || z) {
            if (z) {
                return m2092catch(m2099goto(atomicReferenceArray), jM2101new, i);
            }
            return null;
        }
        m2094const(jM2101new + 1);
        m2097final(atomicReferenceArray, iM2098for, null);
        return t;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public int size() {
        long jM2091case = m2091case();
        while (true) {
            long jM2103this = m2103this();
            long jM2091case2 = m2091case();
            if (jM2091case == jM2091case2) {
                return (int) (jM2103this - jM2091case2);
            }
            jM2091case = jM2091case2;
        }
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public T remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        throw new UnsupportedOperationException();
    }
}
