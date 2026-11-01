package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.gi0;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class p<T, K, V> extends io.reactivex.internal.operators.observable.Cdo<T, gi0<K, V>> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends V> f26780for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends K> f26781if;

    /* renamed from: new, reason: not valid java name */
    public final int f26782new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f26783try;

    /* renamed from: io.reactivex.internal.operators.observable.p$do, reason: invalid class name */
    public static final class Cdo<T, K, V> extends AtomicInteger implements Observer<T>, Disposable {
        public static final Object NULL_KEY = new Object();
        private static final long serialVersionUID = -3688291656102519502L;
        public final int bufferSize;
        public final boolean delayError;
        public final Observer<? super gi0<K, V>> downstream;
        public final Function<? super T, ? extends K> keySelector;
        public Disposable upstream;
        public final Function<? super T, ? extends V> valueSelector;
        public final AtomicBoolean cancelled = new AtomicBoolean();
        public final Map<Object, Cif<K, V>> groups = new ConcurrentHashMap();

        public Cdo(Observer<? super gi0<K, V>> observer, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
            this.downstream = observer;
            this.keySelector = function;
            this.valueSelector = function2;
            this.bufferSize = i;
            this.delayError = z;
            lazySet(1);
        }

        public void cancel(K k) {
            if (k == null) {
                k = (K) NULL_KEY;
            }
            this.groups.remove(k);
            if (decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.upstream.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayList arrayList = new ArrayList(this.groups.values());
            this.groups.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Cif) it.next()).onComplete();
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            ArrayList arrayList = new ArrayList(this.groups.values());
            this.groups.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Cif) it.next()).onError(th);
            }
            this.downstream.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Map, java.util.Map<java.lang.Object, io.reactivex.internal.operators.observable.p$if<K, V>>] */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v3, types: [io.reactivex.internal.operators.observable.p$if] */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                K kApply = this.keySelector.apply(t);
                Object obj = kApply != null ? kApply : NULL_KEY;
                Cif<K, V> cif = this.groups.get(obj);
                ?? r2 = cif;
                if (cif == false) {
                    if (this.cancelled.get()) {
                        return;
                    }
                    Object objM29601if = Cif.m29601if(kApply, this.bufferSize, this, this.delayError);
                    this.groups.put(obj, objM29601if);
                    getAndIncrement();
                    this.downstream.onNext(objM29601if);
                    r2 = objM29601if;
                }
                try {
                    r2.onNext(io.reactivex.internal.functions.Cif.m29468else(this.valueSelector.apply(t), "The value supplied is null"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.upstream.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.upstream.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.p$for, reason: invalid class name */
    public static final class Cfor<T, K> extends AtomicInteger implements Disposable, ObservableSource<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        public final boolean delayError;
        public volatile boolean done;
        public Throwable error;
        public final K key;
        public final Cdo<?, K, T> parent;
        public final e12<T> queue;
        public final AtomicBoolean cancelled = new AtomicBoolean();
        public final AtomicBoolean once = new AtomicBoolean();
        public final AtomicReference<Observer<? super T>> actual = new AtomicReference<>();

        public Cfor(int i, Cdo<?, K, T> cdo, K k, boolean z) {
            this.queue = new e12<>(i);
            this.parent = cdo;
            this.key = k;
            this.delayError = z;
        }

        public boolean checkTerminated(boolean z, boolean z2, Observer<? super T> observer, boolean z3) {
            if (this.cancelled.get()) {
                this.queue.clear();
                this.parent.cancel(this.key);
                this.actual.lazySet(null);
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                this.actual.lazySet(null);
                if (th != null) {
                    observer.onError(th);
                } else {
                    observer.onComplete();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                this.actual.lazySet(null);
                observer.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            this.actual.lazySet(null);
            observer.onComplete();
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.actual.lazySet(null);
                this.parent.cancel(this.key);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            e12<T> e12Var = this.queue;
            boolean z = this.delayError;
            Observer<? super T> observer = this.actual.get();
            int iAddAndGet = 1;
            while (true) {
                if (observer != null) {
                    while (true) {
                        boolean z2 = this.done;
                        T tPoll = e12Var.poll();
                        boolean z3 = tPoll == null;
                        if (checkTerminated(z2, z3, observer, z)) {
                            return;
                        }
                        if (z3) {
                            break;
                        } else {
                            observer.onNext(tPoll);
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (observer == null) {
                    observer = this.actual.get();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled.get();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            if (!this.once.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cif.error(new IllegalStateException("Only one Observer allowed!"), observer);
                return;
            }
            observer.onSubscribe(this);
            this.actual.lazySet(observer);
            if (this.cancelled.get()) {
                this.actual.lazySet(null);
            } else {
                drain();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.p$if, reason: invalid class name */
    public static final class Cif<K, T> extends gi0<K, T> {

        /* renamed from: if, reason: not valid java name */
        public final Cfor<T, K> f26784if;

        public Cif(K k, Cfor<T, K> cfor) {
            super(k);
            this.f26784if = cfor;
        }

        /* renamed from: if, reason: not valid java name */
        public static <T, K> Cif<K, T> m29601if(K k, int i, Cdo<?, K, T> cdo, boolean z) {
            return new Cif<>(k, new Cfor(i, cdo, k, z));
        }

        public void onComplete() {
            this.f26784if.onComplete();
        }

        public void onError(Throwable th) {
            this.f26784if.onError(th);
        }

        public void onNext(T t) {
            this.f26784if.onNext(t);
        }

        @Override // io.reactivex.Cnew
        public void subscribeActual(Observer<? super T> observer) {
            this.f26784if.subscribe(observer);
        }
    }

    public p(ObservableSource<T> observableSource, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
        super(observableSource);
        this.f26781if = function;
        this.f26780for = function2;
        this.f26782new = i;
        this.f26783try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super gi0<K, V>> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26781if, this.f26780for, this.f26782new, this.f26783try));
    }
}
