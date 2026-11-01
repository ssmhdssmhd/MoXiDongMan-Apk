package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.y7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.internal.fuseable.QueueDisposable;

/* renamed from: io.reactivex.internal.operators.observable.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimplements<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Action f26611if;

    /* renamed from: io.reactivex.internal.operators.observable.implements$do, reason: invalid class name */
    public static final class Cdo<T> extends y7<T> implements Observer<T> {
        private static final long serialVersionUID = 4109457741734051389L;
        public final Observer<? super T> downstream;
        public final Action onFinally;
        public QueueDisposable<T> qd;
        public boolean syncFused;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer, Action action) {
            this.downstream = observer;
            this.onFinally = action;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.qd.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.qd.isEmpty();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.downstream.onComplete();
            runFinally();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                if (disposable instanceof QueueDisposable) {
                    this.qd = (QueueDisposable) disposable;
                }
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll = this.qd.poll();
            if (tPoll == null && this.syncFused) {
                runFinally();
            }
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            QueueDisposable<T> queueDisposable = this.qd;
            if (queueDisposable == null || (i & 4) != 0) {
                return 0;
            }
            int iRequestFusion = queueDisposable.requestFusion(i);
            if (iRequestFusion != 0) {
                this.syncFused = iRequestFusion == 1;
            }
            return iRequestFusion;
        }

        public void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }
    }

    public Cimplements(ObservableSource<T> observableSource, Action action) {
        super(observableSource);
        this.f26611if = action;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26611if));
    }
}
