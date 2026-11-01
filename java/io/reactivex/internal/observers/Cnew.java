package io.reactivex.internal.observers;

import android.support.v4.ja;
import android.support.v4.jp1;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.observers.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> extends CountDownLatch implements SingleObserver<T>, Future<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public T f25354do;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Disposable> f25355for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f25356if;

    public Cnew() {
        super(1);
        this.f25355for = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Disposable disposable;
        Cdo cdo;
        do {
            disposable = this.f25355for.get();
            if (disposable == this || disposable == (cdo = Cdo.DISPOSED)) {
                return false;
            }
        } while (!this.f25355for.compareAndSet(disposable, cdo));
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
        Throwable th = this.f25356if;
        if (th == null) {
            return this.f25354do;
        }
        throw new ExecutionException(th);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return Cdo.isDisposed(this.f25355for.get());
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        Disposable disposable;
        do {
            disposable = this.f25355for.get();
            if (disposable == Cdo.DISPOSED) {
                jp1.l(th);
                return;
            }
            this.f25356if = th;
        } while (!this.f25355for.compareAndSet(disposable, this));
        countDown();
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        Cdo.setOnce(this.f25355for, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        Disposable disposable = this.f25355for.get();
        if (disposable == Cdo.DISPOSED) {
            return;
        }
        this.f25354do = t;
        this.f25355for.compareAndSet(disposable, this);
        countDown();
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
            Throwable th = this.f25356if;
            if (th == null) {
                return this.f25354do;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
