package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.u7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.observable.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctransient<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f26944if;

    /* renamed from: io.reactivex.internal.operators.observable.transient$do, reason: invalid class name */
    public static final class Cdo<T> extends u7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Consumer<? super T> f26945case;

        public Cdo(Observer<? super T> observer, Consumer<? super T> consumer) {
            super(observer);
            this.f26945case = consumer;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f6783do.onNext(t);
            if (this.f6787try == 0) {
                try {
                    this.f26945case.accept(t);
                } catch (Throwable th) {
                    m8269for(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll = this.f6784for.poll();
            if (tPoll != null) {
                this.f26945case.accept(tPoll);
            }
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8271new(i);
        }
    }

    public Ctransient(ObservableSource<T> observableSource, Consumer<? super T> consumer) {
        super(observableSource);
        this.f26944if = consumer;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26944if));
    }
}
