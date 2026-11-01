package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* loaded from: classes3.dex */
public final class d<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super Throwable> f26108if;

    /* renamed from: io.reactivex.internal.operators.maybe.d$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26109do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26110for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super Throwable> f26111if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Predicate<? super Throwable> predicate) {
            this.f26109do = maybeObserver;
            this.f26111if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26110for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26110for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26109do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                if (this.f26111if.test(th)) {
                    this.f26109do.onComplete();
                } else {
                    this.f26109do.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f26109do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26110for, disposable)) {
                this.f26110for = disposable;
                this.f26109do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26109do.onSuccess(t);
        }
    }

    public d(MaybeSource<T> maybeSource, Predicate<? super Throwable> predicate) {
        super(maybeSource);
        this.f26108if = predicate;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26108if));
    }
}
