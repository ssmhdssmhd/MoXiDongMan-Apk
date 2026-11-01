package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
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
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<U> f26467for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends ObservableSource<B>> f26468if;

    /* renamed from: io.reactivex.internal.operators.observable.const$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>, B> extends n10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f26469for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, U, B> f26470if;

        public Cdo(Cif<T, U, B> cif) {
            this.f26470if = cif;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26469for) {
                return;
            }
            this.f26469for = true;
            this.f26470if.m29571case();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26469for) {
                jp1.l(th);
            } else {
                this.f26469for = true;
                this.f26470if.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (this.f26469for) {
                return;
            }
            this.f26469for = true;
            dispose();
            this.f26470if.m29571case();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.const$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>, B> extends Ctry<T, U, U> implements Observer<T>, Disposable {
        public final AtomicReference<Disposable> a;
        public U b;

        /* renamed from: implements, reason: not valid java name */
        public final Callable<U> f26471implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final Callable<? extends ObservableSource<B>> f26472instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public Disposable f26473synchronized;

        public Cif(Observer<? super U> observer, Callable<U> callable, Callable<? extends ObservableSource<B>> callable2) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.a = new AtomicReference<>();
            this.f26471implements = callable;
            this.f26472instanceof = callable2;
        }

        /* renamed from: case, reason: not valid java name */
        public void m29571case() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26471implements.call(), "The buffer supplied is null");
                try {
                    ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26472instanceof.call(), "The boundary ObservableSource supplied is null");
                    Cdo cdo = new Cdo(this);
                    if (io.reactivex.internal.disposables.Cdo.replace(this.a, cdo)) {
                        synchronized (this) {
                            U u2 = this.b;
                            if (u2 == null) {
                                return;
                            }
                            this.b = u;
                            observableSource.subscribe(cdo);
                            m29477if(u2, false, this);
                        }
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f25357interface = true;
                    this.f26473synchronized.dispose();
                    this.f25359strictfp.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                dispose();
                this.f25359strictfp.onError(th2);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f25357interface) {
                return;
            }
            this.f25357interface = true;
            this.f26473synchronized.dispose();
            m29573try();
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
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26473synchronized, disposable)) {
                this.f26473synchronized = disposable;
                Observer<? super V> observer = this.f25359strictfp;
                try {
                    this.b = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26471implements.call(), "The buffer supplied is null");
                    try {
                        ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26472instanceof.call(), "The boundary ObservableSource supplied is null");
                        Cdo cdo = new Cdo(this);
                        this.a.set(cdo);
                        observer.onSubscribe(this);
                        if (this.f25357interface) {
                            return;
                        }
                        observableSource.subscribe(cdo);
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.f25357interface = true;
                        disposable.dispose();
                        io.reactivex.internal.disposables.Cif.error(th, observer);
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    this.f25357interface = true;
                    disposable.dispose();
                    io.reactivex.internal.disposables.Cif.error(th2, observer);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m29573try() {
            io.reactivex.internal.disposables.Cdo.dispose(this.a);
        }
    }

    public Cconst(ObservableSource<T> observableSource, Callable<? extends ObservableSource<B>> callable, Callable<U> callable2) {
        super(observableSource);
        this.f26468if = callable;
        this.f26467for = callable2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        this.f26500do.subscribe(new Cif(new zw1(observer), this.f26467for, this.f26468if));
    }
}
