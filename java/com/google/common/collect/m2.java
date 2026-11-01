package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class m2 {
    private m2() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static <E> LinkedBlockingDeque<E> m16037break(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedBlockingDeque<>(Cextends.m15771if(iterable));
        }
        LinkedBlockingDeque<E> linkedBlockingDeque = new LinkedBlockingDeque<>();
        r1.m16182do(linkedBlockingDeque, iterable);
        return linkedBlockingDeque;
    }

    @li0
    /* renamed from: case, reason: not valid java name */
    public static <E> ConcurrentLinkedQueue<E> m16038case() {
        return new ConcurrentLinkedQueue<>();
    }

    @li0
    /* renamed from: catch, reason: not valid java name */
    public static <E> LinkedBlockingQueue<E> m16039catch() {
        return new LinkedBlockingQueue<>();
    }

    @li0
    /* renamed from: class, reason: not valid java name */
    public static <E> LinkedBlockingQueue<E> m16040class(int i) {
        return new LinkedBlockingQueue<>(i);
    }

    @li0
    /* renamed from: const, reason: not valid java name */
    public static <E> LinkedBlockingQueue<E> m16041const(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedBlockingQueue<>(Cextends.m15771if(iterable));
        }
        LinkedBlockingQueue<E> linkedBlockingQueue = new LinkedBlockingQueue<>();
        r1.m16182do(linkedBlockingQueue, iterable);
        return linkedBlockingQueue;
    }

    @lf
    @li0
    @o8
    /* renamed from: do, reason: not valid java name */
    public static <E> int m16042do(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i, long j, TimeUnit timeUnit) throws InterruptedException {
        af1.m205continue(collection);
        long jNanoTime = System.nanoTime() + timeUnit.toNanos(j);
        int iDrainTo = 0;
        while (iDrainTo < i) {
            iDrainTo += blockingQueue.drainTo(collection, i - iDrainTo);
            if (iDrainTo < i) {
                E ePoll = blockingQueue.poll(jNanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
                if (ePoll == null) {
                    break;
                }
                collection.add(ePoll);
                iDrainTo++;
            }
        }
        return iDrainTo;
    }

    @li0
    /* renamed from: else, reason: not valid java name */
    public static <E> ConcurrentLinkedQueue<E> m16043else(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new ConcurrentLinkedQueue<>(Cextends.m15771if(iterable));
        }
        ConcurrentLinkedQueue<E> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        r1.m16182do(concurrentLinkedQueue, iterable);
        return concurrentLinkedQueue;
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    public static <E extends Comparable> PriorityBlockingQueue<E> m16044final() {
        return new PriorityBlockingQueue<>();
    }

    @li0
    /* renamed from: for, reason: not valid java name */
    public static <E> ArrayBlockingQueue<E> m16045for(int i) {
        return new ArrayBlockingQueue<>(i);
    }

    @li0
    /* renamed from: goto, reason: not valid java name */
    public static <E> LinkedBlockingDeque<E> m16046goto() {
        return new LinkedBlockingDeque<>();
    }

    @lf
    @li0
    @o8
    /* renamed from: if, reason: not valid java name */
    public static <E> int m16047if(BlockingQueue<E> blockingQueue, Collection<? super E> collection, int i, long j, TimeUnit timeUnit) {
        E ePoll;
        af1.m205continue(collection);
        long jNanoTime = System.nanoTime() + timeUnit.toNanos(j);
        int iDrainTo = 0;
        boolean z = false;
        while (iDrainTo < i) {
            try {
                iDrainTo += blockingQueue.drainTo(collection, i - iDrainTo);
                if (iDrainTo < i) {
                    while (true) {
                        try {
                            ePoll = blockingQueue.poll(jNanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
                            break;
                        } catch (InterruptedException unused) {
                            z = true;
                        }
                    }
                    if (ePoll == null) {
                        break;
                    }
                    collection.add(ePoll);
                    iDrainTo++;
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return iDrainTo;
    }

    @li0
    /* renamed from: import, reason: not valid java name */
    public static <E> SynchronousQueue<E> m16048import() {
        return new SynchronousQueue<>();
    }

    /* renamed from: native, reason: not valid java name */
    public static <E> Deque<E> m16049native(Deque<E> deque) {
        return l3.m16021this(deque, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static <E> ArrayDeque<E> m16050new() {
        return new ArrayDeque<>();
    }

    /* renamed from: public, reason: not valid java name */
    public static <E> Queue<E> m16051public(Queue<E> queue) {
        return l3.m16016public(queue, null);
    }

    @li0
    /* renamed from: super, reason: not valid java name */
    public static <E extends Comparable> PriorityBlockingQueue<E> m16052super(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityBlockingQueue<>(Cextends.m15771if(iterable));
        }
        PriorityBlockingQueue<E> priorityBlockingQueue = new PriorityBlockingQueue<>();
        r1.m16182do(priorityBlockingQueue, iterable);
        return priorityBlockingQueue;
    }

    @li0
    /* renamed from: this, reason: not valid java name */
    public static <E> LinkedBlockingDeque<E> m16053this(int i) {
        return new LinkedBlockingDeque<>(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <E extends Comparable> PriorityQueue<E> m16054throw() {
        return new PriorityQueue<>();
    }

    /* renamed from: try, reason: not valid java name */
    public static <E> ArrayDeque<E> m16055try(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new ArrayDeque<>(Cextends.m15771if(iterable));
        }
        ArrayDeque<E> arrayDeque = new ArrayDeque<>();
        r1.m16182do(arrayDeque, iterable);
        return arrayDeque;
    }

    /* renamed from: while, reason: not valid java name */
    public static <E extends Comparable> PriorityQueue<E> m16056while(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new PriorityQueue<>(Cextends.m15771if(iterable));
        }
        PriorityQueue<E> priorityQueue = new PriorityQueue<>();
        r1.m16182do(priorityQueue, iterable);
        return priorityQueue;
    }
}
