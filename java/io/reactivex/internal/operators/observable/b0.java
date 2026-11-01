package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.u7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class b0<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends U> f26410if;

    /* renamed from: io.reactivex.internal.operators.observable.b0$do, reason: invalid class name */
    public static final class Cdo<T, U> extends u7<T, U> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, ? extends U> f26411case;

        public Cdo(Observer<? super U> observer, Function<? super T, ? extends U> function) {
            super(observer);
            this.f26411case = function;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f6786new) {
                return;
            }
            if (this.f6787try != 0) {
                this.f6783do.onNext(null);
                return;
            }
            try {
                this.f6783do.onNext(Cif.m29468else(this.f26411case.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                m8269for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public U poll() throws Exception {
            T tPoll = this.f6784for.poll();
            if (tPoll != null) {
                return (U) Cif.m29468else(this.f26411case.apply(tPoll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8271new(i);
        }
    }

    public b0(ObservableSource<T> observableSource, Function<? super T, ? extends U> function) {
        super(observableSource);
        this.f26410if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26410if));
    }
}
