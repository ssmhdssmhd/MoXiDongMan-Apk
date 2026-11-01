package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25365do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f25366if;

    /* renamed from: io.reactivex.internal.operators.completable.break$do, reason: invalid class name */
    public static final class Cdo implements CompletableObserver, Disposable, Runnable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25367do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f25368for;

        /* renamed from: if, reason: not valid java name */
        public final Ctry f25369if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f25370new;

        public Cdo(CompletableObserver completableObserver, Ctry ctry) {
            this.f25367do = completableObserver;
            this.f25369if = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25370new = true;
            this.f25369if.mo29697new(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25370new;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f25370new) {
                return;
            }
            this.f25367do.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f25370new) {
                jp1.l(th);
            } else {
                this.f25367do.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f25368for, disposable)) {
                this.f25368for = disposable;
                this.f25367do.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25368for.dispose();
            this.f25368for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }
    }

    public Cbreak(CompletableSource completableSource, Ctry ctry) {
        this.f25365do = completableSource;
        this.f25366if = ctry;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25365do.subscribe(new Cdo(completableObserver, this.f25366if));
    }
}
