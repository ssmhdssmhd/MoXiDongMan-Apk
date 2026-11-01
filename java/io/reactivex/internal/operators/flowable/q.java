package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.e12;
import android.support.v4.fi0;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.z7;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class q<T, K, V> extends io.reactivex.internal.operators.flowable.Cdo<T, fi0<K, V>> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f25805case;

    /* renamed from: else, reason: not valid java name */
    public final Function<? super Consumer<Object>, ? extends Map<K, Object>> f25806else;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends K> f25807for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super T, ? extends V> f25808new;

    /* renamed from: try, reason: not valid java name */
    public final int f25809try;

    /* renamed from: io.reactivex.internal.operators.flowable.q$do, reason: invalid class name */
    public static final class Cdo<K, V> implements Consumer<Cfor<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final Queue<Cfor<K, V>> f25810do;

        public Cdo(Queue<Cfor<K, V>> queue) {
            this.f25810do = queue;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Cfor<K, V> cfor) {
            this.f25810do.offer(cfor);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.q$for, reason: invalid class name */
    public static final class Cfor<K, T> extends fi0<K, T> {

        /* renamed from: for, reason: not valid java name */
        public final Cnew<T, K> f25811for;

        public Cfor(K k, Cnew<T, K> cnew) {
            super(k);
            this.f25811for = cnew;
        }

        public static <T, K> Cfor<K, T> M7(K k, int i, Cif<?, K, T> cif, boolean z) {
            return new Cfor<>(k, new Cnew(i, cif, k, z));
        }

        @Override // io.reactivex.Cfor
        public void n5(Subscriber<? super T> subscriber) {
            this.f25811for.subscribe(subscriber);
        }

        public void onComplete() {
            this.f25811for.onComplete();
        }

        public void onError(Throwable th) {
            this.f25811for.onError(th);
        }

        public void onNext(T t) {
            this.f25811for.onNext(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.q$if, reason: invalid class name */
    public static final class Cif<T, K, V> extends z7<fi0<K, V>> implements FlowableSubscriber<T> {
        public static final Object NULL_KEY = new Object();
        private static final long serialVersionUID = -3688291656102519502L;
        public final int bufferSize;
        public final boolean delayError;
        public boolean done;
        public final Subscriber<? super fi0<K, V>> downstream;
        public Throwable error;
        public final Queue<Cfor<K, V>> evictedGroups;
        public volatile boolean finished;
        public final Map<Object, Cfor<K, V>> groups;
        public final Function<? super T, ? extends K> keySelector;
        public boolean outputFused;
        public final e12<fi0<K, V>> queue;
        public Subscription upstream;
        public final Function<? super T, ? extends V> valueSelector;
        public final AtomicBoolean cancelled = new AtomicBoolean();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicInteger groupCount = new AtomicInteger(1);

        public Cif(Subscriber<? super fi0<K, V>> subscriber, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z, Map<Object, Cfor<K, V>> map, Queue<Cfor<K, V>> queue) {
            this.downstream = subscriber;
            this.keySelector = function;
            this.valueSelector = function2;
            this.bufferSize = i;
            this.delayError = z;
            this.groups = map;
            this.evictedGroups = queue;
            this.queue = new e12<>(i);
        }

        /* renamed from: do, reason: not valid java name */
        private void m29498do() {
            if (this.evictedGroups != null) {
                int i = 0;
                while (true) {
                    Cfor<K, V> cforPoll = this.evictedGroups.poll();
                    if (cforPoll == null) {
                        break;
                    }
                    cforPoll.onComplete();
                    i++;
                }
                if (i != 0) {
                    this.groupCount.addAndGet(-i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled.compareAndSet(false, true)) {
                m29498do();
                if (this.groupCount.decrementAndGet() == 0) {
                    this.upstream.cancel();
                }
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, e12<?> e12Var) {
            if (this.cancelled.get()) {
                e12Var.clear();
                return true;
            }
            if (this.delayError) {
                if (!z || !z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onComplete();
                }
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                e12Var.clear();
                subscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onComplete();
            return true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.queue.clear();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }

        public void drainFused() {
            Throwable th;
            e12<fi0<K, V>> e12Var = this.queue;
            Subscriber<? super fi0<K, V>> subscriber = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled.get()) {
                boolean z = this.finished;
                if (z && !this.delayError && (th = this.error) != null) {
                    e12Var.clear();
                    subscriber.onError(th);
                    return;
                }
                subscriber.onNext(null);
                if (z) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        subscriber.onError(th2);
                        return;
                    } else {
                        subscriber.onComplete();
                        return;
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void drainNormal() {
            e12<fi0<K, V>> e12Var = this.queue;
            Subscriber<? super fi0<K, V>> subscriber = this.downstream;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.finished;
                    fi0<K, V> fi0VarPoll = e12Var.poll();
                    boolean z2 = fi0VarPoll == null;
                    if (checkTerminated(z, z2, subscriber, e12Var)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(fi0VarPoll);
                    j2++;
                }
                if (j2 == j && checkTerminated(this.finished, e12Var.isEmpty(), subscriber, e12Var)) {
                    return;
                }
                if (j2 != 0) {
                    if (j != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j2);
                    }
                    this.upstream.request(j2);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            Iterator<Cfor<K, V>> it = this.groups.values().iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.groups.clear();
            Queue<Cfor<K, V>> queue = this.evictedGroups;
            if (queue != null) {
                queue.clear();
            }
            this.done = true;
            this.finished = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            Iterator<Cfor<K, V>> it = this.groups.values().iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.groups.clear();
            Queue<Cfor<K, V>> queue = this.evictedGroups;
            if (queue != null) {
                queue.clear();
            }
            this.error = th;
            this.finished = true;
            drain();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            e12<fi0<K, V>> e12Var = this.queue;
            try {
                K kApply = this.keySelector.apply(t);
                boolean z = false;
                Object obj = kApply != null ? kApply : NULL_KEY;
                Cfor<K, V> cfor = this.groups.get(obj);
                Cfor cfor2 = cfor;
                if (cfor == null) {
                    if (this.cancelled.get()) {
                        return;
                    }
                    Cfor cforM7 = Cfor.M7(kApply, this.bufferSize, this, this.delayError);
                    this.groups.put(obj, cforM7);
                    this.groupCount.getAndIncrement();
                    z = true;
                    cfor2 = cforM7;
                }
                try {
                    cfor2.onNext(io.reactivex.internal.functions.Cif.m29468else(this.valueSelector.apply(t), "The valueSelector returned null"));
                    m29498do();
                    if (z) {
                        e12Var.offer(cfor2);
                        drain();
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.upstream.cancel();
                    onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.upstream.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.bufferSize);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public fi0<K, V> poll() {
            return this.queue.poll();
        }

        public void cancel(K k) {
            if (k == null) {
                k = (K) NULL_KEY;
            }
            this.groups.remove(k);
            if (this.groupCount.decrementAndGet() == 0) {
                this.upstream.cancel();
                if (this.outputFused || getAndIncrement() != 0) {
                    return;
                }
                this.queue.clear();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.q$new, reason: invalid class name */
    public static final class Cnew<T, K> extends z7<T> implements Publisher<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        public final boolean delayError;
        public volatile boolean done;
        public Throwable error;
        public final K key;
        public boolean outputFused;
        public final Cif<?, K, T> parent;
        public int produced;
        public final e12<T> queue;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicBoolean cancelled = new AtomicBoolean();
        public final AtomicReference<Subscriber<? super T>> actual = new AtomicReference<>();
        public final AtomicBoolean once = new AtomicBoolean();

        public Cnew(int i, Cif<?, K, T> cif, K k, boolean z) {
            this.queue = new e12<>(i);
            this.parent = cif;
            this.key = k;
            this.delayError = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled.compareAndSet(false, true)) {
                this.parent.cancel(this.key);
                drain();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3, long j) {
            if (this.cancelled.get()) {
                while (this.queue.poll() != null) {
                    j++;
                }
                if (j != 0) {
                    this.parent.upstream.request(j);
                }
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onComplete();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                subscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onComplete();
            return true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            e12<T> e12Var = this.queue;
            while (e12Var.poll() != null) {
                this.produced++;
            }
            tryReplenish();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }

        public void drainFused() {
            Throwable th;
            e12<T> e12Var = this.queue;
            Subscriber<? super T> subscriber = this.actual.get();
            int iAddAndGet = 1;
            while (true) {
                if (subscriber != null) {
                    if (this.cancelled.get()) {
                        return;
                    }
                    boolean z = this.done;
                    if (z && !this.delayError && (th = this.error) != null) {
                        e12Var.clear();
                        subscriber.onError(th);
                        return;
                    }
                    subscriber.onNext(null);
                    if (z) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            subscriber.onError(th2);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (subscriber == null) {
                    subscriber = this.actual.get();
                }
            }
        }

        public void drainNormal() {
            e12<T> e12Var = this.queue;
            boolean z = this.delayError;
            Subscriber<? super T> subscriber = this.actual.get();
            int iAddAndGet = 1;
            while (true) {
                if (subscriber != null) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        if (j2 == j) {
                            break;
                        }
                        boolean z2 = this.done;
                        T tPoll = e12Var.poll();
                        boolean z3 = tPoll == null;
                        long j3 = j2;
                        if (checkTerminated(z2, z3, subscriber, z, j2)) {
                            return;
                        }
                        if (z3) {
                            j2 = j3;
                            break;
                        } else {
                            subscriber.onNext(tPoll);
                            j2 = j3 + 1;
                        }
                    }
                    if (j2 == j) {
                        long j4 = j2;
                        if (checkTerminated(this.done, e12Var.isEmpty(), subscriber, z, j2)) {
                            return;
                        } else {
                            j2 = j4;
                        }
                    }
                    if (j2 != 0) {
                        if (j != Long.MAX_VALUE) {
                            this.requested.addAndGet(-j2);
                        }
                        this.parent.upstream.request(j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (subscriber == null) {
                    subscriber = this.actual.get();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            if (!this.queue.isEmpty()) {
                return false;
            }
            tryReplenish();
            return true;
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() {
            T tPoll = this.queue.poll();
            if (tPoll != null) {
                this.produced++;
                return tPoll;
            }
            tryReplenish();
            return null;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            if (!this.once.compareAndSet(false, true)) {
                io.reactivex.internal.subscriptions.Cdo.error(new IllegalStateException("Only one Subscriber allowed!"), subscriber);
                return;
            }
            subscriber.onSubscribe(this);
            this.actual.lazySet(subscriber);
            drain();
        }

        public void tryReplenish() {
            int i = this.produced;
            if (i != 0) {
                this.produced = 0;
                this.parent.upstream.request(i);
            }
        }
    }

    public q(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z, Function<? super Consumer<Object>, ? extends Map<K, Object>> function3) {
        super(cfor);
        this.f25807for = function;
        this.f25808new = function2;
        this.f25809try = i;
        this.f25805case = z;
        this.f25806else = function3;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super fi0<K, V>> subscriber) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map<K, Object> mapApply;
        try {
            if (this.f25806else == null) {
                concurrentLinkedQueue = null;
                mapApply = new ConcurrentHashMap<>();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                mapApply = this.f25806else.apply(new Cdo(concurrentLinkedQueue));
            }
            this.f25614if.m5(new Cif(subscriber, this.f25807for, this.f25808new, this.f25809try, this.f25805case, mapApply, concurrentLinkedQueue));
        } catch (Exception e) {
            t80.m7781if(e);
            subscriber.onSubscribe(io.reactivex.internal.util.Cnew.INSTANCE);
            subscriber.onError(e);
        }
    }
}
