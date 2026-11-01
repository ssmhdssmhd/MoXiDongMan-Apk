package io.reactivex.internal.operators.flowable;

import android.support.v4.c32;
import android.support.v4.e72;
import android.support.v4.jp1;
import android.support.v4.oq;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class FlowableReplay<T> extends oq<T> implements HasUpstreamPublisher<T>, ResettableConnectable {

    /* renamed from: case, reason: not valid java name */
    public static final Callable f25485case = new Cfor();

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Cthis<T>> f25486for;

    /* renamed from: if, reason: not valid java name */
    public final io.reactivex.Cfor<T> f25487if;

    /* renamed from: new, reason: not valid java name */
    public final Callable<? extends ReplayBuffer<T>> f25488new;

    /* renamed from: try, reason: not valid java name */
    public final Publisher<T> f25489try;

    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(Cnew<T> cnew);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$break, reason: invalid class name */
    public static final class Cbreak<T> implements Callable<ReplayBuffer<T>> {

        /* renamed from: do, reason: not valid java name */
        private final int f25490do;

        /* renamed from: for, reason: not valid java name */
        private final TimeUnit f25491for;

        /* renamed from: if, reason: not valid java name */
        private final long f25492if;

        /* renamed from: new, reason: not valid java name */
        private final io.reactivex.Ctry f25493new;

        public Cbreak(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f25490do = i;
            this.f25492if = j;
            this.f25491for = timeUnit;
            this.f25493new = ctry;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReplayBuffer<T> call() {
            return new Ccatch(this.f25490do, this.f25492if, this.f25491for, this.f25493new);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$case, reason: invalid class name */
    public static final class Ccase extends AtomicReference<Ccase> {
        private static final long serialVersionUID = 245354315435971818L;
        public final long index;
        public final Object value;

        public Ccase(Object obj, long j) {
            this.value = obj;
            this.index = j;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$catch, reason: invalid class name */
    public static final class Ccatch<T> extends Cdo<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        public final int limit;
        public final long maxAge;
        public final io.reactivex.Ctry scheduler;
        public final TimeUnit unit;

        public Ccatch(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.scheduler = ctry;
            this.limit = i;
            this.maxAge = j;
            this.unit = timeUnit;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public Object enterTransform(Object obj) {
            return new e72(obj, this.scheduler.mo29783for(this.unit), this.unit);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public Ccase getHead() {
            Ccase ccase;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ccase ccase2 = get();
            Ccase ccase3 = ccase2.get();
            while (true) {
                Ccase ccase4 = ccase3;
                ccase = ccase2;
                ccase2 = ccase4;
                if (ccase2 == null) {
                    break;
                }
                e72 e72Var = (e72) ccase2.value;
                if (io.reactivex.internal.util.Cbreak.isComplete(e72Var.m1679new()) || io.reactivex.internal.util.Cbreak.isError(e72Var.m1679new()) || e72Var.m1676do() > jMo29783for) {
                    break;
                }
                ccase3 = ccase2.get();
            }
            return ccase;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public Object leaveTransform(Object obj) {
            return ((e72) obj).m1679new();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public void truncate() {
            Ccase ccase;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ccase ccase2 = get();
            Ccase ccase3 = ccase2.get();
            int i = 0;
            while (true) {
                Ccase ccase4 = ccase3;
                ccase = ccase2;
                ccase2 = ccase4;
                if (ccase2 == null) {
                    break;
                }
                int i2 = this.size;
                if (i2 > this.limit && i2 > 1) {
                    i++;
                    this.size = i2 - 1;
                    ccase3 = ccase2.get();
                } else {
                    if (((e72) ccase2.value).m1676do() > jMo29783for) {
                        break;
                    }
                    i++;
                    this.size--;
                    ccase3 = ccase2.get();
                }
            }
            if (i != 0) {
                setFirst(ccase);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public void truncateFinal() {
            Ccase ccase;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ccase ccase2 = get();
            Ccase ccase3 = ccase2.get();
            int i = 0;
            while (true) {
                Ccase ccase4 = ccase3;
                ccase = ccase2;
                ccase2 = ccase4;
                if (ccase2 == null || this.size <= 1 || ((e72) ccase2.value).m1676do() > jMo29783for) {
                    break;
                }
                i++;
                this.size--;
                ccase3 = ccase2.get();
            }
            if (i != 0) {
                setFirst(ccase);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$class, reason: invalid class name */
    public static final class Cclass<T> extends Cdo<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        public final int limit;

        public Cclass(int i) {
            this.limit = i;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.Cdo
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$const, reason: invalid class name */
    public static final class Cconst<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        public volatile int size;

        public Cconst(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public void complete() {
            add(io.reactivex.internal.util.Cbreak.complete());
            this.size++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public void error(Throwable th) {
            add(io.reactivex.internal.util.Cbreak.error(th));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public void next(T t) {
            add(io.reactivex.internal.util.Cbreak.next(t));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public void replay(Cnew<T> cnew) {
            synchronized (cnew) {
                if (cnew.emitting) {
                    cnew.missed = true;
                    return;
                }
                cnew.emitting = true;
                Subscriber<? super T> subscriber = cnew.child;
                while (!cnew.isDisposed()) {
                    int i = this.size;
                    Integer num = (Integer) cnew.index();
                    int iIntValue = num != null ? num.intValue() : 0;
                    long j = cnew.get();
                    long j2 = j;
                    long j3 = 0;
                    while (j2 != 0 && iIntValue < i) {
                        Object obj = get(iIntValue);
                        try {
                            if (io.reactivex.internal.util.Cbreak.accept(obj, subscriber) || cnew.isDisposed()) {
                                return;
                            }
                            iIntValue++;
                            j2--;
                            j3++;
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            cnew.dispose();
                            if (io.reactivex.internal.util.Cbreak.isError(obj) || io.reactivex.internal.util.Cbreak.isComplete(obj)) {
                                return;
                            }
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (j3 != 0) {
                        cnew.index = Integer.valueOf(iIntValue);
                        if (j != Long.MAX_VALUE) {
                            cnew.produced(j3);
                        }
                    }
                    synchronized (cnew) {
                        if (!cnew.missed) {
                            cnew.emitting = false;
                            return;
                        }
                        cnew.missed = false;
                    }
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$do, reason: invalid class name */
    public static class Cdo<T> extends AtomicReference<Ccase> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        public long index;
        public int size;
        public Ccase tail;

        public Cdo() {
            Ccase ccase = new Ccase(null, 0L);
            this.tail = ccase;
            set(ccase);
        }

        public final void addLast(Ccase ccase) {
            this.tail.set(ccase);
            this.tail = ccase;
            this.size++;
        }

        public final void collect(Collection<? super T> collection) {
            Ccase head = getHead();
            while (true) {
                head = head.get();
                if (head == null) {
                    return;
                }
                Object objLeaveTransform = leaveTransform(head.value);
                if (io.reactivex.internal.util.Cbreak.isComplete(objLeaveTransform) || io.reactivex.internal.util.Cbreak.isError(objLeaveTransform)) {
                    return;
                } else {
                    collection.add((Object) io.reactivex.internal.util.Cbreak.getValue(objLeaveTransform));
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public final void complete() {
            Object objEnterTransform = enterTransform(io.reactivex.internal.util.Cbreak.complete());
            long j = this.index + 1;
            this.index = j;
            addLast(new Ccase(objEnterTransform, j));
            truncateFinal();
        }

        public Object enterTransform(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public final void error(Throwable th) {
            Object objEnterTransform = enterTransform(io.reactivex.internal.util.Cbreak.error(th));
            long j = this.index + 1;
            this.index = j;
            addLast(new Ccase(objEnterTransform, j));
            truncateFinal();
        }

        public Ccase getHead() {
            return get();
        }

        public boolean hasCompleted() {
            Object obj = this.tail.value;
            return obj != null && io.reactivex.internal.util.Cbreak.isComplete(leaveTransform(obj));
        }

        public boolean hasError() {
            Object obj = this.tail.value;
            return obj != null && io.reactivex.internal.util.Cbreak.isError(leaveTransform(obj));
        }

        public Object leaveTransform(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public final void next(T t) {
            Object objEnterTransform = enterTransform(io.reactivex.internal.util.Cbreak.next(t));
            long j = this.index + 1;
            this.index = j;
            addLast(new Ccase(objEnterTransform, j));
            truncate();
        }

        public final void removeFirst() {
            Ccase ccase = get().get();
            if (ccase == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(ccase);
        }

        public final void removeSome(int i) {
            Ccase ccase = get();
            while (i > 0) {
                ccase = ccase.get();
                i--;
                this.size--;
            }
            setFirst(ccase);
            Ccase ccase2 = get();
            if (ccase2.get() == null) {
                this.tail = ccase2;
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.ReplayBuffer
        public final void replay(Cnew<T> cnew) {
            Ccase ccase;
            synchronized (cnew) {
                if (cnew.emitting) {
                    cnew.missed = true;
                    return;
                }
                cnew.emitting = true;
                while (!cnew.isDisposed()) {
                    long j = cnew.get();
                    boolean z = j == Long.MAX_VALUE;
                    Ccase head = (Ccase) cnew.index();
                    if (head == null) {
                        head = getHead();
                        cnew.index = head;
                        r6.m6775do(cnew.totalRequested, head.index);
                    }
                    long j2 = 0;
                    while (j != 0 && (ccase = head.get()) != null) {
                        Object objLeaveTransform = leaveTransform(ccase.value);
                        try {
                            if (io.reactivex.internal.util.Cbreak.accept(objLeaveTransform, cnew.child)) {
                                cnew.index = null;
                                return;
                            }
                            j2++;
                            j--;
                            if (cnew.isDisposed()) {
                                cnew.index = null;
                                return;
                            }
                            head = ccase;
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            cnew.index = null;
                            cnew.dispose();
                            if (io.reactivex.internal.util.Cbreak.isError(objLeaveTransform) || io.reactivex.internal.util.Cbreak.isComplete(objLeaveTransform)) {
                                return;
                            }
                            cnew.child.onError(th);
                            return;
                        }
                    }
                    if (j2 != 0) {
                        cnew.index = head;
                        if (!z) {
                            cnew.produced(j2);
                        }
                    }
                    synchronized (cnew) {
                        if (!cnew.missed) {
                            cnew.emitting = false;
                            return;
                        }
                        cnew.missed = false;
                    }
                }
                cnew.index = null;
            }
        }

        public final void setFirst(Ccase ccase) {
            set(ccase);
        }

        public final void trimHead() {
            Ccase ccase = get();
            if (ccase.value != null) {
                Ccase ccase2 = new Ccase(null, 0L);
                ccase2.lazySet(ccase.get());
                set(ccase2);
            }
        }

        public void truncate() {
        }

        public void truncateFinal() {
            trimHead();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$else, reason: invalid class name */
    public static final class Celse<T> implements Callable<ReplayBuffer<T>> {

        /* renamed from: do, reason: not valid java name */
        private final int f25494do;

        public Celse(int i) {
            this.f25494do = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReplayBuffer<T> call() {
            return new Cclass(this.f25494do);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$for, reason: invalid class name */
    public static final class Cfor implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public Object call() {
            return new Cconst(16);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$goto, reason: invalid class name */
    public static final class Cgoto<T> implements Publisher<T> {

        /* renamed from: do, reason: not valid java name */
        private final AtomicReference<Cthis<T>> f25495do;

        /* renamed from: if, reason: not valid java name */
        private final Callable<? extends ReplayBuffer<T>> f25496if;

        public Cgoto(AtomicReference<Cthis<T>> atomicReference, Callable<? extends ReplayBuffer<T>> callable) {
            this.f25495do = atomicReference;
            this.f25496if = callable;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            Cthis<T> cthis;
            while (true) {
                cthis = this.f25495do.get();
                if (cthis != null) {
                    break;
                }
                try {
                    Cthis<T> cthis2 = new Cthis<>(this.f25496if.call());
                    if (this.f25495do.compareAndSet(null, cthis2)) {
                        cthis = cthis2;
                        break;
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                    return;
                }
            }
            Cnew<T> cnew = new Cnew<>(cthis, subscriber);
            subscriber.onSubscribe(cnew);
            cthis.add(cnew);
            if (cnew.isDisposed()) {
                cthis.remove(cnew);
            } else {
                cthis.manageRequests();
                cthis.buffer.replay(cnew);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$if, reason: invalid class name */
    public static final class Cif<T> extends oq<T> {

        /* renamed from: for, reason: not valid java name */
        private final io.reactivex.Cfor<T> f25497for;

        /* renamed from: if, reason: not valid java name */
        private final oq<T> f25498if;

        public Cif(oq<T> oqVar, io.reactivex.Cfor<T> cfor) {
            this.f25498if = oqVar;
            this.f25497for = cfor;
        }

        @Override // android.support.v4.oq
        public void P7(Consumer<? super Disposable> consumer) {
            this.f25498if.P7(consumer);
        }

        @Override // io.reactivex.Cfor
        public void n5(Subscriber<? super T> subscriber) {
            this.f25497for.subscribe(subscriber);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$new, reason: invalid class name */
    public static final class Cnew<T> extends AtomicLong implements Subscription, Disposable {
        public static final long CANCELLED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        public final Subscriber<? super T> child;
        public boolean emitting;
        public Object index;
        public boolean missed;
        public final Cthis<T> parent;
        public final AtomicLong totalRequested = new AtomicLong();

        public Cnew(Cthis<T> cthis, Subscriber<? super T> subscriber) {
            this.parent = cthis;
            this.child = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
                this.parent.manageRequests();
                this.index = null;
            }
        }

        public <U> U index() {
            return (U) this.index;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        public long produced(long j) {
            return r6.m6774case(this, j);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (!io.reactivex.internal.subscriptions.Cfor.validate(j) || r6.m6777if(this, j) == Long.MIN_VALUE) {
                return;
            }
            r6.m6775do(this.totalRequested, j);
            this.parent.manageRequests();
            this.parent.buffer.replay(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$this, reason: invalid class name */
    public static final class Cthis<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Disposable {
        public static final Cnew[] EMPTY = new Cnew[0];
        public static final Cnew[] TERMINATED = new Cnew[0];
        private static final long serialVersionUID = 7224554242710036740L;
        public final ReplayBuffer<T> buffer;
        public boolean done;
        public long maxChildRequested;
        public long maxUpstreamRequested;
        public final AtomicInteger management = new AtomicInteger();
        public final AtomicReference<Cnew<T>[]> subscribers = new AtomicReference<>(EMPTY);
        public final AtomicBoolean shouldConnect = new AtomicBoolean();

        public Cthis(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
        }

        public boolean add(Cnew<T> cnew) {
            Cnew<T>[] cnewArr;
            Cnew<T>[] cnewArr2;
            Objects.requireNonNull(cnew);
            do {
                cnewArr = this.subscribers.get();
                if (cnewArr == TERMINATED) {
                    return false;
                }
                int length = cnewArr.length;
                cnewArr2 = new Cnew[length + 1];
                System.arraycopy(cnewArr, 0, cnewArr2, 0, length);
                cnewArr2[length] = cnew;
            } while (!this.subscribers.compareAndSet(cnewArr, cnewArr2));
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.subscribers.set(TERMINATED);
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        public void manageRequests() {
            if (this.management.getAndIncrement() != 0) {
                return;
            }
            int iAddAndGet = 1;
            while (!isDisposed()) {
                Cnew<T>[] cnewArr = this.subscribers.get();
                long j = this.maxChildRequested;
                long jMax = j;
                for (Cnew<T> cnew : cnewArr) {
                    jMax = Math.max(jMax, cnew.totalRequested.get());
                }
                long j2 = this.maxUpstreamRequested;
                Subscription subscription = get();
                long j3 = jMax - j;
                if (j3 != 0) {
                    this.maxChildRequested = jMax;
                    if (subscription == null) {
                        long j4 = j2 + j3;
                        if (j4 < 0) {
                            j4 = Long.MAX_VALUE;
                        }
                        this.maxUpstreamRequested = j4;
                    } else if (j2 != 0) {
                        this.maxUpstreamRequested = 0L;
                        subscription.request(j2 + j3);
                    } else {
                        subscription.request(j3);
                    }
                } else if (j2 != 0 && subscription != null) {
                    this.maxUpstreamRequested = 0L;
                    subscription.request(j2);
                }
                iAddAndGet = this.management.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.buffer.complete();
            for (Cnew<T> cnew : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(cnew);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.buffer.error(th);
            for (Cnew<T> cnew : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(cnew);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.buffer.next(t);
            for (Cnew<T> cnew : this.subscribers.get()) {
                this.buffer.replay(cnew);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription)) {
                manageRequests();
                for (Cnew<T> cnew : this.subscribers.get()) {
                    this.buffer.replay(cnew);
                }
            }
        }

        public void remove(Cnew<T> cnew) {
            Cnew<T>[] cnewArr;
            Cnew<T>[] cnewArr2;
            do {
                cnewArr = this.subscribers.get();
                int length = cnewArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cnewArr[i2].equals(cnew)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cnewArr2 = EMPTY;
                } else {
                    Cnew<T>[] cnewArr3 = new Cnew[length - 1];
                    System.arraycopy(cnewArr, 0, cnewArr3, 0, i);
                    System.arraycopy(cnewArr, i + 1, cnewArr3, i, (length - i) - 1);
                    cnewArr2 = cnewArr3;
                }
            } while (!this.subscribers.compareAndSet(cnewArr, cnewArr2));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$try, reason: invalid class name */
    public static final class Ctry<R, U> extends io.reactivex.Cfor<R> {

        /* renamed from: for, reason: not valid java name */
        private final Function<? super io.reactivex.Cfor<U>, ? extends Publisher<R>> f25499for;

        /* renamed from: if, reason: not valid java name */
        private final Callable<? extends oq<U>> f25500if;

        /* renamed from: io.reactivex.internal.operators.flowable.FlowableReplay$try$do, reason: invalid class name */
        public final class Cdo implements Consumer<Disposable> {

            /* renamed from: do, reason: not valid java name */
            private final c32<R> f25501do;

            public Cdo(c32<R> c32Var) {
                this.f25501do = c32Var;
            }

            @Override // io.reactivex.functions.Consumer
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void accept(Disposable disposable) {
                this.f25501do.setResource(disposable);
            }
        }

        public Ctry(Callable<? extends oq<U>> callable, Function<? super io.reactivex.Cfor<U>, ? extends Publisher<R>> function) {
            this.f25500if = callable;
            this.f25499for = function;
        }

        @Override // io.reactivex.Cfor
        public void n5(Subscriber<? super R> subscriber) {
            try {
                oq oqVar = (oq) io.reactivex.internal.functions.Cif.m29468else(this.f25500if.call(), "The connectableFactory returned null");
                try {
                    Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25499for.apply(oqVar), "The selector returned a null Publisher");
                    c32 c32Var = new c32(subscriber);
                    publisher.subscribe(c32Var);
                    oqVar.P7(new Cdo(c32Var));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
            }
        }
    }

    private FlowableReplay(Publisher<T> publisher, io.reactivex.Cfor<T> cfor, AtomicReference<Cthis<T>> atomicReference, Callable<? extends ReplayBuffer<T>> callable) {
        this.f25489try = publisher;
        this.f25487if = cfor;
        this.f25486for = atomicReference;
        this.f25488new = callable;
    }

    public static <T> oq<T> X7(io.reactivex.Cfor<T> cfor, int i) {
        return i == Integer.MAX_VALUE ? b8(cfor) : a8(cfor, new Celse(i));
    }

    public static <T> oq<T> Y7(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return Z7(cfor, j, timeUnit, ctry, Integer.MAX_VALUE);
    }

    public static <T> oq<T> Z7(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, int i) {
        return a8(cfor, new Cbreak(i, j, timeUnit, ctry));
    }

    public static <T> oq<T> a8(io.reactivex.Cfor<T> cfor, Callable<? extends ReplayBuffer<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return jp1.c(new FlowableReplay(new Cgoto(atomicReference, callable), cfor, atomicReference, callable));
    }

    public static <T> oq<T> b8(io.reactivex.Cfor<? extends T> cfor) {
        return a8(cfor, f25485case);
    }

    public static <U, R> io.reactivex.Cfor<R> c8(Callable<? extends oq<U>> callable, Function<? super io.reactivex.Cfor<U>, ? extends Publisher<R>> function) {
        return new Ctry(callable, function);
    }

    public static <T> oq<T> d8(oq<T> oqVar, io.reactivex.Ctry ctry) {
        return jp1.c(new Cif(oqVar, oqVar.t3(ctry)));
    }

    @Override // android.support.v4.oq
    public void P7(Consumer<? super Disposable> consumer) {
        Cthis<T> cthis;
        while (true) {
            cthis = this.f25486for.get();
            if (cthis != null && !cthis.isDisposed()) {
                break;
            }
            try {
                Cthis<T> cthis2 = new Cthis<>(this.f25488new.call());
                if (this.f25486for.compareAndSet(cthis, cthis2)) {
                    cthis = cthis2;
                    break;
                }
            } finally {
                t80.m7781if(th);
                RuntimeException runtimeExceptionM29712case = io.reactivex.internal.util.Ccase.m29712case(th);
            }
        }
        boolean z = !cthis.shouldConnect.get() && cthis.shouldConnect.compareAndSet(false, true);
        try {
            consumer.accept(cthis);
            if (z) {
                this.f25487if.m5(cthis);
            }
        } catch (Throwable th) {
            if (z) {
                cthis.shouldConnect.compareAndSet(true, false);
            }
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25489try.subscribe(subscriber);
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        this.f25486for.compareAndSet((Cthis) disposable, null);
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f25487if;
    }
}
