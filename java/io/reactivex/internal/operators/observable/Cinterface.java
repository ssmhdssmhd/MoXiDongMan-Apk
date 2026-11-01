package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.u7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Collection;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.observable.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinterface<T, K> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<? extends Collection<? super K>> f26631for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, K> f26632if;

    /* renamed from: io.reactivex.internal.operators.observable.interface$do, reason: invalid class name */
    public static final class Cdo<T, K> extends u7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Collection<? super K> f26633case;

        /* renamed from: else, reason: not valid java name */
        public final Function<? super T, K> f26634else;

        public Cdo(Observer<? super T> observer, Function<? super T, K> function, Collection<? super K> collection) {
            super(observer);
            this.f26634else = function;
            this.f26633case = collection;
        }

        @Override // android.support.v4.u7, io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f26633case.clear();
            super.clear();
        }

        @Override // android.support.v4.u7, io.reactivex.Observer
        public void onComplete() {
            if (this.f6786new) {
                return;
            }
            this.f6786new = true;
            this.f26633case.clear();
            this.f6783do.onComplete();
        }

        @Override // android.support.v4.u7, io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f6786new) {
                jp1.l(th);
                return;
            }
            this.f6786new = true;
            this.f26633case.clear();
            this.f6783do.onError(th);
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
                if (this.f26633case.add(Cif.m29468else(this.f26634else.apply(t), "The keySelector returned a null key"))) {
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
            } while (!this.f26633case.add((Object) Cif.m29468else(this.f26634else.apply(tPoll), "The keySelector returned a null key")));
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8271new(i);
        }
    }

    public Cinterface(ObservableSource<T> observableSource, Function<? super T, K> function, Callable<? extends Collection<? super K>> callable) {
        super(observableSource);
        this.f26632if = function;
        this.f26631for = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            this.f26500do.subscribe(new Cdo(observer, this.f26632if, (Collection) Cif.m29468else(this.f26631for.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
