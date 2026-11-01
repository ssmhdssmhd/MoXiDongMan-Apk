package io.reactivex.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.observers.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif<T> extends io.reactivex.observers.Cdo<T, Cif<T>> implements Observer<T>, Disposable, MaybeObserver<T>, SingleObserver<T>, CompletableObserver {

    /* renamed from: catch, reason: not valid java name */
    private final Observer<? super T> f27457catch;

    /* renamed from: class, reason: not valid java name */
    private final AtomicReference<Disposable> f27458class;

    /* renamed from: const, reason: not valid java name */
    private QueueDisposable<T> f27459const;

    /* renamed from: io.reactivex.observers.if$do, reason: invalid class name */
    public enum Cdo implements Observer<Object> {
        INSTANCE;

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    public Cif() {
        this(Cdo.INSTANCE);
    }

    public static <T> Cif<T> u() {
        return new Cif<>();
    }

    public static <T> Cif<T> v(Observer<? super T> observer) {
        return new Cif<>(observer);
    }

    public static String w(int i) {
        if (i == 0) {
            return "NONE";
        }
        if (i == 1) {
            return "SYNC";
        }
        if (i == 2) {
            return "ASYNC";
        }
        return "Unknown(" + i + ")";
    }

    public final void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        io.reactivex.internal.disposables.Cdo.dispose(this.f27458class);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return io.reactivex.internal.disposables.Cdo.isDisposed(this.f27458class.get());
    }

    public final Cif<T> o() {
        if (this.f27459const != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27458class.get() == null) {
                this.f27450for.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27455try = Thread.currentThread();
            this.f27453new++;
            this.f27457catch.onComplete();
        } finally {
            this.f27448do.countDown();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27458class.get() == null) {
                this.f27450for.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27455try = Thread.currentThread();
            if (th == null) {
                this.f27450for.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f27450for.add(th);
            }
            this.f27457catch.onError(th);
        } finally {
            this.f27448do.countDown();
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (!this.f27447case) {
            this.f27447case = true;
            if (this.f27458class.get() == null) {
                this.f27450for.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f27455try = Thread.currentThread();
        if (this.f27451goto != 2) {
            this.f27452if.add(t);
            if (t == null) {
                this.f27450for.add(new NullPointerException("onNext received a null value"));
            }
            this.f27457catch.onNext(t);
            return;
        }
        while (true) {
            try {
                T tPoll = this.f27459const.poll();
                if (tPoll == null) {
                    return;
                } else {
                    this.f27452if.add(tPoll);
                }
            } catch (Throwable th) {
                this.f27450for.add(th);
                this.f27459const.dispose();
                return;
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        this.f27455try = Thread.currentThread();
        if (disposable == null) {
            this.f27450for.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        if (!this.f27458class.compareAndSet(null, disposable)) {
            disposable.dispose();
            if (this.f27458class.get() != io.reactivex.internal.disposables.Cdo.DISPOSED) {
                this.f27450for.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + disposable));
                return;
            }
            return;
        }
        int i = this.f27449else;
        if (i != 0 && (disposable instanceof QueueDisposable)) {
            QueueDisposable<T> queueDisposable = (QueueDisposable) disposable;
            this.f27459const = queueDisposable;
            int iRequestFusion = queueDisposable.requestFusion(i);
            this.f27451goto = iRequestFusion;
            if (iRequestFusion == 1) {
                this.f27447case = true;
                this.f27455try = Thread.currentThread();
                while (true) {
                    try {
                        T tPoll = this.f27459const.poll();
                        if (tPoll == null) {
                            this.f27453new++;
                            this.f27458class.lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
                            return;
                        }
                        this.f27452if.add(tPoll);
                    } catch (Throwable th) {
                        this.f27450for.add(th);
                        return;
                    }
                }
            }
        }
        this.f27457catch.onSubscribe(disposable);
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        onNext(t);
        onComplete();
    }

    public final Cif<T> p(int i) {
        int i2 = this.f27451goto;
        if (i2 == i) {
            return this;
        }
        if (this.f27459const == null) {
            throw f("Upstream is not fuseable");
        }
        throw new AssertionError("Fusion mode different. Expected: " + w(i) + ", actual: " + w(i2));
    }

    public final Cif<T> q() {
        if (this.f27459const == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.observers.Cdo
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public final Cif<T> mo29755throw() {
        if (this.f27458class.get() != null) {
            throw f("Subscribed!");
        }
        if (this.f27450for.isEmpty()) {
            return this;
        }
        throw f("Not subscribed but errors found");
    }

    public final Cif<T> s(Consumer<? super Cif<T>> consumer) {
        try {
            consumer.accept(this);
            return this;
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.observers.Cdo
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final Cif<T> mo29742native() {
        if (this.f27458class.get() != null) {
            return this;
        }
        throw f("Not subscribed!");
    }

    public final boolean x() {
        return this.f27458class.get() != null;
    }

    public final boolean y() {
        return isDisposed();
    }

    public final Cif<T> z(int i) {
        this.f27449else = i;
        return this;
    }

    public Cif(Observer<? super T> observer) {
        this.f27458class = new AtomicReference<>();
        this.f27457catch = observer;
    }
}
