package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprotected<T, K> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, K> f25799for;

    /* renamed from: new, reason: not valid java name */
    public final Callable<? extends Collection<? super K>> f25800new;

    /* renamed from: io.reactivex.internal.operators.flowable.protected$do, reason: invalid class name */
    public static final class Cdo<T, K> extends v7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Collection<? super K> f25801case;

        /* renamed from: else, reason: not valid java name */
        public final Function<? super T, K> f25802else;

        public Cdo(Subscriber<? super T> subscriber, Function<? super T, K> function, Collection<? super K> collection) {
            super(subscriber);
            this.f25802else = function;
            this.f25801case = collection;
        }

        @Override // android.support.v4.v7, io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f25801case.clear();
            super.clear();
        }

        @Override // android.support.v4.v7, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f7104new) {
                return;
            }
            this.f7104new = true;
            this.f25801case.clear();
            this.f7101do.onComplete();
        }

        @Override // android.support.v4.v7, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f7104new) {
                jp1.l(th);
                return;
            }
            this.f7104new = true;
            this.f25801case.clear();
            this.f7101do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f7104new) {
                return;
            }
            if (this.f7105try != 0) {
                this.f7101do.onNext(null);
                return;
            }
            try {
                if (this.f25801case.add(Cif.m29468else(this.f25802else.apply(t), "The keySelector returned a null key"))) {
                    this.f7101do.onNext(t);
                } else {
                    this.f7103if.request(1L);
                }
            } catch (Throwable th) {
                m8757for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll;
            while (true) {
                tPoll = this.f7102for.poll();
                if (tPoll == null || this.f25801case.add((Object) Cif.m29468else(this.f25802else.apply(tPoll), "The keySelector returned a null key"))) {
                    break;
                }
                if (this.f7105try == 2) {
                    this.f7103if.request(1L);
                }
            }
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8759new(i);
        }
    }

    public Cprotected(Cfor<T> cfor, Function<? super T, K> function, Callable<? extends Collection<? super K>> callable) {
        super(cfor);
        this.f25799for = function;
        this.f25800new = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            this.f25614if.m5(new Cdo(subscriber, this.f25799for, (Collection) Cif.m29468else(this.f25800new.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
