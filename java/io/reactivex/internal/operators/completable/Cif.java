package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25412do;

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f25413if;

    /* renamed from: io.reactivex.internal.operators.completable.if$do, reason: invalid class name */
    public static final class Cdo implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Disposable> f25414do;

        /* renamed from: if, reason: not valid java name */
        public final CompletableObserver f25415if;

        public Cdo(AtomicReference<Disposable> atomicReference, CompletableObserver completableObserver) {
            this.f25414do = atomicReference;
            this.f25415if = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f25415if.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f25415if.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f25414do, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.completable.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0272if extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -4101678820158072998L;
        public final CompletableObserver actualObserver;
        public final CompletableSource next;

        public C0272if(CompletableObserver completableObserver, CompletableSource completableSource) {
            this.actualObserver = completableObserver;
            this.next = completableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.next.subscribe(new Cdo(this, this.actualObserver));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.actualObserver.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.actualObserver.onSubscribe(this);
            }
        }
    }

    public Cif(CompletableSource completableSource, CompletableSource completableSource2) {
        this.f25412do = completableSource;
        this.f25413if = completableSource2;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25412do.subscribe(new C0272if(completableObserver, this.f25413if));
    }
}
