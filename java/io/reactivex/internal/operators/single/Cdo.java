package io.reactivex.internal.operators.single;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.internal.operators.single.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    private final SingleSource<? extends T>[] f27158do;

    /* renamed from: if, reason: not valid java name */
    private final Iterable<? extends SingleSource<? extends T>> f27159if;

    /* renamed from: io.reactivex.internal.operators.single.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0337do<T> implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final cq f27160do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f27161for;

        /* renamed from: if, reason: not valid java name */
        public final SingleObserver<? super T> f27162if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f27163new;

        public C0337do(SingleObserver<? super T> singleObserver, cq cqVar, AtomicBoolean atomicBoolean) {
            this.f27162if = singleObserver;
            this.f27160do = cqVar;
            this.f27161for = atomicBoolean;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            if (!this.f27161for.compareAndSet(false, true)) {
                jp1.l(th);
                return;
            }
            this.f27160do.delete(this.f27163new);
            this.f27160do.dispose();
            this.f27162if.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27163new = disposable;
            this.f27160do.add(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            if (this.f27161for.compareAndSet(false, true)) {
                this.f27160do.delete(this.f27163new);
                this.f27160do.dispose();
                this.f27162if.onSuccess(t);
            }
        }
    }

    public Cdo(SingleSource<? extends T>[] singleSourceArr, Iterable<? extends SingleSource<? extends T>> iterable) {
        this.f27158do = singleSourceArr;
        this.f27159if = iterable;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        int length;
        SingleSource<? extends T>[] singleSourceArr = this.f27158do;
        if (singleSourceArr == null) {
            singleSourceArr = new SingleSource[8];
            try {
                length = 0;
                for (SingleSource<? extends T> singleSource : this.f27159if) {
                    if (singleSource == null) {
                        Cif.error(new NullPointerException("One of the sources is null"), singleObserver);
                        return;
                    }
                    if (length == singleSourceArr.length) {
                        SingleSource<? extends T>[] singleSourceArr2 = new SingleSource[(length >> 2) + length];
                        System.arraycopy(singleSourceArr, 0, singleSourceArr2, 0, length);
                        singleSourceArr = singleSourceArr2;
                    }
                    int i = length + 1;
                    singleSourceArr[length] = singleSource;
                    length = i;
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                Cif.error(th, singleObserver);
                return;
            }
        } else {
            length = singleSourceArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        cq cqVar = new cq();
        singleObserver.onSubscribe(cqVar);
        for (int i2 = 0; i2 < length; i2++) {
            SingleSource<? extends T> singleSource2 = singleSourceArr[i2];
            if (cqVar.isDisposed()) {
                return;
            }
            if (singleSource2 == null) {
                cqVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    singleObserver.onError(nullPointerException);
                    return;
                } else {
                    jp1.l(nullPointerException);
                    return;
                }
            }
            singleSource2.subscribe(new C0337do(singleObserver, cqVar, atomicBoolean));
        }
    }
}
