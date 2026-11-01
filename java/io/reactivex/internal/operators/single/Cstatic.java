package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27233do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f27234if;

    /* renamed from: io.reactivex.internal.operators.single.static$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 3258103020495908596L;
        public final SingleObserver<? super R> downstream;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;

        /* renamed from: io.reactivex.internal.operators.single.static$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0339do<R> implements SingleObserver<R> {

            /* renamed from: do, reason: not valid java name */
            public final AtomicReference<Disposable> f27235do;

            /* renamed from: if, reason: not valid java name */
            public final SingleObserver<? super R> f27236if;

            public C0339do(AtomicReference<Disposable> atomicReference, SingleObserver<? super R> singleObserver) {
                this.f27235do = atomicReference;
                this.f27236if = singleObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f27236if.onError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this.f27235do, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f27236if.onSuccess(r);
            }
        }

        public Cdo(SingleObserver<? super R> singleObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
            this.downstream = singleObserver;
            this.mapper = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
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
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                SingleSource singleSource = (SingleSource) Cif.m29468else(this.mapper.apply(t), "The single returned by the mapper is null");
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new C0339do(this, this.downstream));
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }
    }

    public Cstatic(SingleSource<? extends T> singleSource, Function<? super T, ? extends SingleSource<? extends R>> function) {
        this.f27234if = function;
        this.f27233do = singleSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        this.f27233do.subscribe(new Cdo(singleObserver, this.f27234if));
    }
}
