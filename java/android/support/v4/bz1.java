package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes2.dex */
public abstract class bz1<T> implements Observer<T> {
    private Disposable disposable;

    @Override // io.reactivex.Observer
    public void onComplete() {
        onCompleted();
        Disposable disposable = this.disposable;
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        this.disposable.dispose();
        this.disposable = null;
    }

    public void onCompleted() {
    }

    public void onError(String str) {
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append("onError: ");
        sb.append(th.getMessage());
        onError(q80.m6440do(th).message);
    }

    public void onSubscribe() {
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        this.disposable = disposable;
    }
}
