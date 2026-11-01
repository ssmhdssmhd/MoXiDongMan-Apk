package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class a<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final T f26367for;

    /* renamed from: if, reason: not valid java name */
    public final long f26368if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26369new;

    /* renamed from: io.reactivex.internal.operators.observable.a$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public long f26370case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26371do;

        /* renamed from: else, reason: not valid java name */
        public boolean f26372else;

        /* renamed from: for, reason: not valid java name */
        public final T f26373for;

        /* renamed from: if, reason: not valid java name */
        public final long f26374if;

        /* renamed from: new, reason: not valid java name */
        public final boolean f26375new;

        /* renamed from: try, reason: not valid java name */
        public Disposable f26376try;

        public Cdo(Observer<? super T> observer, long j, T t, boolean z) {
            this.f26371do = observer;
            this.f26374if = j;
            this.f26373for = t;
            this.f26375new = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26376try.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26376try.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26372else) {
                return;
            }
            this.f26372else = true;
            T t = this.f26373for;
            if (t == null && this.f26375new) {
                this.f26371do.onError(new NoSuchElementException());
                return;
            }
            if (t != null) {
                this.f26371do.onNext(t);
            }
            this.f26371do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26372else) {
                jp1.l(th);
            } else {
                this.f26372else = true;
                this.f26371do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26372else) {
                return;
            }
            long j = this.f26370case;
            if (j != this.f26374if) {
                this.f26370case = j + 1;
                return;
            }
            this.f26372else = true;
            this.f26376try.dispose();
            this.f26371do.onNext(t);
            this.f26371do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26376try, disposable)) {
                this.f26376try = disposable;
                this.f26371do.onSubscribe(this);
            }
        }
    }

    public a(ObservableSource<T> observableSource, long j, T t, boolean z) {
        super(observableSource);
        this.f26368if = j;
        this.f26367for = t;
        this.f26369new = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26368if, this.f26367for, this.f26369new));
    }
}
