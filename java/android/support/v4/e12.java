package android.support.v4;

import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class e12<T> implements SimplePlainQueue<T> {

    /* renamed from: case, reason: not valid java name */
    public final int f1197case;

    /* renamed from: else, reason: not valid java name */
    public AtomicReferenceArray<Object> f1199else;

    /* renamed from: for, reason: not valid java name */
    public long f1200for;

    /* renamed from: if, reason: not valid java name */
    public int f1202if;

    /* renamed from: new, reason: not valid java name */
    public final int f1203new;

    /* renamed from: try, reason: not valid java name */
    public AtomicReferenceArray<Object> f1204try;

    /* renamed from: this, reason: not valid java name */
    public static final int f1196this = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: break, reason: not valid java name */
    private static final Object f1195break = new Object();

    /* renamed from: do, reason: not valid java name */
    public final AtomicLong f1198do = new AtomicLong();

    /* renamed from: goto, reason: not valid java name */
    public final AtomicLong f1201goto = new AtomicLong();

    public e12(int i) {
        int iM9129if = we1.m9129if(Math.max(8, i));
        int i2 = iM9129if - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iM9129if + 1);
        this.f1204try = atomicReferenceArray;
        this.f1203new = i2;
        m1588do(iM9129if);
        this.f1199else = atomicReferenceArray;
        this.f1197case = i2;
        this.f1200for = i2 - 1;
        m1600while(0L);
    }

    /* renamed from: break, reason: not valid java name */
    private T m1584break(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f1199else = atomicReferenceArray;
        return (T) m1589else(atomicReferenceArray, m1591for(j, i));
    }

    /* renamed from: case, reason: not valid java name */
    private long m1585case() {
        return this.f1201goto.get();
    }

    /* renamed from: catch, reason: not valid java name */
    private T m1586catch(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f1199else = atomicReferenceArray;
        int iM1591for = m1591for(j, i);
        T t = (T) m1589else(atomicReferenceArray, iM1591for);
        if (t != null) {
            m1596super(atomicReferenceArray, iM1591for, null);
            m1590final(j + 1);
        }
        return t;
    }

    /* renamed from: class, reason: not valid java name */
    private void m1587class(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f1204try = atomicReferenceArray2;
        this.f1200for = (j2 + j) - 1;
        m1596super(atomicReferenceArray2, i, t);
        m1598throw(atomicReferenceArray, atomicReferenceArray2);
        m1596super(atomicReferenceArray, i, f1195break);
        m1600while(j + 1);
    }

    /* renamed from: do, reason: not valid java name */
    private void m1588do(int i) {
        this.f1202if = Math.min(i / 4, f1196this);
    }

    /* renamed from: else, reason: not valid java name */
    private static <E> Object m1589else(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: final, reason: not valid java name */
    private void m1590final(long j) {
        this.f1201goto.lazySet(j);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m1591for(long j, int i) {
        return m1593if(((int) j) & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private AtomicReferenceArray<Object> m1592goto(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        int iM1593if = m1593if(i);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) m1589else(atomicReferenceArray, iM1593if);
        m1596super(atomicReferenceArray, iM1593if, null);
        return atomicReferenceArray2;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m1593if(int i) {
        return i;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m1594import(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        m1596super(atomicReferenceArray, i, t);
        m1600while(j + 1);
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    private long m1595new() {
        return this.f1201goto.get();
    }

    /* renamed from: super, reason: not valid java name */
    private static void m1596super(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    /* renamed from: this, reason: not valid java name */
    private long m1597this() {
        return this.f1198do.get();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m1598throw(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        m1596super(atomicReferenceArray, m1593if(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    /* renamed from: try, reason: not valid java name */
    private long m1599try() {
        return this.f1198do.get();
    }

    /* renamed from: while, reason: not valid java name */
    private void m1600while(long j) {
        this.f1198do.lazySet(j);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public int m1601const() {
        long jM1585case = m1585case();
        while (true) {
            long jM1597this = m1597this();
            long jM1585case2 = m1585case();
            if (jM1585case == jM1585case2) {
                return (int) (jM1597this - jM1585case2);
            }
            jM1585case = jM1585case2;
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return m1597this() == m1585case();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t) {
        Objects.requireNonNull(t, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1204try;
        long jM1599try = m1599try();
        int i = this.f1203new;
        int iM1591for = m1591for(jM1599try, i);
        if (jM1599try < this.f1200for) {
            return m1594import(atomicReferenceArray, t, jM1599try, iM1591for);
        }
        long j = this.f1202if + jM1599try;
        if (m1589else(atomicReferenceArray, m1591for(j, i)) == null) {
            this.f1200for = j - 1;
            return m1594import(atomicReferenceArray, t, jM1599try, iM1591for);
        }
        if (m1589else(atomicReferenceArray, m1591for(1 + jM1599try, i)) == null) {
            return m1594import(atomicReferenceArray, t, jM1599try, iM1591for);
        }
        m1587class(atomicReferenceArray, jM1599try, iM1591for, t, i);
        return true;
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1199else;
        long jM1595new = m1595new();
        int i = this.f1197case;
        T t = (T) m1589else(atomicReferenceArray, m1591for(jM1595new, i));
        return t == f1195break ? m1584break(m1592goto(atomicReferenceArray, i + 1), jM1595new, i) : t;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @a51
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1199else;
        long jM1595new = m1595new();
        int i = this.f1197case;
        int iM1591for = m1591for(jM1595new, i);
        T t = (T) m1589else(atomicReferenceArray, iM1591for);
        boolean z = t == f1195break;
        if (t == null || z) {
            if (z) {
                return m1586catch(m1592goto(atomicReferenceArray, i + 1), jM1595new, i);
            }
            return null;
        }
        m1596super(atomicReferenceArray, iM1591for, null);
        m1590final(jM1595new + 1);
        return t;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f1204try;
        long jM1597this = m1597this();
        int i = this.f1203new;
        long j = 2 + jM1597this;
        if (m1589else(atomicReferenceArray, m1591for(j, i)) == null) {
            int iM1591for = m1591for(jM1597this, i);
            m1596super(atomicReferenceArray, iM1591for + 1, t2);
            m1596super(atomicReferenceArray, iM1591for, t);
            m1600while(j);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f1204try = atomicReferenceArray2;
        int iM1591for2 = m1591for(jM1597this, i);
        m1596super(atomicReferenceArray2, iM1591for2 + 1, t2);
        m1596super(atomicReferenceArray2, iM1591for2, t);
        m1598throw(atomicReferenceArray, atomicReferenceArray2);
        m1596super(atomicReferenceArray, iM1591for2, f1195break);
        m1600while(j);
        return true;
    }
}
