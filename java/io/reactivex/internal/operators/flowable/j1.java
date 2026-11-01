package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.wr1;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class j1 {

    /* renamed from: io.reactivex.internal.operators.flowable.j1$do, reason: invalid class name */
    public static final class Cdo<T, R> extends Cfor<R> {

        /* renamed from: for, reason: not valid java name */
        public final Function<? super T, ? extends Publisher<? extends R>> f25711for;

        /* renamed from: if, reason: not valid java name */
        public final T f25712if;

        public Cdo(T t, Function<? super T, ? extends Publisher<? extends R>> function) {
            this.f25712if = t;
            this.f25711for = function;
        }

        @Override // io.reactivex.Cfor
        public void n5(Subscriber<? super R> subscriber) {
            try {
                Publisher publisher = (Publisher) Cif.m29468else(this.f25711for.apply(this.f25712if), "The mapper returned a null Publisher");
                if (!(publisher instanceof Callable)) {
                    publisher.subscribe(subscriber);
                    return;
                }
                try {
                    Object objCall = ((Callable) publisher).call();
                    if (objCall == null) {
                        io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
                    } else {
                        subscriber.onSubscribe(new wr1(subscriber, objCall));
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                }
            } catch (Throwable th2) {
                io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
            }
        }
    }

    private j1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, U> Cfor<U> m29492do(T t, Function<? super T, ? extends Publisher<? extends U>> function) {
        return jp1.h(new Cdo(t, function));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, R> boolean m29493if(Publisher<T> publisher, Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function) {
        if (!(publisher instanceof Callable)) {
            return false;
        }
        try {
            R.attr attrVar = (Object) ((Callable) publisher).call();
            if (attrVar == null) {
                io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
                return true;
            }
            try {
                Publisher publisher2 = (Publisher) Cif.m29468else(function.apply(attrVar), "The mapper returned a null Publisher");
                if (publisher2 instanceof Callable) {
                    try {
                        Object objCall = ((Callable) publisher2).call();
                        if (objCall == null) {
                            io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
                            return true;
                        }
                        subscriber.onSubscribe(new wr1(subscriber, objCall));
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                        return true;
                    }
                } else {
                    publisher2.subscribe(subscriber);
                }
                return true;
            } catch (Throwable th2) {
                t80.m7781if(th2);
                io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
                return true;
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            io.reactivex.internal.subscriptions.Cdo.error(th3, subscriber);
            return true;
        }
    }
}
