package io.reactivex.internal.operators.maybe;

import android.support.v4.cq;
import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.internal.operators.maybe.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    private final MaybeSource<? extends T>[] f26168do;

    /* renamed from: if, reason: not valid java name */
    private final Iterable<? extends MaybeSource<? extends T>> f26169if;

    /* renamed from: io.reactivex.internal.operators.maybe.if$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26170do;

        /* renamed from: for, reason: not valid java name */
        public final cq f26171for;

        /* renamed from: if, reason: not valid java name */
        public final AtomicBoolean f26172if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26173new;

        public Cdo(MaybeObserver<? super T> maybeObserver, cq cqVar, AtomicBoolean atomicBoolean) {
            this.f26170do = maybeObserver;
            this.f26171for = cqVar;
            this.f26172if = atomicBoolean;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f26172if.compareAndSet(false, true)) {
                this.f26171for.delete(this.f26173new);
                this.f26171for.dispose();
                this.f26170do.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (!this.f26172if.compareAndSet(false, true)) {
                jp1.l(th);
                return;
            }
            this.f26171for.delete(this.f26173new);
            this.f26171for.dispose();
            this.f26170do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f26173new = disposable;
            this.f26171for.add(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            if (this.f26172if.compareAndSet(false, true)) {
                this.f26171for.delete(this.f26173new);
                this.f26171for.dispose();
                this.f26170do.onSuccess(t);
            }
        }
    }

    public Cif(MaybeSource<? extends T>[] maybeSourceArr, Iterable<? extends MaybeSource<? extends T>> iterable) {
        this.f26168do = maybeSourceArr;
        this.f26169if = iterable;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        int length;
        MaybeSource<? extends T>[] maybeSourceArr = this.f26168do;
        if (maybeSourceArr == null) {
            maybeSourceArr = new MaybeSource[8];
            try {
                length = 0;
                for (MaybeSource<? extends T> maybeSource : this.f26169if) {
                    if (maybeSource == null) {
                        io.reactivex.internal.disposables.Cif.error(new NullPointerException("One of the sources is null"), maybeObserver);
                        return;
                    }
                    if (length == maybeSourceArr.length) {
                        MaybeSource<? extends T>[] maybeSourceArr2 = new MaybeSource[(length >> 2) + length];
                        System.arraycopy(maybeSourceArr, 0, maybeSourceArr2, 0, length);
                        maybeSourceArr = maybeSourceArr2;
                    }
                    int i = length + 1;
                    maybeSourceArr[length] = maybeSource;
                    length = i;
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cif.error(th, maybeObserver);
                return;
            }
        } else {
            length = maybeSourceArr.length;
        }
        cq cqVar = new cq();
        maybeObserver.onSubscribe(cqVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i2 = 0; i2 < length; i2++) {
            MaybeSource<? extends T> maybeSource2 = maybeSourceArr[i2];
            if (cqVar.isDisposed()) {
                return;
            }
            if (maybeSource2 == null) {
                cqVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    maybeObserver.onError(nullPointerException);
                    return;
                } else {
                    jp1.l(nullPointerException);
                    return;
                }
            }
            maybeSource2.subscribe(new Cdo(maybeObserver, cqVar, atomicBoolean));
        }
        if (length == 0) {
            maybeObserver.onComplete();
        }
    }
}
