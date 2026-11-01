package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.mf;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage<T> extends io.reactivex.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final io.reactivex.Cif f25790for;

    /* renamed from: if, reason: not valid java name */
    public final FlowableOnSubscribe<T> f25791if;

    /* renamed from: io.reactivex.internal.operators.flowable.package$case, reason: invalid class name */
    public static final class Ccase<T> extends Cif<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        public volatile boolean done;
        public Throwable error;
        public final AtomicReference<T> queue;
        public final AtomicInteger wip;

        public Ccase(Subscriber<? super T> subscriber) {
            super(subscriber);
            this.queue = new AtomicReference<>();
            this.wip = new AtomicInteger();
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
        
            if (r8 != r4) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
        
            if (isCancelled() == false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0055, code lost:
        
            r1.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0058, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0059, code lost:
        
            r4 = r15.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x005f, code lost:
        
            if (r1.get() != null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
        
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0062, code lost:
        
            if (r4 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0064, code lost:
        
            if (r10 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0066, code lost:
        
            r0 = r15.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0068, code lost:
        
            if (r0 == null) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x006a, code lost:
        
            error(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x006e, code lost:
        
            complete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0074, code lost:
        
            if (r8 == 0) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0076, code lost:
        
            android.support.v4.r6.m6779try(r15, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0079, code lost:
        
            r3 = r15.wip.addAndGet(-r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.downstream;
            AtomicReference<T> atomicReference = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (true) {
                    boolean z = false;
                    if (j2 == j) {
                        break;
                    }
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z2 = this.done;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z3 = andSet == null;
                    if (z2 && z3) {
                        Throwable th = this.error;
                        if (th != null) {
                            error(th);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    subscriber.onNext(andSet);
                    j2++;
                }
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif, io.reactivex.Emitter
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.done || isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.queue.set(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif
        public void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif, io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f25792do;

        static {
            int[] iArr = new int[io.reactivex.Cif.values().length];
            f25792do = iArr;
            try {
                iArr[io.reactivex.Cif.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25792do[io.reactivex.Cif.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25792do[io.reactivex.Cif.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25792do[io.reactivex.Cif.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$else, reason: invalid class name */
    public static final class Celse<T> extends Cif<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public Celse(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            long j;
            if (isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.downstream.onNext(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$for, reason: invalid class name */
    public static final class Cfor<T> extends Cif<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        public volatile boolean done;
        public Throwable error;
        public final e12<T> queue;
        public final AtomicInteger wip;

        public Cfor(Subscriber<? super T> subscriber, int i) {
            super(subscriber);
            this.queue = new e12<>(i);
            this.wip = new AtomicInteger();
        }

        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.downstream;
            e12<T> e12Var = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (isCancelled()) {
                        e12Var.clear();
                        return;
                    }
                    boolean z = this.done;
                    T tPoll = e12Var.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            error(th);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(tPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (isCancelled()) {
                        e12Var.clear();
                        return;
                    }
                    boolean z3 = this.done;
                    boolean zIsEmpty = e12Var.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            error(th2);
                            return;
                        } else {
                            complete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    r6.m6779try(this, j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif, io.reactivex.Emitter
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.done || isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.queue.offer(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif
        public void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cif, io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$goto, reason: invalid class name */
    public static abstract class Cgoto<T> extends Cif<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        public Cgoto(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.Emitter
        public final void onNext(T t) {
            if (isCancelled()) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() == 0) {
                onOverflow();
            } else {
                this.downstream.onNext(t);
                r6.m6779try(this, 1L);
            }
        }

        public abstract void onOverflow();
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$if, reason: invalid class name */
    public static abstract class Cif<T> extends AtomicLong implements FlowableEmitter<T>, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        public final Subscriber<? super T> downstream;
        public final tw1 serial = new tw1();

        public Cif(Subscriber<? super T> subscriber) {
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.serial.dispose();
            onUnsubscribed();
        }

        public void complete() {
            if (isCancelled()) {
                return;
            }
            try {
                this.downstream.onComplete();
            } finally {
                this.serial.dispose();
            }
        }

        public boolean error(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.downstream.onError(th);
                this.serial.dispose();
                return true;
            } catch (Throwable th2) {
                this.serial.dispose();
                throw th2;
            }
        }

        @Override // io.reactivex.FlowableEmitter
        public final boolean isCancelled() {
            return this.serial.isDisposed();
        }

        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.Emitter
        public final void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        public void onRequested() {
        }

        public void onUnsubscribed() {
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this, j);
                onRequested();
            }
        }

        @Override // io.reactivex.FlowableEmitter
        public final long requested() {
            return get();
        }

        @Override // io.reactivex.FlowableEmitter
        public final FlowableEmitter<T> serialize() {
            return new Cthis(this);
        }

        @Override // io.reactivex.FlowableEmitter
        public final void setCancellable(Cancellable cancellable) {
            setDisposable(new mf(cancellable));
        }

        @Override // io.reactivex.FlowableEmitter
        public final void setDisposable(Disposable disposable) {
            this.serial.update(disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th) {
            return error(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$new, reason: invalid class name */
    public static final class Cnew<T> extends Cgoto<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        public Cnew(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cgoto
        public void onOverflow() {
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$this, reason: invalid class name */
    public static final class Cthis<T> extends AtomicInteger implements FlowableEmitter<T> {
        private static final long serialVersionUID = 4883307006032401862L;
        public volatile boolean done;
        public final Cif<T> emitter;
        public final h4 error = new h4();
        public final SimplePlainQueue<T> queue = new e12(16);

        public Cthis(Cif<T> cif) {
            this.emitter = cif;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            Cif<T> cif = this.emitter;
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            h4 h4Var = this.error;
            int iAddAndGet = 1;
            while (!cif.isCancelled()) {
                if (h4Var.get() != null) {
                    simplePlainQueue.clear();
                    cif.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                T tPoll = simplePlainQueue.poll();
                boolean z2 = tPoll == null;
                if (z && z2) {
                    cif.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    cif.onNext(tPoll);
                }
            }
            simplePlainQueue.clear();
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean isCancelled() {
            return this.emitter.isCancelled();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (this.emitter.isCancelled() || this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.emitter.isCancelled() || this.done) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.emitter.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                SimplePlainQueue<T> simplePlainQueue = this.queue;
                synchronized (simplePlainQueue) {
                    simplePlainQueue.offer(t);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.FlowableEmitter
        public long requested() {
            return this.emitter.requested();
        }

        @Override // io.reactivex.FlowableEmitter
        public FlowableEmitter<T> serialize() {
            return this;
        }

        @Override // io.reactivex.FlowableEmitter
        public void setCancellable(Cancellable cancellable) {
            this.emitter.setCancellable(cancellable);
        }

        @Override // io.reactivex.FlowableEmitter
        public void setDisposable(Disposable disposable) {
            this.emitter.setDisposable(disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.emitter.toString();
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (!this.emitter.isCancelled() && !this.done) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.error.addThrowable(th)) {
                    this.done = true;
                    drain();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.package$try, reason: invalid class name */
    public static final class Ctry<T> extends Cgoto<T> {
        private static final long serialVersionUID = 338953216916120960L;

        public Ctry(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.Cpackage.Cgoto
        public void onOverflow() {
            onError(new a01("create: could not emit value due to lack of requests"));
        }
    }

    public Cpackage(FlowableOnSubscribe<T> flowableOnSubscribe, io.reactivex.Cif cif) {
        this.f25791if = flowableOnSubscribe;
        this.f25790for = cif;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        int i = Cdo.f25792do[this.f25790for.ordinal()];
        Cif cfor = i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Cfor(subscriber, io.reactivex.Cfor.g()) : new Ccase(subscriber) : new Cnew(subscriber) : new Ctry(subscriber) : new Celse(subscriber);
        subscriber.onSubscribe(cfor);
        try {
            this.f25791if.subscribe(cfor);
        } catch (Throwable th) {
            t80.m7781if(th);
            cfor.onError(th);
        }
    }
}
