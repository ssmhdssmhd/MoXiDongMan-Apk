package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;

/* renamed from: io.reactivex.internal.operators.maybe.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26177do;

    /* renamed from: if, reason: not valid java name */
    public final Action f26178if;

    /* renamed from: io.reactivex.internal.operators.maybe.import$do, reason: invalid class name */
    public final class Cdo implements MaybeObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26179do;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26179do = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                Cimport.this.f26178if.run();
                this.f26179do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26179do.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                Cimport.this.f26178if.run();
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f26179do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f26179do.onSubscribe(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Cimport.this.f26178if.run();
                this.f26179do.onSuccess(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26179do.onError(th);
            }
        }
    }

    public Cimport(MaybeSource<T> maybeSource, Action action) {
        this.f26177do = maybeSource;
        this.f26178if = action;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26177do.subscribe(new Cdo(maybeObserver));
    }
}
