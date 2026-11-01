package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> implements FlowableSubscriber<T> {

    /* renamed from: class, reason: not valid java name */
    public static final Cdo[] f25930class = new Cdo[0];

    /* renamed from: const, reason: not valid java name */
    public static final Cdo[] f25931const = new Cdo[0];

    /* renamed from: break, reason: not valid java name */
    public Throwable f25932break;

    /* renamed from: case, reason: not valid java name */
    public volatile long f25933case;

    /* renamed from: catch, reason: not valid java name */
    public volatile boolean f25934catch;

    /* renamed from: else, reason: not valid java name */
    public final Cif<T> f25935else;

    /* renamed from: for, reason: not valid java name */
    public final AtomicBoolean f25936for;

    /* renamed from: goto, reason: not valid java name */
    public Cif<T> f25937goto;

    /* renamed from: new, reason: not valid java name */
    public final int f25938new;

    /* renamed from: this, reason: not valid java name */
    public int f25939this;

    /* renamed from: try, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f25940try;

    /* renamed from: io.reactivex.internal.operators.flowable.throw$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 6770240836423125754L;
        public final Subscriber<? super T> downstream;
        public long index;
        public Cif<T> node;
        public int offset;
        public final Cthrow<T> parent;
        public final AtomicLong requested = new AtomicLong();

        public Cdo(Subscriber<? super T> subscriber, Cthrow<T> cthrow) {
            this.downstream = subscriber;
            this.parent = cthrow;
            this.node = cthrow.f25935else;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.requested.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.P7(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6777if(this.requested, j);
                this.parent.Q7(this);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.throw$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public final T[] f25941do;

        /* renamed from: if, reason: not valid java name */
        public volatile Cif<T> f25942if;

        public Cif(int i) {
            this.f25941do = (T[]) new Object[i];
        }
    }

    public Cthrow(io.reactivex.Cfor<T> cfor, int i) {
        super(cfor);
        this.f25938new = i;
        this.f25936for = new AtomicBoolean();
        Cif<T> cif = new Cif<>(i);
        this.f25935else = cif;
        this.f25937goto = cif;
        this.f25940try = new AtomicReference<>(f25930class);
    }

    public void L7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f25940try.get();
            if (cdoArr == f25931const) {
                return;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f25940try.compareAndSet(cdoArr, cdoArr2));
    }

    public long M7() {
        return this.f25933case;
    }

    public boolean N7() {
        return this.f25940try.get().length != 0;
    }

    public boolean O7() {
        return this.f25936for.get();
    }

    public void P7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f25940try.get();
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
                cdoArr2 = f25930class;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f25940try.compareAndSet(cdoArr, cdoArr2));
    }

    public void Q7(Cdo<T> cdo) {
        if (cdo.getAndIncrement() != 0) {
            return;
        }
        long j = cdo.index;
        int i = cdo.offset;
        Cif<T> cif = cdo.node;
        AtomicLong atomicLong = cdo.requested;
        Subscriber<? super T> subscriber = cdo.downstream;
        int i2 = this.f25938new;
        int iAddAndGet = 1;
        while (true) {
            boolean z = this.f25934catch;
            boolean z2 = this.f25933case == j;
            if (z && z2) {
                cdo.node = null;
                Throwable th = this.f25932break;
                if (th != null) {
                    subscriber.onError(th);
                    return;
                } else {
                    subscriber.onComplete();
                    return;
                }
            }
            if (!z2) {
                long j2 = atomicLong.get();
                if (j2 == Long.MIN_VALUE) {
                    cdo.node = null;
                    return;
                } else if (j2 != j) {
                    if (i == i2) {
                        cif = cif.f25942if;
                        i = 0;
                    }
                    subscriber.onNext(cif.f25941do[i]);
                    i++;
                    j++;
                }
            }
            cdo.index = j;
            cdo.offset = i;
            cdo.node = cif;
            iAddAndGet = cdo.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo<T> cdo = new Cdo<>(subscriber, this);
        subscriber.onSubscribe(cdo);
        L7(cdo);
        if (this.f25936for.get() || !this.f25936for.compareAndSet(false, true)) {
            Q7(cdo);
        } else {
            this.f25614if.m5(this);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f25934catch = true;
        for (Cdo<T> cdo : this.f25940try.getAndSet(f25931const)) {
            Q7(cdo);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f25934catch) {
            jp1.l(th);
            return;
        }
        this.f25932break = th;
        this.f25934catch = true;
        for (Cdo<T> cdo : this.f25940try.getAndSet(f25931const)) {
            Q7(cdo);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        int i = this.f25939this;
        if (i == this.f25938new) {
            Cif<T> cif = new Cif<>(i);
            cif.f25941do[0] = t;
            this.f25939this = 1;
            this.f25937goto.f25942if = cif;
            this.f25937goto = cif;
        } else {
            this.f25937goto.f25941do[i] = t;
            this.f25939this = i + 1;
        }
        this.f25933case++;
        for (Cdo<T> cdo : this.f25940try.get()) {
            Q7(cdo);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        subscription.request(Long.MAX_VALUE);
    }
}
