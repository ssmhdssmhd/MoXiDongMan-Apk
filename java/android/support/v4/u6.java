package android.support.v4;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.functions.Func1;
import rx.internal.util.Cthis;

/* loaded from: classes4.dex */
public final class u6 {

    /* renamed from: do, reason: not valid java name */
    public static final long f6773do = Long.MIN_VALUE;

    /* renamed from: if, reason: not valid java name */
    public static final long f6774if = Long.MAX_VALUE;

    private u6() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m8253break(long j) {
        if (j >= 0) {
            return j != 0;
        }
        throw new IllegalArgumentException("n >= 0 required but it was " + j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0066, code lost:
    
        r0 = r10.addAndGet(-(r6 & Long.MAX_VALUE));
     */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T, R> void m8254case(AtomicLong atomicLong, Queue<T> queue, y22<? super R> y22Var, Func1<? super T, ? extends R> func1) {
        long jAddAndGet = atomicLong.get();
        if (jAddAndGet == Long.MAX_VALUE) {
            while (!y22Var.isUnsubscribed()) {
                Object objPoll = queue.poll();
                if (objPoll == null) {
                    y22Var.onCompleted();
                    return;
                }
                y22Var.onNext(func1.call(objPoll));
            }
            return;
        }
        do {
            long j = Long.MIN_VALUE;
            while (true) {
                if (j == jAddAndGet) {
                    if (j == jAddAndGet) {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        if (queue.isEmpty()) {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                    jAddAndGet = atomicLong.get();
                    if (jAddAndGet == j) {
                        break;
                    }
                } else {
                    if (y22Var.isUnsubscribed()) {
                        return;
                    }
                    Object objPoll2 = queue.poll();
                    if (objPoll2 == null) {
                        y22Var.onCompleted();
                        return;
                    } else {
                        y22Var.onNext(func1.call(objPoll2));
                        j++;
                    }
                }
            }
        } while (jAddAndGet != Long.MIN_VALUE);
    }

    /* renamed from: do, reason: not valid java name */
    public static long m8255do(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> boolean m8256else(AtomicLong atomicLong, long j, Queue<T> queue, y22<? super T> y22Var) {
        return m8258goto(atomicLong, j, queue, y22Var, Cthis.m38929for());
    }

    /* renamed from: for, reason: not valid java name */
    public static long m8257for(long j, long j2) {
        long j3 = j * j2;
        if (((j | j2) >>> 31) == 0 || j2 == 0 || j3 / j2 == j) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T, R> boolean m8258goto(AtomicLong atomicLong, long j, Queue<T> queue, y22<? super R> y22Var, Func1<? super T, ? extends R> func1) {
        long j2;
        long j3;
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + j);
        }
        if (j == 0) {
            return (atomicLong.get() & Long.MIN_VALUE) == 0;
        }
        do {
            j2 = atomicLong.get();
            j3 = j2 & Long.MIN_VALUE;
        } while (!atomicLong.compareAndSet(j2, m8255do(Long.MAX_VALUE & j2, j) | j3));
        if (j2 != Long.MIN_VALUE) {
            return j3 == 0;
        }
        m8254case(atomicLong, queue, y22Var, func1);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static long m8259if(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, m8255do(j2, j)));
        return j2;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> void m8260new(AtomicLong atomicLong, Queue<T> queue, y22<? super T> y22Var) {
        m8262try(atomicLong, queue, y22Var, Cthis.m38929for());
    }

    /* renamed from: this, reason: not valid java name */
    public static long m8261this(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                throw new IllegalStateException("More produced than requested: " + j3);
            }
        } while (!atomicLong.compareAndSet(j2, j3));
        return j3;
    }

    /* renamed from: try, reason: not valid java name */
    public static <T, R> void m8262try(AtomicLong atomicLong, Queue<T> queue, y22<? super R> y22Var, Func1<? super T, ? extends R> func1) {
        long j;
        do {
            j = atomicLong.get();
            if ((j & Long.MIN_VALUE) != 0) {
                return;
            }
        } while (!atomicLong.compareAndSet(j, Long.MIN_VALUE | j));
        if (j != 0) {
            m8254case(atomicLong, queue, y22Var, func1);
        }
    }
}
