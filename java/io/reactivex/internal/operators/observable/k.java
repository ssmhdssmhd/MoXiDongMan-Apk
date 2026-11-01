package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.f8;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class k<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final T[] f26651do;

    /* renamed from: io.reactivex.internal.operators.observable.k$do, reason: invalid class name */
    public static final class Cdo<T> extends f8<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26652do;

        /* renamed from: for, reason: not valid java name */
        public int f26653for;

        /* renamed from: if, reason: not valid java name */
        public final T[] f26654if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26655new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f26656try;

        public Cdo(Observer<? super T> observer, T[] tArr) {
            this.f26652do = observer;
            this.f26654if = tArr;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f26653for = this.f26654if.length;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26656try = true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29584do() {
            T[] tArr = this.f26654if;
            int length = tArr.length;
            for (int i = 0; i < length && !isDisposed(); i++) {
                T t = tArr[i];
                if (t == null) {
                    this.f26652do.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                this.f26652do.onNext(t);
            }
            if (isDisposed()) {
                return;
            }
            this.f26652do.onComplete();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26656try;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f26653for == this.f26654if.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() {
            int i = this.f26653for;
            T[] tArr = this.f26654if;
            if (i == tArr.length) {
                return null;
            }
            this.f26653for = i + 1;
            return (T) Cif.m29468else(tArr[i], "The array element is null");
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f26655new = true;
            return 1;
        }
    }

    public k(T[] tArr) {
        this.f26651do = tArr;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer, this.f26651do);
        observer.onSubscribe(cdo);
        if (cdo.f26655new) {
            return;
        }
        cdo.m29584do();
    }
}
