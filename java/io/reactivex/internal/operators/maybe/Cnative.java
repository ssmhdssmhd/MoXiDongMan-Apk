package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiPredicate;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative<T> extends jz1<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<? extends T> f26196do;

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super T, ? super T> f26197for;

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<? extends T> f26198if;

    /* renamed from: io.reactivex.internal.operators.maybe.native$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable {
        public final SingleObserver<? super Boolean> downstream;
        public final BiPredicate<? super T, ? super T> isEqual;
        public final Cif<T> observer1;
        public final Cif<T> observer2;

        public Cdo(SingleObserver<? super Boolean> singleObserver, BiPredicate<? super T, ? super T> biPredicate) {
            super(2);
            this.downstream = singleObserver;
            this.isEqual = biPredicate;
            this.observer1 = new Cif<>(this);
            this.observer2 = new Cif<>(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.observer1.dispose();
            this.observer2.dispose();
        }

        public void done() {
            if (decrementAndGet() == 0) {
                Object obj = this.observer1.value;
                Object obj2 = this.observer2.value;
                if (obj == null || obj2 == null) {
                    this.downstream.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
                    return;
                }
                try {
                    this.downstream.onSuccess(Boolean.valueOf(this.isEqual.test(obj, obj2)));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                }
            }
        }

        public void error(Cif<T> cif, Throwable th) {
            if (getAndSet(0) <= 0) {
                jp1.l(th);
                return;
            }
            Cif<T> cif2 = this.observer1;
            if (cif == cif2) {
                this.observer2.dispose();
            } else {
                cif2.dispose();
            }
            this.downstream.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.observer1.get());
        }

        public void subscribe(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
            maybeSource.subscribe(this.observer1);
            maybeSource2.subscribe(this.observer2);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.native$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = -3031974433025990931L;
        public final Cdo<T> parent;
        public Object value;

        public Cif(Cdo<T> cdo) {
            this.parent = cdo;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.parent.done();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.parent.error(this, th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.value = t;
            this.parent.done();
        }
    }

    public Cnative(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, BiPredicate<? super T, ? super T> biPredicate) {
        this.f26196do = maybeSource;
        this.f26198if = maybeSource2;
        this.f26197for = biPredicate;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        Cdo cdo = new Cdo(singleObserver, this.f26197for);
        singleObserver.onSubscribe(cdo);
        cdo.subscribe(this.f26196do, this.f26198if);
    }
}
