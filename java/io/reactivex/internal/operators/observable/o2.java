package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class o2<T, U, V> extends Cnew<V> {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<? extends T> f26772do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super T, ? super U, ? extends V> f26773for;

    /* renamed from: if, reason: not valid java name */
    public final Iterable<U> f26774if;

    /* renamed from: io.reactivex.internal.operators.observable.o2$do, reason: invalid class name */
    public static final class Cdo<T, U, V> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super V> f26775do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super T, ? super U, ? extends V> f26776for;

        /* renamed from: if, reason: not valid java name */
        public final Iterator<U> f26777if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26778new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26779try;

        public Cdo(Observer<? super V> observer, Iterator<U> it, BiFunction<? super T, ? super U, ? extends V> biFunction) {
            this.f26775do = observer;
            this.f26777if = it;
            this.f26776for = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26778new.dispose();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29600do(Throwable th) {
            this.f26779try = true;
            this.f26778new.dispose();
            this.f26775do.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26778new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26779try) {
                return;
            }
            this.f26779try = true;
            this.f26775do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26779try) {
                jp1.l(th);
            } else {
                this.f26779try = true;
                this.f26775do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26779try) {
                return;
            }
            try {
                try {
                    this.f26775do.onNext(Cif.m29468else(this.f26776for.apply(t, Cif.m29468else(this.f26777if.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f26777if.hasNext()) {
                            return;
                        }
                        this.f26779try = true;
                        this.f26778new.dispose();
                        this.f26775do.onComplete();
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        m29600do(th);
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    m29600do(th2);
                }
            } catch (Throwable th3) {
                t80.m7781if(th3);
                m29600do(th3);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26778new, disposable)) {
                this.f26778new = disposable;
                this.f26775do.onSubscribe(this);
            }
        }
    }

    public o2(Cnew<? extends T> cnew, Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        this.f26772do = cnew;
        this.f26774if = iterable;
        this.f26773for = biFunction;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super V> observer) {
        try {
            Iterator it = (Iterator) Cif.m29468else(this.f26774if.iterator(), "The iterator returned by other is null");
            try {
                if (it.hasNext()) {
                    this.f26772do.subscribe(new Cdo(observer, it, this.f26773for));
                } else {
                    io.reactivex.internal.disposables.Cif.complete(observer);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cif.error(th, observer);
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            io.reactivex.internal.disposables.Cif.error(th2, observer);
        }
    }
}
