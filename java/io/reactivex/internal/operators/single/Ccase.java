package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.zn1;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27134do;

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f27135if;

    /* renamed from: io.reactivex.internal.operators.single.case$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;
        public final SingleObserver<? super T> downstream;
        public final SingleSource<T> source;

        public Cdo(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.downstream = singleObserver;
            this.source = singleSource;
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
            this.source.subscribe(new zn1(this, this.downstream));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Ccase(SingleSource<T> singleSource, CompletableSource completableSource) {
        this.f27134do = singleSource;
        this.f27135if = completableSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27135if.subscribe(new Cdo(singleObserver, this.f27134do));
    }
}
