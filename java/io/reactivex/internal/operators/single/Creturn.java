package io.reactivex.internal.operators.single;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.single.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn<T> extends jz1<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27226do;

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<? extends T> f27227if;

    /* renamed from: io.reactivex.internal.operators.single.return$do, reason: invalid class name */
    public static class Cdo<T> implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final int f27228do;

        /* renamed from: for, reason: not valid java name */
        public final Object[] f27229for;

        /* renamed from: if, reason: not valid java name */
        public final cq f27230if;

        /* renamed from: new, reason: not valid java name */
        public final SingleObserver<? super Boolean> f27231new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicInteger f27232try;

        public Cdo(int i, cq cqVar, Object[] objArr, SingleObserver<? super Boolean> singleObserver, AtomicInteger atomicInteger) {
            this.f27228do = i;
            this.f27230if = cqVar;
            this.f27229for = objArr;
            this.f27231new = singleObserver;
            this.f27232try = atomicInteger;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            int i;
            do {
                i = this.f27232try.get();
                if (i >= 2) {
                    jp1.l(th);
                    return;
                }
            } while (!this.f27232try.compareAndSet(i, 2));
            this.f27230if.dispose();
            this.f27231new.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27230if.add(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27229for[this.f27228do] = t;
            if (this.f27232try.incrementAndGet() == 2) {
                SingleObserver<? super Boolean> singleObserver = this.f27231new;
                Object[] objArr = this.f27229for;
                singleObserver.onSuccess(Boolean.valueOf(Cif.m29469for(objArr[0], objArr[1])));
            }
        }
    }

    public Creturn(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        this.f27226do = singleSource;
        this.f27227if = singleSource2;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        cq cqVar = new cq();
        singleObserver.onSubscribe(cqVar);
        this.f27226do.subscribe(new Cdo(0, cqVar, objArr, singleObserver, atomicInteger));
        this.f27227if.subscribe(new Cdo(1, cqVar, objArr, singleObserver, atomicInteger));
    }
}
