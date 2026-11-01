package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.observers.LambdaConsumerIntrospection;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ar<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -7012088219455310787L;
    public final Consumer<? super Throwable> onError;
    public final Consumer<? super T> onSuccess;

    public ar(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        this.onSuccess = consumer;
        this.onError = consumer2;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cdo.dispose(this);
    }

    @Override // io.reactivex.observers.LambdaConsumerIntrospection
    public boolean hasCustomOnError() {
        return this.onError != io.reactivex.internal.functions.Cdo.f25277case;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        lazySet(Cdo.DISPOSED);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        Cdo.setOnce(this, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        lazySet(Cdo.DISPOSED);
        try {
            this.onSuccess.accept(t);
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }
}
