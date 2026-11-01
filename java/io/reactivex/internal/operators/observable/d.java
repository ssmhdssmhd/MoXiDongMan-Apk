package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.u7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Predicate;

/* loaded from: classes3.dex */
public final class d<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26481if;

    /* renamed from: io.reactivex.internal.operators.observable.d$do, reason: invalid class name */
    public static final class Cdo<T> extends u7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Predicate<? super T> f26482case;

        public Cdo(Observer<? super T> observer, Predicate<? super T> predicate) {
            super(observer);
            this.f26482case = predicate;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f6787try != 0) {
                this.f6783do.onNext(null);
                return;
            }
            try {
                if (this.f26482case.test(t)) {
                    this.f6783do.onNext(t);
                }
            } catch (Throwable th) {
                m8269for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll;
            do {
                tPoll = this.f6784for.poll();
                if (tPoll == null) {
                    break;
                }
            } while (!this.f26482case.test(tPoll));
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8271new(i);
        }
    }

    public d(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26481if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26481if));
    }
}
