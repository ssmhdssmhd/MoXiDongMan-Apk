package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes4.dex */
public final class d12<T> implements Queue<T> {

    /* renamed from: case, reason: not valid java name */
    public int f913case;

    /* renamed from: do, reason: not valid java name */
    public final AtomicLong f914do;

    /* renamed from: else, reason: not valid java name */
    public AtomicReferenceArray<Object> f915else;

    /* renamed from: for, reason: not valid java name */
    public long f916for;

    /* renamed from: goto, reason: not valid java name */
    public final AtomicLong f917goto;

    /* renamed from: if, reason: not valid java name */
    public int f918if;

    /* renamed from: new, reason: not valid java name */
    public int f919new;

    /* renamed from: try, reason: not valid java name */
    public AtomicReferenceArray<Object> f920try;

    /* renamed from: this, reason: not valid java name */
    public static final int f912this = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: break, reason: not valid java name */
    private static final Object f911break = new Object();

    public d12(int i) {
        int iM8842if = ve1.m8842if(i);
        int i2 = iM8842if - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iM8842if + 1);
        this.f920try = atomicReferenceArray;
        this.f919new = i2;
        m1105do(iM8842if);
        this.f915else = atomicReferenceArray;
        this.f913case = i2;
        this.f916for = i2 - 1;
        this.f914do = new AtomicLong();
        this.f917goto = new AtomicLong();
    }

    /* renamed from: break, reason: not valid java name */
    private T m1101break(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f915else = atomicReferenceArray;
        return (T) m1106else(atomicReferenceArray, m1108for(j, i));
    }

    /* renamed from: case, reason: not valid java name */
    private long m1102case() {
        return this.f917goto.get();
    }

    /* renamed from: catch, reason: not valid java name */
    private T m1103catch(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f915else = atomicReferenceArray;
        int iM1108for = m1108for(j, i);
        T t = (T) m1106else(atomicReferenceArray, iM1108for);
        if (t == null) {
            return null;
        }
        m1113super(atomicReferenceArray, iM1108for, null);
        m1107final(j + 1);
        return t;
    }

    /* renamed from: const, reason: not valid java name */
    private void m1104const(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f920try = atomicReferenceArray2;
        this.f916for = (j2 + j) - 1;
        m1113super(atomicReferenceArray2, i, t);
        m1115throw(atomicReferenceArray, atomicReferenceArray2);
        m1113super(atomicReferenceArray, i, f911break);
        m1117while(j + 1);
    }

    /* renamed from: do, reason: not valid java name */
    private void m1105do(int i) {
        this.f918if = Math.min(i / 4, f912this);
    }

    /* renamed from: else, reason: not valid java name */
    private static <E> Object m1106else(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: final, reason: not valid java name */
    private void m1107final(long j) {
        this.f917goto.lazySet(j);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m1108for(long j, int i) {
        return m1110if(((int) j) & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private AtomicReferenceArray<Object> m1109goto(AtomicReferenceArray<Object> atomicReferenceArray) {
        return (AtomicReferenceArray) m1106else(atomicReferenceArray, m1110if(atomicReferenceArray.length() - 1));
    }

    /* renamed from: if, reason: not valid java name */
    private static int m1110if(int i) {
        return i;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m1111import(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        m1113super(atomicReferenceArray, i, t);
        m1117while(j + 1);
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    private long m1112new() {
        return this.f917goto.get();
    }

    /* renamed from: super, reason: not valid java name */
    private static void m1113super(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    /* renamed from: this, reason: not valid java name */
    private long m1114this() {
        return this.f914do.get();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m1115throw(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        m1113super(atomicReferenceArray, m1110if(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    /* renamed from: try, reason: not valid java name */
    private long m1116try() {
        return this.f914do.get();
    }

    /* renamed from: while, reason: not valid java name */
    private void m1117while(long j) {
        this.f914do.lazySet(j);
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m1118class(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f920try;
        long jM1114this = m1114this();
        int i = this.f919new;
        long j = 2 + jM1114this;
        if (m1106else(atomicReferenceArray, m1108for(j, i)) == null) {
            int iM1108for = m1108for(jM1114this, i);
            m1113super(atomicReferenceArray, iM1108for + 1, t2);
            m1113super(atomicReferenceArray, iM1108for, t);
            m1117while(j);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f920try = atomicReferenceArray2;
        int iM1108for2 = m1108for(jM1114this, i);
        m1113super(atomicReferenceArray2, iM1108for2 + 1, t2);
        m1113super(atomicReferenceArray2, iM1108for2, t);
        m1115throw(atomicReferenceArray, atomicReferenceArray2);
        m1113super(atomicReferenceArray, iM1108for2, f911break);
        m1117while(j);
        return true;
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
        return m1114this() == m1102case();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f920try;
        long jM1116try = m1116try();
        int i = this.f919new;
        int iM1108for = m1108for(jM1116try, i);
        if (jM1116try < this.f916for) {
            return m1111import(atomicReferenceArray, t, jM1116try, iM1108for);
        }
        long j = this.f918if + jM1116try;
        if (m1106else(atomicReferenceArray, m1108for(j, i)) == null) {
            this.f916for = j - 1;
            return m1111import(atomicReferenceArray, t, jM1116try, iM1108for);
        }
        if (m1106else(atomicReferenceArray, m1108for(1 + jM1116try, i)) == null) {
            return m1111import(atomicReferenceArray, t, jM1116try, iM1108for);
        }
        m1104const(atomicReferenceArray, jM1116try, iM1108for, t, i);
        return true;
    }

    @Override // java.util.Queue
    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f915else;
        long jM1112new = m1112new();
        int i = this.f913case;
        T t = (T) m1106else(atomicReferenceArray, m1108for(jM1112new, i));
        return t == f911break ? m1101break(m1109goto(atomicReferenceArray), jM1112new, i) : t;
    }

    @Override // java.util.Queue
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f915else;
        long jM1112new = m1112new();
        int i = this.f913case;
        int iM1108for = m1108for(jM1112new, i);
        T t = (T) m1106else(atomicReferenceArray, iM1108for);
        boolean z = t == f911break;
        if (t == null || z) {
            if (z) {
                return m1103catch(m1109goto(atomicReferenceArray), jM1112new, i);
            }
            return null;
        }
        m1113super(atomicReferenceArray, iM1108for, null);
        m1107final(jM1112new + 1);
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
        long jM1102case = m1102case();
        while (true) {
            long jM1114this = m1114this();
            long jM1102case2 = m1102case();
            if (jM1102case == jM1102case2) {
                return (int) (jM1114this - jM1102case2);
            }
            jM1102case = jM1102case2;
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
