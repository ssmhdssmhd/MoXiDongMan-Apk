package io.reactivex.internal.observers;

import android.support.v4.ja;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.util.Ccase;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.observers.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> extends CountDownLatch implements Observer<T>, Future<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public T f25350do;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Disposable> f25351for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f25352if;

    public Cfor() {
        super(1);
        this.f25351for = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Disposable disposable;
        Cdo cdo;
        do {
            disposable = this.f25351for.get();
            if (disposable == this || disposable == (cdo = Cdo.DISPOSED)) {
                return false;
            }
        } while (!this.f25351for.compareAndSet(disposable, cdo));
        if (disposable != null) {
            disposable.dispose();
        }
        countDown();
        return true;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        if (getCount() != 0) {
            ja.m3755if();
            await();
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.f25352if;
        if (th == null) {
            return this.f25350do;
        }
        throw new ExecutionException(th);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return Cdo.isDisposed(this.f25351for.get());
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        Disposable disposable;
        if (this.f25350do == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            disposable = this.f25351for.get();
            if (disposable == this || disposable == Cdo.DISPOSED) {
                return;
            }
        } while (!this.f25351for.compareAndSet(disposable, this));
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Disposable disposable;
        if (this.f25352if != null) {
            jp1.l(th);
            return;
        }
        this.f25352if = th;
        do {
            disposable = this.f25351for.get();
            if (disposable == this || disposable == Cdo.DISPOSED) {
                jp1.l(th);
                return;
            }
        } while (!this.f25351for.compareAndSet(disposable, this));
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.f25350do == null) {
            this.f25350do = t;
        } else {
            this.f25351for.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        Cdo.setOnce(this.f25351for, disposable);
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (getCount() != 0) {
            ja.m3755if();
            if (!await(j, timeUnit)) {
                throw new TimeoutException(Ccase.m29717try(j, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f25352if;
            if (th == null) {
                return this.f25350do;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
