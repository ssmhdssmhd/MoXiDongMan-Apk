package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class l10<T> implements Observer<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final Observer<? super T> f3516do;

    /* renamed from: for, reason: not valid java name */
    public final Action f3517for;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Disposable> f3518if;

    /* renamed from: new, reason: not valid java name */
    public Disposable f3519new;

    public l10(Observer<? super T> observer, Consumer<? super Disposable> consumer, Action action) {
        this.f3516do = observer;
        this.f3518if = consumer;
        this.f3517for = action;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.f3519new;
        Cdo cdo = Cdo.DISPOSED;
        if (disposable != cdo) {
            this.f3519new = cdo;
            try {
                this.f3517for.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            disposable.dispose();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f3519new.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        Disposable disposable = this.f3519new;
        Cdo cdo = Cdo.DISPOSED;
        if (disposable != cdo) {
            this.f3519new = cdo;
            this.f3516do.onComplete();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Disposable disposable = this.f3519new;
        Cdo cdo = Cdo.DISPOSED;
        if (disposable == cdo) {
            jp1.l(th);
        } else {
            this.f3519new = cdo;
            this.f3516do.onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.f3516do.onNext(t);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        try {
            this.f3518if.accept(disposable);
            if (Cdo.validate(this.f3519new, disposable)) {
                this.f3519new = disposable;
                this.f3516do.onSubscribe(this);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            disposable.dispose();
            this.f3519new = Cdo.DISPOSED;
            Cif.error(th, this.f3516do);
        }
    }
}
