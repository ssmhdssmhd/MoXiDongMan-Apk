package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.m3;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiPredicate;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class e1<T> extends Cnew<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T> f26506do;

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super T, ? super T> f26507for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends T> f26508if;

    /* renamed from: new, reason: not valid java name */
    public final int f26509new;

    /* renamed from: io.reactivex.internal.operators.observable.e1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;
        public volatile boolean cancelled;
        public final BiPredicate<? super T, ? super T> comparer;
        public final Observer<? super Boolean> downstream;
        public final ObservableSource<? extends T> first;
        public final Cif<T>[] observers;
        public final m3 resources = new m3(2);
        public final ObservableSource<? extends T> second;
        public T v1;
        public T v2;

        public Cdo(Observer<? super Boolean> observer, int i, ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
            this.downstream = observer;
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
                cifArr[0].f26512if.clear();
                cifArr[1].f26512if.clear();
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
            e12<T> e12Var = cif.f26512if;
            Cif<T> cif2 = cifArr[1];
            e12<T> e12Var2 = cif2.f26512if;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = cif.f26513new;
                if (z && (th2 = cif.f26514try) != null) {
                    cancel(e12Var, e12Var2);
                    this.downstream.onError(th2);
                    return;
                }
                boolean z2 = cif2.f26513new;
                if (z2 && (th = cif2.f26514try) != null) {
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
                    this.downstream.onNext(Boolean.TRUE);
                    this.downstream.onComplete();
                    return;
                }
                if (z && z2 && z3 != z4) {
                    cancel(e12Var, e12Var2);
                    this.downstream.onNext(Boolean.FALSE);
                    this.downstream.onComplete();
                    return;
                }
                if (!z3 && !z4) {
                    try {
                        if (!this.comparer.test(this.v1, t)) {
                            cancel(e12Var, e12Var2);
                            this.downstream.onNext(Boolean.FALSE);
                            this.downstream.onComplete();
                            return;
                        }
                        this.v1 = null;
                        this.v2 = null;
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

    /* renamed from: io.reactivex.internal.operators.observable.e1$if, reason: invalid class name */
    public static final class Cif<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cdo<T> f26510do;

        /* renamed from: for, reason: not valid java name */
        public final int f26511for;

        /* renamed from: if, reason: not valid java name */
        public final e12<T> f26512if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f26513new;

        /* renamed from: try, reason: not valid java name */
        public Throwable f26514try;

        public Cif(Cdo<T> cdo, int i, int i2) {
            this.f26510do = cdo;
            this.f26511for = i;
            this.f26512if = new e12<>(i2);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26513new = true;
            this.f26510do.drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26514try = th;
            this.f26513new = true;
            this.f26510do.drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26512if.offer(t);
            this.f26510do.drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26510do.setDisposable(disposable, this.f26511for);
        }
    }

    public e1(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        this.f26506do = observableSource;
        this.f26508if = observableSource2;
        this.f26507for = biPredicate;
        this.f26509new = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Boolean> observer) {
        Cdo cdo = new Cdo(observer, this.f26509new, this.f26506do, this.f26508if, this.f26507for);
        observer.onSubscribe(cdo);
        cdo.subscribe();
    }
}
