package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* renamed from: io.reactivex.internal.operators.maybe.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26212if;

    /* renamed from: io.reactivex.internal.operators.maybe.public$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26213do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26214for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26215if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Predicate<? super T> predicate) {
            this.f26213do = maybeObserver;
            this.f26215if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f26214for;
            this.f26214for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26214for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26213do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26213do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26214for, disposable)) {
                this.f26214for = disposable;
                this.f26213do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                if (this.f26215if.test(t)) {
                    this.f26213do.onSuccess(t);
                } else {
                    this.f26213do.onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26213do.onError(th);
            }
        }
    }

    public Cpublic(MaybeSource<T> maybeSource, Predicate<? super T> predicate) {
        super(maybeSource);
        this.f26212if = predicate;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26212if));
    }
}
