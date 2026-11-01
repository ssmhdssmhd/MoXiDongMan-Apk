package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally extends np {

    /* renamed from: do, reason: not valid java name */
    public final np f25399do;

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f25400if;

    /* renamed from: io.reactivex.internal.operators.completable.finally$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 3533011714830024923L;
        public final CompletableObserver downstream;
        public final C0271do other = new C0271do(this);
        public final AtomicBoolean once = new AtomicBoolean();

        /* renamed from: io.reactivex.internal.operators.completable.finally$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0271do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5176264485428790318L;
            public final Cdo parent;

            public C0271do(Cdo cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver) {
            this.downstream = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.once.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                io.reactivex.internal.disposables.Cdo.dispose(this.other);
            }
        }

        public void innerComplete() {
            if (this.once.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                this.downstream.onComplete();
            }
        }

        public void innerError(Throwable th) {
            if (!this.once.compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.once.get();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.once.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cdo.dispose(this.other);
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (!this.once.compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.other);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public Cfinally(np npVar, CompletableSource completableSource) {
        this.f25399do = npVar;
        this.f25400if = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver);
        completableObserver.onSubscribe(cdo);
        this.f25400if.subscribe(cdo.other);
        this.f25399do.subscribe(cdo);
    }
}
