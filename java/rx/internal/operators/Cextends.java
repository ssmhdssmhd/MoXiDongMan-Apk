package rx.internal.operators;

import android.support.v4.f12;
import android.support.v4.nf;
import android.support.v4.u6;
import android.support.v4.ww1;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Emitter;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action1;
import rx.functions.Cancellable;
import rx.internal.util.unsafe.Ccontinue;
import rx.internal.util.unsafe.Cimplements;

/* renamed from: rx.internal.operators.extends, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cextends<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<Emitter<T>> f34718do;

    /* renamed from: if, reason: not valid java name */
    public final Emitter.Cdo f34719if;

    /* renamed from: rx.internal.operators.extends$case, reason: invalid class name */
    public static final class Ccase<T> extends Cif<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        public volatile boolean done;
        public Throwable error;
        public final AtomicReference<Object> queue;
        public final AtomicInteger wip;

        public Ccase(y22<? super T> y22Var) {
            super(y22Var);
            this.queue = new AtomicReference<>();
            this.wip = new AtomicInteger();
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
        
            if (r8 != r4) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
        
            if (r0.isUnsubscribed() == false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0059, code lost:
        
            r1.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
        
            r4 = r15.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
        
            if (r1.get() != null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
        
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
        
            if (r4 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
        
            if (r10 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
        
            r0 = r15.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x006c, code lost:
        
            if (r0 == null) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x006e, code lost:
        
            super.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0072, code lost:
        
            super.onCompleted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0078, code lost:
        
            if (r8 == 0) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x007a, code lost:
        
            android.support.v4.u6.m8261this(r15, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x007d, code lost:
        
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
            y22<? super T> y22Var = this.actual;
            AtomicReference<Object> atomicReference = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (true) {
                    boolean z = false;
                    if (j2 == j) {
                        break;
                    }
                    if (y22Var.isUnsubscribed()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z2 = this.done;
                    Object andSet = atomicReference.getAndSet(null);
                    boolean z3 = andSet == null;
                    if (z2 && z3) {
                        Throwable th = this.error;
                        if (th != null) {
                            super.onError(th);
                            return;
                        } else {
                            super.onCompleted();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    y22Var.onNext((Object) Creturn.m38691try(andSet));
                    j2++;
                }
            } while (iAddAndGet != 0);
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.queue.set(Creturn.m38682break(t));
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif
        public void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }
    }

    /* renamed from: rx.internal.operators.extends$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f34720do;

        static {
            int[] iArr = new int[Emitter.Cdo.values().length];
            f34720do = iArr;
            try {
                iArr[Emitter.Cdo.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34720do[Emitter.Cdo.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34720do[Emitter.Cdo.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34720do[Emitter.Cdo.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: rx.internal.operators.extends$else, reason: invalid class name */
    public static abstract class Celse<T> extends Cif<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        public Celse(y22<? super T> y22Var) {
            super(y22Var);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            if (get() == 0) {
                onOverflow();
            } else {
                this.actual.onNext(t);
                u6.m8261this(this, 1L);
            }
        }

        public abstract void onOverflow();
    }

    /* renamed from: rx.internal.operators.extends$for, reason: invalid class name */
    public static final class Cfor<T> extends Cif<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        public volatile boolean done;
        public Throwable error;
        public final Queue<Object> queue;
        public final AtomicInteger wip;

        public Cfor(y22<? super T> y22Var, int i) {
            super(y22Var);
            this.queue = Cimplements.m38984case() ? new Ccontinue<>(i) : new f12<>(i);
            this.wip = new AtomicInteger();
        }

        public void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            y22<? super T> y22Var = this.actual;
            Queue<Object> queue = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (y22Var.isUnsubscribed()) {
                        queue.clear();
                        return;
                    }
                    boolean z = this.done;
                    Object objPoll = queue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            super.onError(th);
                            return;
                        } else {
                            super.onCompleted();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    y22Var.onNext((Object) Creturn.m38691try(objPoll));
                    j2++;
                }
                if (j2 == j) {
                    if (y22Var.isUnsubscribed()) {
                        queue.clear();
                        return;
                    }
                    boolean z3 = this.done;
                    boolean zIsEmpty = queue.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            super.onError(th2);
                            return;
                        } else {
                            super.onCompleted();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    u6.m8261this(this, j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.queue.offer(Creturn.m38682break(t));
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif
        public void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.Cextends.Cif
        public void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    /* renamed from: rx.internal.operators.extends$goto, reason: invalid class name */
    public static final class Cgoto<T> extends Cif<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public Cgoto(y22<? super T> y22Var) {
            super(y22Var);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j;
            if (this.actual.isUnsubscribed()) {
                return;
            }
            this.actual.onNext(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    /* renamed from: rx.internal.operators.extends$if, reason: invalid class name */
    public static abstract class Cif<T> extends AtomicLong implements Emitter<T>, Producer, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        public final y22<? super T> actual;
        public final ww1 serial = new ww1();

        public Cif(y22<? super T> y22Var) {
            this.actual = y22Var;
        }

        @Override // rx.Subscription
        public final boolean isUnsubscribed() {
            return this.serial.isUnsubscribed();
        }

        public void onCompleted() {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            try {
                this.actual.onCompleted();
            } finally {
                this.serial.unsubscribe();
            }
        }

        public void onError(Throwable th) {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            try {
                this.actual.onError(th);
            } finally {
                this.serial.unsubscribe();
            }
        }

        public void onRequested() {
        }

        public void onUnsubscribed() {
        }

        @Override // rx.Producer
        public final void request(long j) {
            if (u6.m8253break(j)) {
                u6.m8259if(this, j);
                onRequested();
            }
        }

        @Override // rx.Emitter
        public final long requested() {
            return get();
        }

        @Override // rx.Emitter
        public final void setCancellation(Cancellable cancellable) {
            setSubscription(new nf(cancellable));
        }

        @Override // rx.Emitter
        public final void setSubscription(Subscription subscription) {
            this.serial.m9298if(subscription);
        }

        @Override // rx.Subscription
        public final void unsubscribe() {
            this.serial.unsubscribe();
            onUnsubscribed();
        }
    }

    /* renamed from: rx.internal.operators.extends$new, reason: invalid class name */
    public static final class Cnew<T> extends Celse<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        public Cnew(y22<? super T> y22Var) {
            super(y22Var);
        }

        @Override // rx.internal.operators.Cextends.Celse
        public void onOverflow() {
        }
    }

    /* renamed from: rx.internal.operators.extends$try, reason: invalid class name */
    public static final class Ctry<T> extends Celse<T> {
        private static final long serialVersionUID = 338953216916120960L;
        private boolean done;

        public Ctry(y22<? super T> y22Var) {
            super(y22Var);
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            super.onCompleted();
        }

        @Override // rx.internal.operators.Cextends.Cif, rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.done = true;
                super.onError(th);
            }
        }

        @Override // rx.internal.operators.Cextends.Celse, rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            super.onNext(t);
        }

        @Override // rx.internal.operators.Cextends.Celse
        public void onOverflow() {
            onError(new zz0("create: could not emit value due to lack of requests"));
        }
    }

    public Cextends(Action1<Emitter<T>> action1, Emitter.Cdo cdo) {
        this.f34718do = action1;
        this.f34719if = cdo;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        int i = Cdo.f34720do[this.f34719if.ordinal()];
        Cif cfor = i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Cfor(y22Var, rx.internal.util.Ctry.f35868new) : new Ccase(y22Var) : new Cnew(y22Var) : new Ctry(y22Var) : new Cgoto(y22Var);
        y22Var.add(cfor);
        y22Var.setProducer(cfor);
        this.f34718do.call(cfor);
    }
}
