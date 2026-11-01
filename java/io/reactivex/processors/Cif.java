package io.reactivex.processors;

import android.support.v4.a01;
import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.processors.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> extends Cfor<T> {

    /* renamed from: case, reason: not valid java name */
    public final AtomicReference<Object> f27510case;

    /* renamed from: else, reason: not valid java name */
    public final AtomicReference<Throwable> f27511else;

    /* renamed from: for, reason: not valid java name */
    public final ReadWriteLock f27512for;

    /* renamed from: goto, reason: not valid java name */
    public long f27513goto;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27514if;

    /* renamed from: new, reason: not valid java name */
    public final Lock f27515new;

    /* renamed from: try, reason: not valid java name */
    public final Lock f27516try;

    /* renamed from: this, reason: not valid java name */
    public static final Object[] f27509this = new Object[0];

    /* renamed from: break, reason: not valid java name */
    public static final Cdo[] f27507break = new Cdo[0];

    /* renamed from: catch, reason: not valid java name */
    public static final Cdo[] f27508catch = new Cdo[0];

    /* renamed from: io.reactivex.processors.if$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Subscription, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {
        private static final long serialVersionUID = 3293175281126227086L;
        public volatile boolean cancelled;
        public final Subscriber<? super T> downstream;
        public boolean emitting;
        public boolean fastPath;
        public long index;
        public boolean next;
        public AppendOnlyLinkedArrayList<Object> queue;
        public final Cif<T> state;

        public Cdo(Subscriber<? super T> subscriber, Cif<T> cif) {
            this.downstream = subscriber;
            this.state = cif;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.state.Y7(this);
        }

        public void emitFirst() {
            if (this.cancelled) {
                return;
            }
            synchronized (this) {
                if (this.cancelled) {
                    return;
                }
                if (this.next) {
                    return;
                }
                Cif<T> cif = this.state;
                Lock lock = cif.f27515new;
                lock.lock();
                this.index = cif.f27513goto;
                Object obj = cif.f27510case.get();
                lock.unlock();
                this.emitting = obj != null;
                this.next = true;
                if (obj == null || test(obj)) {
                    return;
                }
                emitLoop();
            }
        }

        public void emitLoop() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.cancelled) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.queue;
                    if (appendOnlyLinkedArrayList == null) {
                        this.emitting = false;
                        return;
                    }
                    this.queue = null;
                }
                appendOnlyLinkedArrayList.m29710new(this);
            }
        }

        public void emitNext(Object obj, long j) {
            if (this.cancelled) {
                return;
            }
            if (!this.fastPath) {
                synchronized (this) {
                    if (this.cancelled) {
                        return;
                    }
                    if (this.index == j) {
                        return;
                    }
                    if (this.emitting) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.queue;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.queue = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.m29708for(obj);
                        return;
                    }
                    this.next = true;
                    this.fastPath = true;
                }
            }
            test(obj);
        }

        public boolean isFull() {
            return get() == 0;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this, j);
            }
        }

        @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
        public boolean test(Object obj) {
            if (this.cancelled) {
                return true;
            }
            if (Cbreak.isComplete(obj)) {
                this.downstream.onComplete();
                return true;
            }
            if (Cbreak.isError(obj)) {
                this.downstream.onError(Cbreak.getError(obj));
                return true;
            }
            long j = get();
            if (j == 0) {
                cancel();
                this.downstream.onError(new a01("Could not deliver value due to lack of requests"));
                return true;
            }
            this.downstream.onNext((Object) Cbreak.getValue(obj));
            if (j == Long.MAX_VALUE) {
                return false;
            }
            decrementAndGet();
            return false;
        }
    }

    public Cif() {
        this.f27510case = new AtomicReference<>();
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f27512for = reentrantReadWriteLock;
        this.f27515new = reentrantReadWriteLock.readLock();
        this.f27516try = reentrantReadWriteLock.writeLock();
        this.f27514if = new AtomicReference<>(f27507break);
        this.f27511else = new AtomicReference<>();
    }

    @b41
    @gl
    public static <T> Cif<T> R7() {
        return new Cif<>();
    }

    @b41
    @gl
    public static <T> Cif<T> S7(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "defaultValue is null");
        return new Cif<>(t);
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        Object obj = this.f27510case.get();
        if (Cbreak.isError(obj)) {
            return Cbreak.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return Cbreak.isComplete(this.f27510case.get());
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27514if.get().length != 0;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return Cbreak.isError(this.f27510case.get());
    }

    public boolean Q7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27514if.get();
            if (cdoArr == f27508catch) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27514if.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    @a51
    public T T7() {
        Object obj = this.f27510case.get();
        if (Cbreak.isComplete(obj) || Cbreak.isError(obj)) {
            return null;
        }
        return (T) Cbreak.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] U7() {
        Object[] objArr = f27509this;
        Object[] objArrV7 = V7(objArr);
        return objArrV7 == objArr ? new Object[0] : objArrV7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] V7(T[] tArr) {
        Object obj = this.f27510case.get();
        if (obj == null || Cbreak.isComplete(obj) || Cbreak.isError(obj)) {
            if (tArr.length != 0) {
                tArr[0] = 0;
            }
            return tArr;
        }
        Object value = Cbreak.getValue(obj);
        if (tArr.length == 0) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = value;
            return tArr2;
        }
        tArr[0] = value;
        if (tArr.length == 1) {
            return tArr;
        }
        tArr[1] = 0;
        return tArr;
    }

    public boolean W7() {
        Object obj = this.f27510case.get();
        return (obj == null || Cbreak.isComplete(obj) || Cbreak.isError(obj)) ? false : true;
    }

    public boolean X7(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        Cdo<T>[] cdoArr = this.f27514if.get();
        for (Cdo<T> cdo : cdoArr) {
            if (cdo.isFull()) {
                return false;
            }
        }
        Object next = Cbreak.next(t);
        Z7(next);
        for (Cdo<T> cdo2 : cdoArr) {
            cdo2.emitNext(next, this.f27513goto);
        }
        return true;
    }

    public void Y7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27514if.get();
            int length = cdoArr.length;
            if (length == 0) {
                return;
            }
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (cdoArr[i2] == cdo) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cdoArr2 = f27507break;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27514if.compareAndSet(cdoArr, cdoArr2));
    }

    public void Z7(Object obj) {
        Lock lock = this.f27516try;
        lock.lock();
        this.f27513goto++;
        this.f27510case.lazySet(obj);
        lock.unlock();
    }

    public int a8() {
        return this.f27514if.get().length;
    }

    public Cdo<T>[] b8(Object obj) {
        Cdo<T>[] andSet = this.f27514if.get();
        Cdo<T>[] cdoArr = f27508catch;
        if (andSet != cdoArr && (andSet = this.f27514if.getAndSet(cdoArr)) != cdoArr) {
            Z7(obj);
        }
        return andSet;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo<T> cdo = new Cdo<>(subscriber, this);
        subscriber.onSubscribe(cdo);
        if (Q7(cdo)) {
            if (cdo.cancelled) {
                Y7(cdo);
                return;
            } else {
                cdo.emitFirst();
                return;
            }
        }
        Throwable th = this.f27511else.get();
        if (th == Ccase.f27435do) {
            subscriber.onComplete();
        } else {
            subscriber.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f27511else.compareAndSet(null, Ccase.f27435do)) {
            Object objComplete = Cbreak.complete();
            for (Cdo<T> cdo : b8(objComplete)) {
                cdo.emitNext(objComplete, this.f27513goto);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        io.reactivex.internal.functions.Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27511else.compareAndSet(null, th)) {
            jp1.l(th);
            return;
        }
        Object objError = Cbreak.error(th);
        for (Cdo<T> cdo : b8(objError)) {
            cdo.emitNext(objError, this.f27513goto);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27511else.get() != null) {
            return;
        }
        Object next = Cbreak.next(t);
        Z7(next);
        for (Cdo<T> cdo : this.f27514if.get()) {
            cdo.emitNext(next, this.f27513goto);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f27511else.get() != null) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    public Cif(T t) {
        this();
        this.f27510case.lazySet(io.reactivex.internal.functions.Cif.m29468else(t, "defaultValue is null"));
    }
}
