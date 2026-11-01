package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.single.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27173do;

    /* renamed from: if, reason: not valid java name */
    public final Action f27174if;

    /* renamed from: io.reactivex.internal.operators.single.final$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;
        public final SingleObserver<? super T> downstream;
        public final Action onFinally;
        public Disposable upstream;

        public Cdo(SingleObserver<? super T> singleObserver, Action action) {
            this.downstream = singleObserver;
            this.onFinally = action;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
            runFinally();
        }

        public void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }
    }

    public Cfinal(SingleSource<T> singleSource, Action action) {
        this.f27173do = singleSource;
        this.f27174if = action;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27173do.subscribe(new Cdo(singleObserver, this.f27174if));
    }
}
