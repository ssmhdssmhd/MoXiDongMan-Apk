package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.observers.Cif;

/* loaded from: classes3.dex */
public abstract class bz<T, R> extends Cif<R> implements Observer<T> {
    private static final long serialVersionUID = -266195175408988651L;
    public Disposable upstream;

    public bz(Observer<? super R> observer) {
        super(observer);
    }

    @Override // io.reactivex.internal.observers.Cif, io.reactivex.disposables.Disposable
    public void dispose() {
        super.dispose();
        this.upstream.dispose();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        T t = this.value;
        if (t == null) {
            complete();
        } else {
            this.value = null;
            complete(t);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.value = null;
        error(th);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (Cdo.validate(this.upstream, disposable)) {
            this.upstream = disposable;
            this.downstream.onSubscribe(this);
        }
    }
}
