package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.internal.operators.observable.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final int f26455for;

    /* renamed from: if, reason: not valid java name */
    public final int f26456if;

    /* renamed from: new, reason: not valid java name */
    public final Callable<U> f26457new;

    /* renamed from: io.reactivex.internal.operators.observable.catch$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public Disposable f26458case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super U> f26459do;

        /* renamed from: for, reason: not valid java name */
        public final Callable<U> f26460for;

        /* renamed from: if, reason: not valid java name */
        public final int f26461if;

        /* renamed from: new, reason: not valid java name */
        public U f26462new;

        /* renamed from: try, reason: not valid java name */
        public int f26463try;

        public Cdo(Observer<? super U> observer, int i, Callable<U> callable) {
            this.f26459do = observer;
            this.f26461if = i;
            this.f26460for = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26458case.dispose();
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m29570do() {
            try {
                this.f26462new = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26460for.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26462new = null;
                Disposable disposable = this.f26458case;
                if (disposable == null) {
                    io.reactivex.internal.disposables.Cif.error(th, this.f26459do);
                    return false;
                }
                disposable.dispose();
                this.f26459do.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26458case.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f26462new;
            if (u != null) {
                this.f26462new = null;
                if (!u.isEmpty()) {
                    this.f26459do.onNext(u);
                }
                this.f26459do.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26462new = null;
            this.f26459do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            U u = this.f26462new;
            if (u != null) {
                u.add(t);
                int i = this.f26463try + 1;
                this.f26463try = i;
                if (i >= this.f26461if) {
                    this.f26459do.onNext(u);
                    this.f26463try = 0;
                    m29570do();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26458case, disposable)) {
                this.f26458case = disposable;
                this.f26459do.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.catch$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8223395059921494546L;
        public final Callable<U> bufferSupplier;
        public final ArrayDeque<U> buffers = new ArrayDeque<>();
        public final int count;
        public final Observer<? super U> downstream;
        public long index;
        public final int skip;
        public Disposable upstream;

        public Cif(Observer<? super U> observer, int i, int i2, Callable<U> callable) {
            this.downstream = observer;
            this.count = i;
            this.skip = i2;
            this.bufferSupplier = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            while (!this.buffers.isEmpty()) {
                this.downstream.onNext(this.buffers.poll());
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.buffers.clear();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.index;
            this.index = 1 + j;
            if (j % this.skip == 0) {
                try {
                    this.buffers.offer((Collection) io.reactivex.internal.functions.Cif.m29468else(this.bufferSupplier.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th) {
                    this.buffers.clear();
                    this.upstream.dispose();
                    this.downstream.onError(th);
                    return;
                }
            }
            Iterator<U> it = this.buffers.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t);
                if (this.count <= next.size()) {
                    it.remove();
                    this.downstream.onNext(next);
                }
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

    public Ccatch(ObservableSource<T> observableSource, int i, int i2, Callable<U> callable) {
        super(observableSource);
        this.f26456if = i;
        this.f26455for = i2;
        this.f26457new = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        int i = this.f26455for;
        int i2 = this.f26456if;
        if (i != i2) {
            this.f26500do.subscribe(new Cif(observer, this.f26456if, this.f26455for, this.f26457new));
            return;
        }
        Cdo cdo = new Cdo(observer, i2, this.f26457new);
        if (cdo.m29570do()) {
            this.f26500do.subscribe(cdo);
        }
    }
}
