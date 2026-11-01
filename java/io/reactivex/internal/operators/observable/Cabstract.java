package io.reactivex.internal.operators.observable;

import android.support.v4.zw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.internal.operators.observable.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cabstract<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26388for;

    /* renamed from: if, reason: not valid java name */
    public final long f26389if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26390new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f26391try;

    /* renamed from: io.reactivex.internal.operators.observable.abstract$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public Disposable f26392case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26393do;

        /* renamed from: for, reason: not valid java name */
        public final TimeUnit f26394for;

        /* renamed from: if, reason: not valid java name */
        public final long f26395if;

        /* renamed from: new, reason: not valid java name */
        public final Ctry.Cfor f26396new;

        /* renamed from: try, reason: not valid java name */
        public final boolean f26397try;

        /* renamed from: io.reactivex.internal.operators.observable.abstract$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0314do implements Runnable {
            public RunnableC0314do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cdo.this.f26393do.onComplete();
                } finally {
                    Cdo.this.f26396new.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.internal.operators.observable.abstract$do$for, reason: invalid class name */
        public final class Cfor implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final T f26399do;

            public Cfor(T t) {
                this.f26399do = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.f26393do.onNext(this.f26399do);
            }
        }

        /* renamed from: io.reactivex.internal.operators.observable.abstract$do$if, reason: invalid class name */
        public final class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Throwable f26401do;

            public Cif(Throwable th) {
                this.f26401do = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cdo.this.f26393do.onError(this.f26401do);
                } finally {
                    Cdo.this.f26396new.dispose();
                }
            }
        }

        public Cdo(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor, boolean z) {
            this.f26393do = observer;
            this.f26395if = j;
            this.f26394for = timeUnit;
            this.f26396new = cfor;
            this.f26397try = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26392case.dispose();
            this.f26396new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26396new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26396new.mo29362for(new RunnableC0314do(), this.f26395if, this.f26394for);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26396new.mo29362for(new Cif(th), this.f26397try ? this.f26395if : 0L, this.f26394for);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26396new.mo29362for(new Cfor(t), this.f26395if, this.f26394for);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26392case, disposable)) {
                this.f26392case = disposable;
                this.f26393do.onSubscribe(this);
            }
        }
    }

    public Cabstract(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(observableSource);
        this.f26389if = j;
        this.f26388for = timeUnit;
        this.f26390new = ctry;
        this.f26391try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(this.f26391try ? observer : new zw1(observer), this.f26389if, this.f26388for, this.f26390new.mo4229if(), this.f26391try));
    }
}
