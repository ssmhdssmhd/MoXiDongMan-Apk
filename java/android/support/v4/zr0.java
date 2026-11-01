package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.observers.LambdaConsumerIntrospection;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zr0<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -7251123623727029452L;
    public final Action onComplete;
    public final Consumer<? super Throwable> onError;
    public final Consumer<? super T> onNext;
    public final Consumer<? super Disposable> onSubscribe;

    public zr0(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3) {
        this.onNext = consumer;
        this.onError = consumer2;
        this.onComplete = action;
        this.onSubscribe = consumer3;
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

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(Cdo.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (isDisposed()) {
            jp1.l(th);
            return;
        }
        lazySet(Cdo.DISPOSED);
        try {
            this.onError.accept(th);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t);
        } catch (Throwable th) {
            t80.m7781if(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (Cdo.setOnce(this, disposable)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                disposable.dispose();
                onError(th);
            }
        }
    }
}
