package io.reactivex.internal.operators.observable;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.n10;
import android.support.v4.t80;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.observers.Ctry;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.subjects.Cthis;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class i2<T, B, V> extends io.reactivex.internal.operators.observable.Cdo<T, io.reactivex.Cnew<T>> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super B, ? extends ObservableSource<V>> f26597for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<B> f26598if;

    /* renamed from: new, reason: not valid java name */
    public final int f26599new;

    /* renamed from: io.reactivex.internal.operators.observable.i2$do, reason: invalid class name */
    public static final class Cdo<T, V> extends n10<V> {

        /* renamed from: for, reason: not valid java name */
        public final Cthis<T> f26600for;

        /* renamed from: if, reason: not valid java name */
        public final Cfor<T, ?, V> f26601if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26602new;

        public Cdo(Cfor<T, ?, V> cfor, Cthis<T> cthis) {
            this.f26601if = cfor;
            this.f26600for = cthis;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26602new) {
                return;
            }
            this.f26602new = true;
            this.f26601if.m29582new(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26602new) {
                jp1.l(th);
            } else {
                this.f26602new = true;
                this.f26601if.m29580else(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(V v) {
            dispose();
            onComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.i2$for, reason: invalid class name */
    public static final class Cfor<T, B, V> extends Ctry<T, Object, io.reactivex.Cnew<T>> implements Disposable {
        public final cq a;
        public Disposable b;
        public final AtomicReference<Disposable> c;
        public final List<Cthis<T>> d;
        public final AtomicLong e;
        public final AtomicBoolean f;

        /* renamed from: implements, reason: not valid java name */
        public final ObservableSource<B> f26603implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final Function<? super B, ? extends ObservableSource<V>> f26604instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final int f26605synchronized;

        public Cfor(Observer<? super io.reactivex.Cnew<T>> observer, ObservableSource<B> observableSource, Function<? super B, ? extends ObservableSource<V>> function, int i) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.c = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.e = atomicLong;
            this.f = new AtomicBoolean();
            this.f26603implements = observableSource;
            this.f26604instanceof = function;
            this.f26605synchronized = i;
            this.a = new cq();
            this.d = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // io.reactivex.internal.observers.Ctry, io.reactivex.internal.util.ObservableQueueDrain
        public void accept(Observer<? super io.reactivex.Cnew<T>> observer, Object obj) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: case, reason: not valid java name */
        public void m29579case() {
            io.reactivex.internal.queue.Cdo cdo = (io.reactivex.internal.queue.Cdo) this.f25361volatile;
            Observer<? super V> observer = this.f25359strictfp;
            List<Cthis<T>> list = this.d;
            int iLeave = 1;
            while (true) {
                boolean z = this.f25358protected;
                Object objPoll = cdo.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    m29583try();
                    Throwable th = this.f25360transient;
                    if (th != null) {
                        Iterator<Cthis<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th);
                        }
                    } else {
                        Iterator<Cthis<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onComplete();
                        }
                    }
                    list.clear();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (objPoll instanceof Cnew) {
                    Cnew cnew = (Cnew) objPoll;
                    Cthis<T> cthis = cnew.f26607do;
                    if (cthis != null) {
                        if (list.remove(cthis)) {
                            cnew.f26607do.onComplete();
                            if (this.e.decrementAndGet() == 0) {
                                m29583try();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f.get()) {
                        Cthis<T> cthisM29831else = Cthis.m29831else(this.f26605synchronized);
                        list.add(cthisM29831else);
                        observer.onNext(cthisM29831else);
                        try {
                            ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26604instanceof.apply(cnew.f26608if), "The ObservableSource supplied is null");
                            Cdo cdo2 = new Cdo(this, cthisM29831else);
                            if (this.a.add(cdo2)) {
                                this.e.getAndIncrement();
                                observableSource.subscribe(cdo2);
                            }
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            this.f.set(true);
                            observer.onError(th2);
                        }
                    }
                } else {
                    Iterator<Cthis<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().onNext(Cbreak.getValue(objPoll));
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cdo.dispose(this.c);
                if (this.e.decrementAndGet() == 0) {
                    this.b.dispose();
                }
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m29580else(Throwable th) {
            this.b.dispose();
            this.a.dispose();
            onError(th);
        }

        /* renamed from: goto, reason: not valid java name */
        public void m29581goto(B b) {
            this.f25361volatile.offer(new Cnew(null, b));
            if (enter()) {
                m29579case();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f.get();
        }

        /* renamed from: new, reason: not valid java name */
        public void m29582new(Cdo<T, V> cdo) {
            this.a.delete(cdo);
            this.f25361volatile.offer(new Cnew(cdo.f26600for, null));
            if (enter()) {
                m29579case();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f25358protected) {
                return;
            }
            this.f25358protected = true;
            if (enter()) {
                m29579case();
            }
            if (this.e.decrementAndGet() == 0) {
                this.a.dispose();
            }
            this.f25359strictfp.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f25358protected) {
                jp1.l(th);
                return;
            }
            this.f25360transient = th;
            this.f25358protected = true;
            if (enter()) {
                m29579case();
            }
            if (this.e.decrementAndGet() == 0) {
                this.a.dispose();
            }
            this.f25359strictfp.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (m29475do()) {
                Iterator<Cthis<T>> it = this.d.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.f25361volatile.offer(Cbreak.next(t));
                if (!enter()) {
                    return;
                }
            }
            m29579case();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.b, disposable)) {
                this.b = disposable;
                this.f25359strictfp.onSubscribe(this);
                if (this.f.get()) {
                    return;
                }
                Cif cif = new Cif(this);
                if (this.c.compareAndSet(null, cif)) {
                    this.f26603implements.subscribe(cif);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m29583try() {
            this.a.dispose();
            io.reactivex.internal.disposables.Cdo.dispose(this.c);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.i2$if, reason: invalid class name */
    public static final class Cif<T, B> extends n10<B> {

        /* renamed from: if, reason: not valid java name */
        public final Cfor<T, B, ?> f26606if;

        public Cif(Cfor<T, B, ?> cfor) {
            this.f26606if = cfor;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26606if.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26606if.m29580else(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            this.f26606if.m29581goto(b);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.i2$new, reason: invalid class name */
    public static final class Cnew<T, B> {

        /* renamed from: do, reason: not valid java name */
        public final Cthis<T> f26607do;

        /* renamed from: if, reason: not valid java name */
        public final B f26608if;

        public Cnew(Cthis<T> cthis, B b) {
            this.f26607do = cthis;
            this.f26608if = b;
        }
    }

    public i2(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, Function<? super B, ? extends ObservableSource<V>> function, int i) {
        super(observableSource);
        this.f26598if = observableSource2;
        this.f26597for = function;
        this.f26599new = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super io.reactivex.Cnew<T>> observer) {
        this.f26500do.subscribe(new Cfor(new zw1(observer), this.f26598if, this.f26597for, this.f26599new));
    }
}
