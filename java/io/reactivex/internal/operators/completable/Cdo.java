package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.internal.operators.completable.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends np {

    /* renamed from: do, reason: not valid java name */
    private final CompletableSource[] f25387do;

    /* renamed from: if, reason: not valid java name */
    private final Iterable<? extends CompletableSource> f25388if;

    /* renamed from: io.reactivex.internal.operators.completable.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0270do implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        public final AtomicBoolean f25389do;

        /* renamed from: for, reason: not valid java name */
        public final CompletableObserver f25390for;

        /* renamed from: if, reason: not valid java name */
        public final cq f25391if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f25392new;

        public C0270do(AtomicBoolean atomicBoolean, cq cqVar, CompletableObserver completableObserver) {
            this.f25389do = atomicBoolean;
            this.f25391if = cqVar;
            this.f25390for = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f25389do.compareAndSet(false, true)) {
                this.f25391if.delete(this.f25392new);
                this.f25391if.dispose();
                this.f25390for.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (!this.f25389do.compareAndSet(false, true)) {
                jp1.l(th);
                return;
            }
            this.f25391if.delete(this.f25392new);
            this.f25391if.dispose();
            this.f25390for.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25392new = disposable;
            this.f25391if.add(disposable);
        }
    }

    public Cdo(CompletableSource[] completableSourceArr, Iterable<? extends CompletableSource> iterable) {
        this.f25387do = completableSourceArr;
        this.f25388if = iterable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        int length;
        CompletableSource[] completableSourceArr = this.f25387do;
        if (completableSourceArr == null) {
            completableSourceArr = new CompletableSource[8];
            try {
                length = 0;
                for (CompletableSource completableSource : this.f25388if) {
                    if (completableSource == null) {
                        Cif.error(new NullPointerException("One of the sources is null"), completableObserver);
                        return;
                    }
                    if (length == completableSourceArr.length) {
                        CompletableSource[] completableSourceArr2 = new CompletableSource[(length >> 2) + length];
                        System.arraycopy(completableSourceArr, 0, completableSourceArr2, 0, length);
                        completableSourceArr = completableSourceArr2;
                    }
                    int i = length + 1;
                    completableSourceArr[length] = completableSource;
                    length = i;
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                Cif.error(th, completableObserver);
                return;
            }
        } else {
            length = completableSourceArr.length;
        }
        cq cqVar = new cq();
        completableObserver.onSubscribe(cqVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i2 = 0; i2 < length; i2++) {
            CompletableSource completableSource2 = completableSourceArr[i2];
            if (cqVar.isDisposed()) {
                return;
            }
            if (completableSource2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (!atomicBoolean.compareAndSet(false, true)) {
                    jp1.l(nullPointerException);
                    return;
                } else {
                    cqVar.dispose();
                    completableObserver.onError(nullPointerException);
                    return;
                }
            }
            completableSource2.subscribe(new C0270do(atomicBoolean, cqVar, completableObserver));
        }
        if (length == 0) {
            completableObserver.onComplete();
        }
    }
}
