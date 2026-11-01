package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.internal.operators.completable.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25424do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f25425for;

    /* renamed from: if, reason: not valid java name */
    public final long f25426if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f25427new;

    /* renamed from: try, reason: not valid java name */
    public final CompletableSource f25428try;

    /* renamed from: io.reactivex.internal.operators.completable.package$do, reason: invalid class name */
    public final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final AtomicBoolean f25429do;

        /* renamed from: for, reason: not valid java name */
        public final CompletableObserver f25430for;

        /* renamed from: if, reason: not valid java name */
        public final cq f25431if;

        /* renamed from: io.reactivex.internal.operators.completable.package$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0274do implements CompletableObserver {
            public C0274do() {
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                Cdo.this.f25431if.dispose();
                Cdo.this.f25430for.onComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                Cdo.this.f25431if.dispose();
                Cdo.this.f25430for.onError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                Cdo.this.f25431if.add(disposable);
            }
        }

        public Cdo(AtomicBoolean atomicBoolean, cq cqVar, CompletableObserver completableObserver) {
            this.f25429do = atomicBoolean;
            this.f25431if = cqVar;
            this.f25430for = completableObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25429do.compareAndSet(false, true)) {
                this.f25431if.m995if();
                CompletableSource completableSource = Cpackage.this.f25428try;
                if (completableSource != null) {
                    completableSource.subscribe(new C0274do());
                    return;
                }
                CompletableObserver completableObserver = this.f25430for;
                Cpackage cpackage = Cpackage.this;
                completableObserver.onError(new TimeoutException(Ccase.m29717try(cpackage.f25426if, cpackage.f25425for)));
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.completable.package$if, reason: invalid class name */
    public static final class Cif implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        private final cq f25434do;

        /* renamed from: for, reason: not valid java name */
        private final CompletableObserver f25435for;

        /* renamed from: if, reason: not valid java name */
        private final AtomicBoolean f25436if;

        public Cif(cq cqVar, AtomicBoolean atomicBoolean, CompletableObserver completableObserver) {
            this.f25434do = cqVar;
            this.f25436if = atomicBoolean;
            this.f25435for = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f25436if.compareAndSet(false, true)) {
                this.f25434do.dispose();
                this.f25435for.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (!this.f25436if.compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                this.f25434do.dispose();
                this.f25435for.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25434do.add(disposable);
        }
    }

    public Cpackage(CompletableSource completableSource, long j, TimeUnit timeUnit, Ctry ctry, CompletableSource completableSource2) {
        this.f25424do = completableSource;
        this.f25426if = j;
        this.f25425for = timeUnit;
        this.f25427new = ctry;
        this.f25428try = completableSource2;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        cq cqVar = new cq();
        completableObserver.onSubscribe(cqVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        cqVar.add(this.f25427new.mo29361try(new Cdo(atomicBoolean, cqVar, completableObserver), this.f25426if, this.f25425for));
        this.f25424do.subscribe(new Cif(cqVar, atomicBoolean, completableObserver));
    }
}
