package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.u7;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;

/* renamed from: io.reactivex.internal.operators.observable.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprotected<T, K> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super K, ? super K> f26820for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, K> f26821if;

    /* renamed from: io.reactivex.internal.operators.observable.protected$do, reason: invalid class name */
    public static final class Cdo<T, K> extends u7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, K> f26822case;

        /* renamed from: else, reason: not valid java name */
        public final BiPredicate<? super K, ? super K> f26823else;

        /* renamed from: goto, reason: not valid java name */
        public K f26824goto;

        /* renamed from: this, reason: not valid java name */
        public boolean f26825this;

        public Cdo(Observer<? super T> observer, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(observer);
            this.f26822case = function;
            this.f26823else = biPredicate;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f6786new) {
                return;
            }
            if (this.f6787try != 0) {
                this.f6783do.onNext(t);
                return;
            }
            try {
                K kApply = this.f26822case.apply(t);
                if (this.f26825this) {
                    boolean zTest = this.f26823else.test(this.f26824goto, kApply);
                    this.f26824goto = kApply;
                    if (zTest) {
                        return;
                    }
                } else {
                    this.f26825this = true;
                    this.f26824goto = kApply;
                }
                this.f6783do.onNext(t);
            } catch (Throwable th) {
                m8269for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            while (true) {
                T tPoll = this.f6784for.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.f26822case.apply(tPoll);
                if (!this.f26825this) {
                    this.f26825this = true;
                    this.f26824goto = kApply;
                    return tPoll;
                }
                if (!this.f26823else.test(this.f26824goto, kApply)) {
                    this.f26824goto = kApply;
                    return tPoll;
                }
                this.f26824goto = kApply;
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8271new(i);
        }
    }

    public Cprotected(ObservableSource<T> observableSource, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(observableSource);
        this.f26821if = function;
        this.f26820for = biPredicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26821if, this.f26820for));
    }
}
