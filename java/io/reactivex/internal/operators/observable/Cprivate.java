package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.zw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26809for;

    /* renamed from: if, reason: not valid java name */
    public final long f26810if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26811new;

    /* renamed from: io.reactivex.internal.operators.observable.private$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;
        public final long idx;
        public final AtomicBoolean once = new AtomicBoolean();
        public final Cif<T> parent;
        public final T value;

        public Cdo(T t, long j, Cif<T> cif) {
            this.value = t;
            this.idx = j;
            this.parent = cif;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.m29604do(this.idx, this.value, this);
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.private$if, reason: invalid class name */
    public static final class Cif<T> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public Disposable f26812case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26813do;

        /* renamed from: else, reason: not valid java name */
        public volatile long f26814else;

        /* renamed from: for, reason: not valid java name */
        public final TimeUnit f26815for;

        /* renamed from: goto, reason: not valid java name */
        public boolean f26816goto;

        /* renamed from: if, reason: not valid java name */
        public final long f26817if;

        /* renamed from: new, reason: not valid java name */
        public final Ctry.Cfor f26818new;

        /* renamed from: try, reason: not valid java name */
        public Disposable f26819try;

        public Cif(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.f26813do = observer;
            this.f26817if = j;
            this.f26815for = timeUnit;
            this.f26818new = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26819try.dispose();
            this.f26818new.dispose();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29604do(long j, T t, Cdo<T> cdo) {
            if (j == this.f26814else) {
                this.f26813do.onNext(t);
                cdo.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26818new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26816goto) {
                return;
            }
            this.f26816goto = true;
            Disposable disposable = this.f26812case;
            if (disposable != null) {
                disposable.dispose();
            }
            Cdo cdo = (Cdo) disposable;
            if (cdo != null) {
                cdo.run();
            }
            this.f26813do.onComplete();
            this.f26818new.dispose();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26816goto) {
                jp1.l(th);
                return;
            }
            Disposable disposable = this.f26812case;
            if (disposable != null) {
                disposable.dispose();
            }
            this.f26816goto = true;
            this.f26813do.onError(th);
            this.f26818new.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26816goto) {
                return;
            }
            long j = this.f26814else + 1;
            this.f26814else = j;
            Disposable disposable = this.f26812case;
            if (disposable != null) {
                disposable.dispose();
            }
            Cdo cdo = new Cdo(t, j, this);
            this.f26812case = cdo;
            cdo.setResource(this.f26818new.mo29362for(cdo, this.f26817if, this.f26815for));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26819try, disposable)) {
                this.f26819try = disposable;
                this.f26813do.onSubscribe(this);
            }
        }
    }

    public Cprivate(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Ctry ctry) {
        super(observableSource);
        this.f26810if = j;
        this.f26809for = timeUnit;
        this.f26811new = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cif(new zw1(observer), this.f26810if, this.f26809for, this.f26811new.mo4229if()));
    }
}
