package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprotected<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27220do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f27221if;

    /* renamed from: io.reactivex.internal.operators.single.protected$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;
        public final SingleObserver<? super T> downstream;
        public final SingleSource<? extends T> source;
        public final tw1 task = new tw1();

        public Cdo(SingleObserver<? super T> singleObserver, SingleSource<? extends T> singleSource) {
            this.downstream = singleObserver;
            this.source = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.task.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.source.subscribe(this);
        }
    }

    public Cprotected(SingleSource<? extends T> singleSource, Ctry ctry) {
        this.f27220do = singleSource;
        this.f27221if = ctry;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Cdo cdo = new Cdo(singleObserver, this.f27220do);
        singleObserver.onSubscribe(cdo);
        cdo.task.replace(this.f27221if.mo29697new(cdo));
    }
}
