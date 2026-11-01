package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.m3;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.fuseable.FuseToObservable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class f1<T> extends jz1<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T> f26530do;

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super T, ? super T> f26531for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends T> f26532if;

    /* renamed from: new, reason: not valid java name */
    public final int f26533new;

    /* renamed from: io.reactivex.internal.operators.observable.f1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;
        public volatile boolean cancelled;
        public final BiPredicate<? super T, ? super T> comparer;
        public final SingleObserver<? super Boolean> downstream;
        public final ObservableSource<? extends T> first;
        public final Cif<T>[] observers;
        public final m3 resources = new m3(2);
        public final ObservableSource<? extends T> second;
        public T v1;
        public T v2;

        public Cdo(SingleObserver<? super Boolean> singleObserver, int i, ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
            this.downstream = singleObserver;
            this.first = observableSource;
            this.second = observableSource2;
            this.comparer = biPredicate;
            this.observers = new Cif[]{new Cif<>(this, 0, i), new Cif<>(this, 1, i)};
        }

        public void cancel(e12<T> e12Var, e12<T> e12Var2) {
            this.cancelled = true;
            e12Var.clear();
            e12Var2.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.resources.dispose();
            if (getAndIncrement() == 0) {
                Cif<T>[] cifArr = this.observers;
                cifArr[0].f26536if.clear();
                cifArr[1].f26536if.clear();
            }
        }

        public void drain() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            Cif<T>[] cifArr = this.observers;
            Cif<T> cif = cifArr[0];
            e12<T> e12Var = cif.f26536if;
            Cif<T> cif2 = cifArr[1];
            e12<T> e12Var2 = cif2.f26536if;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = cif.f26537new;
                if (z && (th2 = cif.f26538try) != null) {
                    cancel(e12Var, e12Var2);
                    this.downstream.onError(th2);
                    return;
                }
                boolean z2 = cif2.f26537new;
                if (z2 && (th = cif2.f26538try) != null) {
                    cancel(e12Var, e12Var2);
                    this.downstream.onError(th);
                    return;
                }
                if (this.v1 == null) {
                    this.v1 = e12Var.poll();
                }
                boolean z3 = this.v1 == null;
                if (this.v2 == null) {
                    this.v2 = e12Var2.poll();
                }
                T t = this.v2;
                boolean z4 = t == null;
                if (z && z2 && z3 && z4) {
                    this.downstream.onSuccess(Boolean.TRUE);
                    return;
                }
                if (z && z2 && z3 != z4) {
                    cancel(e12Var, e12Var2);
                    this.downstream.onSuccess(Boolean.FALSE);
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.comparer.test(this.v1, t)) {
                            cancel(e12Var, e12Var2);
                            this.downstream.onSuccess(Boolean.FALSE);
                            return;
                        } else {
                            this.v1 = null;
                            this.v2 = null;
                        }
                    } catch (Throwable th3) {
                        t80.m7781if(th3);
                        cancel(e12Var, e12Var2);
                        this.downstream.onError(th3);
                        return;
                    }
                }
                if (z3 || z4) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            e12Var.clear();
            e12Var2.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public boolean setDisposable(Disposable disposable, int i) {
            return this.resources.setResource(i, disposable);
        }

        public void subscribe() {
            Cif<T>[] cifArr = this.observers;
            this.first.subscribe(cifArr[0]);
            this.second.subscribe(cifArr[1]);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.f1$if, reason: invalid class name */
    public static final class Cif<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cdo<T> f26534do;

        /* renamed from: for, reason: not valid java name */
        public final int f26535for;

        /* renamed from: if, reason: not valid java name */
        public final e12<T> f26536if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f26537new;

        /* renamed from: try, reason: not valid java name */
        public Throwable f26538try;

        public Cif(Cdo<T> cdo, int i, int i2) {
            this.f26534do = cdo;
            this.f26535for = i;
            this.f26536if = new e12<>(i2);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26537new = true;
            this.f26534do.drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26538try = th;
            this.f26537new = true;
            this.f26534do.drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26536if.offer(t);
            this.f26534do.drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26534do.setDisposable(disposable, this.f26535for);
        }
    }

    public f1(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        this.f26530do = observableSource;
        this.f26532if = observableSource2;
        this.f26531for = biPredicate;
        this.f26533new = i;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<Boolean> fuseToObservable() {
        return jp1.i(new e1(this.f26530do, this.f26532if, this.f26531for, this.f26533new));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        Cdo cdo = new Cdo(singleObserver, this.f26533new, this.f26530do, this.f26532if, this.f26531for);
        singleObserver.onSubscribe(cdo);
        cdo.subscribe();
    }
}
