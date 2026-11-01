package io.reactivex.internal.operators.observable;

import android.support.v4.n10;
import android.support.v4.t80;
import android.support.v4.ti1;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.observers.Ctry;
import java.util.Collection;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.observable.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<U> f26543for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<B> f26544if;

    /* renamed from: io.reactivex.internal.operators.observable.final$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>, B> extends n10<B> {

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, U, B> f26545if;

        public Cdo(Cif<T, U, B> cif) {
            this.f26545if = cif;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26545if.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26545if.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            this.f26545if.m29575try();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.final$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>, B> extends Ctry<T, U, U> implements Observer<T>, Disposable {
        public Disposable a;
        public U b;

        /* renamed from: implements, reason: not valid java name */
        public final Callable<U> f26546implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final ObservableSource<B> f26547instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public Disposable f26548synchronized;

        public Cif(Observer<? super U> observer, Callable<U> callable, ObservableSource<B> observableSource) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.f26546implements = callable;
            this.f26547instanceof = observableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f25357interface) {
                return;
            }
            this.f25357interface = true;
            this.a.dispose();
            this.f26548synchronized.dispose();
            if (enter()) {
                this.f25361volatile.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        @Override // io.reactivex.internal.observers.Ctry, io.reactivex.internal.util.ObservableQueueDrain
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> observer, U u) {
            this.f25359strictfp.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            synchronized (this) {
                U u = this.b;
                if (u == null) {
                    return;
                }
                this.b = null;
                this.f25361volatile.offer(u);
                this.f25358protected = true;
                if (enter()) {
                    ti1.m7957new(this.f25361volatile, this.f25359strictfp, false, this, this);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            dispose();
            this.f25359strictfp.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.b;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26548synchronized, disposable)) {
                this.f26548synchronized = disposable;
                try {
                    this.b = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26546implements.call(), "The buffer supplied is null");
                    Cdo cdo = new Cdo(this);
                    this.a = cdo;
                    this.f25359strictfp.onSubscribe(this);
                    if (this.f25357interface) {
                        return;
                    }
                    this.f26547instanceof.subscribe(cdo);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f25357interface = true;
                    disposable.dispose();
                    io.reactivex.internal.disposables.Cif.error(th, this.f25359strictfp);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m29575try() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26546implements.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u2 = this.b;
                    if (u2 == null) {
                        return;
                    }
                    this.b = u;
                    m29477if(u2, false, this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                dispose();
                this.f25359strictfp.onError(th);
            }
        }
    }

    public Cfinal(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, Callable<U> callable) {
        super(observableSource);
        this.f26544if = observableSource2;
        this.f26543for = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        this.f26500do.subscribe(new Cif(new zw1(observer), this.f26543for, this.f26544if));
    }
}
