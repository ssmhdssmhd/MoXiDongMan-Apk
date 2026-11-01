package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T, R> extends ub1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27060do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27061for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends R> f27062if;

    /* renamed from: io.reactivex.internal.operators.parallel.goto$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f27063do;

        static {
            int[] iArr = new int[io.reactivex.parallel.Cdo.values().length];
            f27063do = iArr;
            try {
                iArr[io.reactivex.parallel.Cdo.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27063do[io.reactivex.parallel.Cdo.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27063do[io.reactivex.parallel.Cdo.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.goto$for, reason: invalid class name */
    public static final class Cfor<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super R> f27064do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27065for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f27066if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f27067new;

        /* renamed from: try, reason: not valid java name */
        public boolean f27068try;

        public Cfor(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            this.f27064do = subscriber;
            this.f27066if = function;
            this.f27065for = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27067new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27068try) {
                return;
            }
            this.f27068try = true;
            this.f27064do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27068try) {
                jp1.l(th);
            } else {
                this.f27068try = true;
                this.f27064do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f27068try) {
                return;
            }
            this.f27067new.request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27067new, subscription)) {
                this.f27067new = subscription;
                this.f27064do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27067new.request(j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f27068try) {
                return false;
            }
            long j = 0;
            do {
                try {
                    this.f27064do.onNext(io.reactivex.internal.functions.Cif.m29468else(this.f27066if.apply(t), "The mapper returned a null value"));
                    return true;
                } catch (Throwable th) {
                    t80.m7781if(th);
                    try {
                        j++;
                        i = Cdo.f27063do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27065for.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        cancel();
                        onError(new io.reactivex.exceptions.Cdo(th, th2));
                        return false;
                    }
                }
            } while (i == 1);
            if (i != 2) {
                if (i != 3) {
                    cancel();
                    onError(th);
                    return false;
                }
                cancel();
                onComplete();
            }
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.goto$if, reason: invalid class name */
    public static final class Cif<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final ConditionalSubscriber<? super R> f27069do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27070for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f27071if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f27072new;

        /* renamed from: try, reason: not valid java name */
        public boolean f27073try;

        public Cif(ConditionalSubscriber<? super R> conditionalSubscriber, Function<? super T, ? extends R> function, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            this.f27069do = conditionalSubscriber;
            this.f27071if = function;
            this.f27070for = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27072new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27073try) {
                return;
            }
            this.f27073try = true;
            this.f27069do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27073try) {
                jp1.l(th);
            } else {
                this.f27073try = true;
                this.f27069do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f27073try) {
                return;
            }
            this.f27072new.request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27072new, subscription)) {
                this.f27072new = subscription;
                this.f27069do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27072new.request(j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f27073try) {
                return false;
            }
            long j = 0;
            do {
                try {
                    return this.f27069do.tryOnNext(io.reactivex.internal.functions.Cif.m29468else(this.f27071if.apply(t), "The mapper returned a null value"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    try {
                        j++;
                        i = Cdo.f27063do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27070for.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        cancel();
                        onError(new io.reactivex.exceptions.Cdo(th, th2));
                        return false;
                    }
                }
            } while (i == 1);
            if (i != 2) {
                if (i != 3) {
                    cancel();
                    onError(th);
                    return false;
                }
                cancel();
                onComplete();
            }
            return false;
        }
    }

    public Cgoto(ub1<T> ub1Var, Function<? super T, ? extends R> function, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
        this.f27060do = ub1Var;
        this.f27062if = function;
        this.f27061for = biFunction;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27060do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super R>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new Cif((ConditionalSubscriber) subscriber, this.f27062if, this.f27061for);
                } else {
                    subscriberArr2[i] = new Cfor(subscriber, this.f27062if, this.f27061for);
                }
            }
            this.f27060do.subscribe(subscriberArr2);
        }
    }
}
