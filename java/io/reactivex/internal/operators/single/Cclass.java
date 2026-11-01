package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.single.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27139do;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f27140if;

    /* renamed from: io.reactivex.internal.operators.single.class$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27141do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f27142for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super T> f27143if;

        public Cdo(SingleObserver<? super T> singleObserver, Consumer<? super T> consumer) {
            this.f27141do = singleObserver;
            this.f27143if = consumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27142for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27142for.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27141do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27142for, disposable)) {
                this.f27142for = disposable;
                this.f27141do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27141do.onSuccess(t);
            try {
                this.f27143if.accept(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }
    }

    public Cclass(SingleSource<T> singleSource, Consumer<? super T> consumer) {
        this.f27139do = singleSource;
        this.f27140if = consumer;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27139do.subscribe(new Cdo(singleObserver, this.f27140if));
    }
}
