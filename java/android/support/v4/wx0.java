package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;

@f90
/* loaded from: classes3.dex */
public final class wx0<T> implements SingleObserver<T>, MaybeObserver<T>, CompletableObserver, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final SingleObserver<? super t41<T>> f7713do;

    /* renamed from: if, reason: not valid java name */
    public Disposable f7714if;

    public wx0(SingleObserver<? super t41<T>> singleObserver) {
        this.f7713do = singleObserver;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f7714if.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f7714if.isDisposed();
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        this.f7713do.onSuccess(t41.m7720do());
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f7713do.onSuccess(t41.m7722if(th));
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        if (Cdo.validate(this.f7714if, disposable)) {
            this.f7714if = disposable;
            this.f7713do.onSubscribe(this);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f7713do.onSuccess(t41.m7721for(t));
    }
}
