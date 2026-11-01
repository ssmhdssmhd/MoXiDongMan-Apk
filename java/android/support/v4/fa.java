package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public abstract class fa<T> extends CountDownLatch implements Observer<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public T f1740do;

    /* renamed from: for, reason: not valid java name */
    public Disposable f1741for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f1742if;

    /* renamed from: new, reason: not valid java name */
    public volatile boolean f1743new;

    public fa() {
        super(1);
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        this.f1743new = true;
        Disposable disposable = this.f1741for;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final T m2231do() throws InterruptedException {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                await();
            } catch (InterruptedException e) {
                dispose();
                throw Ccase.m29712case(e);
            }
        }
        Throwable th = this.f1742if;
        if (th == null) {
            return this.f1740do;
        }
        throw Ccase.m29712case(th);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f1743new;
    }

    @Override // io.reactivex.Observer
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        this.f1741for = disposable;
        if (this.f1743new) {
            disposable.dispose();
        }
    }
}
