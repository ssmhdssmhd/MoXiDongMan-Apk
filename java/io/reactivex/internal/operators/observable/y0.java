package io.reactivex.internal.operators.observable;

import android.support.v4.h4;
import android.support.v4.si0;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.subjects.Cgoto;
import io.reactivex.subjects.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class y0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Cnew<Throwable>, ? extends ObservableSource<?>> f27006if;

    /* renamed from: io.reactivex.internal.operators.observable.y0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 802743776666017014L;
        public volatile boolean active;
        public final Observer<? super T> downstream;
        public final Cgoto<Throwable> signaller;
        public final ObservableSource<T> source;
        public final AtomicInteger wip = new AtomicInteger();
        public final h4 error = new h4();
        public final Cdo<T>.C0331do inner = new C0331do();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.y0$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0331do extends AtomicReference<Disposable> implements Observer<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            public C0331do() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                Cdo.this.innerComplete();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Cdo.this.innerError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(Object obj) {
                Cdo.this.innerNext();
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(Observer<? super T> observer, Cgoto<Throwable> cgoto, ObservableSource<T> observableSource) {
            this.downstream = observer;
            this.signaller = cgoto;
            this.source = observableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this.inner);
        }

        public void innerComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            si0.m7411do(this.downstream, this, this.error);
        }

        public void innerError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            si0.m7412for(this.downstream, th, this, this.error);
        }

        public void innerNext() {
            subscribeNext();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.inner);
            si0.m7411do(this.downstream, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.replace(this.upstream, null);
            this.active = false;
            this.signaller.onNext(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            si0.m7415try(this.downstream, t, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.upstream, disposable);
        }

        public void subscribeNext() {
            if (this.wip.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.active) {
                        this.active = true;
                        this.source.subscribe(this);
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }

    public y0(ObservableSource<T> observableSource, Function<? super Cnew<Throwable>, ? extends ObservableSource<?>> function) {
        super(observableSource);
        this.f27006if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cgoto<T> cgotoM29814try = Ctry.m29840else().m29814try();
        try {
            ObservableSource observableSource = (ObservableSource) Cif.m29468else(this.f27006if.apply(cgotoM29814try), "The handler returned a null ObservableSource");
            Cdo cdo = new Cdo(observer, cgotoM29814try, this.f26500do);
            observer.onSubscribe(cdo);
            observableSource.subscribe(cdo.inner);
            cdo.subscribeNext();
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
