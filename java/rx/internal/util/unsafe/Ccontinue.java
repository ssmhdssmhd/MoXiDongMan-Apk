package rx.internal.util.unsafe;

import android.support.v4.j32;
import android.support.v4.ve1;
import java.util.Iterator;
import java.util.Objects;
import sun.misc.Unsafe;

@j32
/* renamed from: rx.internal.util.unsafe.continue, reason: invalid class name */
/* loaded from: classes4.dex */
public class Ccontinue<E> extends Cvolatile<E> implements QueueProgressIndicators {

    /* renamed from: default, reason: not valid java name */
    private static final long f35892default;

    /* renamed from: extends, reason: not valid java name */
    private static final int f35893extends;

    /* renamed from: switch, reason: not valid java name */
    private static final long f35896switch;

    /* renamed from: throws, reason: not valid java name */
    private static final long f35897throws;

    /* renamed from: static, reason: not valid java name */
    public static final int f35895static = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: finally, reason: not valid java name */
    private static final Object f35894finally = new Object();

    static {
        Unsafe unsafe = Cimplements.f35953do;
        int iArrayIndexScale = unsafe.arrayIndexScale(Object[].class);
        if (4 == iArrayIndexScale) {
            f35893extends = 2;
        } else {
            if (8 != iArrayIndexScale) {
                throw new IllegalStateException("Unknown pointer size");
            }
            f35893extends = 3;
        }
        f35892default = unsafe.arrayBaseOffset(Object[].class);
        try {
            f35896switch = unsafe.objectFieldOffset(Ctransient.class.getDeclaredField("do"));
            try {
                f35897throws = unsafe.objectFieldOffset(Cvolatile.class.getDeclaredField("return"));
            } catch (NoSuchFieldException e) {
                InternalError internalError = new InternalError();
                internalError.initCause(e);
                throw internalError;
            }
        } catch (NoSuchFieldException e2) {
            InternalError internalError2 = new InternalError();
            internalError2.initCause(e2);
            throw internalError2;
        }
    }

    public Ccontinue(int i) {
        int iM8842if = ve1.m8842if(i);
        long j = iM8842if - 1;
        E[] eArr = (E[]) new Object[iM8842if + 1];
        this.f35987try = eArr;
        this.f35986new = j;
        m38967do(iM8842if);
        this.f35991public = eArr;
        this.f35990native = j;
        this.f35984for = j - 1;
        m38969final(0L);
    }

    /* renamed from: break, reason: not valid java name */
    private void m38962break(E[] eArr, long j, long j2, E e, long j3) {
        E[] eArr2 = (E[]) new Object[eArr.length];
        this.f35987try = eArr2;
        this.f35984for = (j3 + j) - 1;
        m38965class(eArr2, j2, e);
        m38966const(eArr, eArr2);
        m38965class(eArr, j2, f35894finally);
        m38969final(j + 1);
    }

    /* renamed from: case, reason: not valid java name */
    private E[] m38963case(E[] eArr) {
        return (E[]) ((Object[]) m38976try(eArr, m38972if(eArr.length - 1)));
    }

    /* renamed from: catch, reason: not valid java name */
    private void m38964catch(long j) {
        Cimplements.f35953do.putOrderedLong(this, f35897throws, j);
    }

    /* renamed from: class, reason: not valid java name */
    private static void m38965class(Object[] objArr, long j, Object obj) {
        Cimplements.f35953do.putOrderedObject(objArr, j, obj);
    }

    /* renamed from: const, reason: not valid java name */
    private void m38966const(E[] eArr, E[] eArr2) {
        m38965class(eArr, m38972if(eArr.length - 1), eArr2);
    }

    /* renamed from: do, reason: not valid java name */
    private void m38967do(int i) {
        this.f35985if = Math.min(i / 4, f35895static);
    }

    /* renamed from: else, reason: not valid java name */
    private long m38968else() {
        return Cimplements.f35953do.getLongVolatile(this, f35896switch);
    }

    /* renamed from: final, reason: not valid java name */
    private void m38969final(long j) {
        Cimplements.f35953do.putOrderedLong(this, f35896switch, j);
    }

    /* renamed from: for, reason: not valid java name */
    private static long m38970for(long j, long j2) {
        return m38972if(j & j2);
    }

    /* renamed from: goto, reason: not valid java name */
    private E m38971goto(E[] eArr, long j, long j2) {
        this.f35991public = eArr;
        return (E) m38976try(eArr, m38970for(j, j2));
    }

    /* renamed from: if, reason: not valid java name */
    private static long m38972if(long j) {
        return f35892default + (j << f35893extends);
    }

    /* renamed from: new, reason: not valid java name */
    private long m38973new() {
        return Cimplements.f35953do.getLongVolatile(this, f35897throws);
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m38974super(E[] eArr, E e, long j, long j2) {
        m38965class(eArr, j2, e);
        m38969final(j + 1);
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    private E m38975this(E[] eArr, long j, long j2) {
        this.f35991public = eArr;
        long jM38970for = m38970for(j, j2);
        E e = (E) m38976try(eArr, jM38970for);
        if (e == null) {
            return null;
        }
        m38965class(eArr, jM38970for, null);
        m38964catch(j + 1);
        return e;
    }

    /* renamed from: try, reason: not valid java name */
    private static <E> Object m38976try(E[] eArr, long j) {
        return Cimplements.f35953do.getObjectVolatile(eArr, j);
    }

    @Override // rx.internal.util.unsafe.QueueProgressIndicators
    public long currentConsumerIndex() {
        return m38973new();
    }

    @Override // rx.internal.util.unsafe.QueueProgressIndicators
    public long currentProducerIndex() {
        return m38968else();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public final boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        E[] eArr = this.f35987try;
        long j = this.f35994do;
        long j2 = this.f35986new;
        long jM38970for = m38970for(j, j2);
        if (j < this.f35984for) {
            return m38974super(eArr, e, j, jM38970for);
        }
        long j3 = this.f35985if + j;
        if (m38976try(eArr, m38970for(j3, j2)) == null) {
            this.f35984for = j3 - 1;
            return m38974super(eArr, e, j, jM38970for);
        }
        if (m38976try(eArr, m38970for(1 + j, j2)) != null) {
            return m38974super(eArr, e, j, jM38970for);
        }
        m38962break(eArr, j, jM38970for, e, j2);
        return true;
    }

    @Override // java.util.Queue
    public final E peek() {
        E[] eArr = this.f35991public;
        long j = this.f35997return;
        long j2 = this.f35990native;
        E e = (E) m38976try(eArr, m38970for(j, j2));
        return e == f35894finally ? m38971goto(m38963case(eArr), j, j2) : e;
    }

    @Override // java.util.Queue
    public final E poll() {
        E[] eArr = this.f35991public;
        long j = this.f35997return;
        long j2 = this.f35990native;
        long jM38970for = m38970for(j, j2);
        E e = (E) m38976try(eArr, jM38970for);
        boolean z = e == f35894finally;
        if (e == null || z) {
            if (z) {
                return m38975this(m38963case(eArr), j, j2);
            }
            return null;
        }
        m38965class(eArr, jM38970for, null);
        m38964catch(j + 1);
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        long jM38973new = m38973new();
        while (true) {
            long jM38968else = m38968else();
            long jM38973new2 = m38973new();
            if (jM38973new == jM38973new2) {
                return (int) (jM38968else - jM38973new2);
            }
            jM38973new = jM38973new2;
        }
    }
}
