package io.reactivex.processors;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.ez;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.internal.functions.Cif;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.processors.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public Throwable f27493for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<C0348do<T>[]> f27494if = new AtomicReference<>(f27492try);

    /* renamed from: new, reason: not valid java name */
    public T f27495new;

    /* renamed from: try, reason: not valid java name */
    public static final C0348do[] f27492try = new C0348do[0];

    /* renamed from: case, reason: not valid java name */
    public static final C0348do[] f27491case = new C0348do[0];

    /* renamed from: io.reactivex.processors.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0348do<T> extends ez<T> {
        private static final long serialVersionUID = 5629876084736248016L;
        public final Cdo<T> parent;

        public C0348do(Subscriber<? super T> subscriber, Cdo<T> cdo) {
            super(subscriber);
            this.parent = cdo;
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            if (super.tryCancel()) {
                this.parent.W7(this);
            }
        }

        public void onComplete() {
            if (isCancelled()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable th) {
            if (isCancelled()) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }
    }

    @b41
    @gl
    public static <T> Cdo<T> R7() {
        return new Cdo<>();
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        if (this.f27494if.get() == f27491case) {
            return this.f27493for;
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return this.f27494if.get() == f27491case && this.f27493for == null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27494if.get().length != 0;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return this.f27494if.get() == f27491case && this.f27493for != null;
    }

    public boolean Q7(C0348do<T> c0348do) {
        C0348do<T>[] c0348doArr;
        C0348do<T>[] c0348doArr2;
        do {
            c0348doArr = this.f27494if.get();
            if (c0348doArr == f27491case) {
                return false;
            }
            int length = c0348doArr.length;
            c0348doArr2 = new C0348do[length + 1];
            System.arraycopy(c0348doArr, 0, c0348doArr2, 0, length);
            c0348doArr2[length] = c0348do;
        } while (!this.f27494if.compareAndSet(c0348doArr, c0348doArr2));
        return true;
    }

    @a51
    public T S7() {
        if (this.f27494if.get() == f27491case) {
            return this.f27495new;
        }
        return null;
    }

    @Deprecated
    public Object[] T7() {
        T tS7 = S7();
        return tS7 != null ? new Object[]{tS7} : new Object[0];
    }

    @Deprecated
    public T[] U7(T[] tArr) {
        T tS7 = S7();
        if (tS7 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = tS7;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean V7() {
        return this.f27494if.get() == f27491case && this.f27495new != null;
    }

    public void W7(C0348do<T> c0348do) {
        C0348do<T>[] c0348doArr;
        C0348do<T>[] c0348doArr2;
        do {
            c0348doArr = this.f27494if.get();
            int length = c0348doArr.length;
            if (length == 0) {
                return;
            }
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (c0348doArr[i2] == c0348do) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                c0348doArr2 = f27492try;
            } else {
                C0348do<T>[] c0348doArr3 = new C0348do[length - 1];
                System.arraycopy(c0348doArr, 0, c0348doArr3, 0, i);
                System.arraycopy(c0348doArr, i + 1, c0348doArr3, i, (length - i) - 1);
                c0348doArr2 = c0348doArr3;
            }
        } while (!this.f27494if.compareAndSet(c0348doArr, c0348doArr2));
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        C0348do<T> c0348do = new C0348do<>(subscriber, this);
        subscriber.onSubscribe(c0348do);
        if (Q7(c0348do)) {
            if (c0348do.isCancelled()) {
                W7(c0348do);
                return;
            }
            return;
        }
        Throwable th = this.f27493for;
        if (th != null) {
            subscriber.onError(th);
            return;
        }
        T t = this.f27495new;
        if (t != null) {
            c0348do.complete(t);
        } else {
            c0348do.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        C0348do<T>[] c0348doArr = this.f27494if.get();
        C0348do<T>[] c0348doArr2 = f27491case;
        if (c0348doArr == c0348doArr2) {
            return;
        }
        T t = this.f27495new;
        C0348do<T>[] andSet = this.f27494if.getAndSet(c0348doArr2);
        int i = 0;
        if (t == null) {
            int length = andSet.length;
            while (i < length) {
                andSet[i].onComplete();
                i++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i < length2) {
            andSet[i].complete(t);
            i++;
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0348do<T>[] c0348doArr = this.f27494if.get();
        C0348do<T>[] c0348doArr2 = f27491case;
        if (c0348doArr == c0348doArr2) {
            jp1.l(th);
            return;
        }
        this.f27495new = null;
        this.f27493for = th;
        for (C0348do<T> c0348do : this.f27494if.getAndSet(c0348doArr2)) {
            c0348do.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27494if.get() == f27491case) {
            return;
        }
        this.f27495new = t;
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f27494if.get() == f27491case) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }
}
