package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> extends ub1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27088do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27089for;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f27090if;

    /* renamed from: io.reactivex.internal.operators.parallel.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f27091do;

        static {
            int[] iArr = new int[io.reactivex.parallel.Cdo.values().length];
            f27091do = iArr;
            try {
                iArr[io.reactivex.parallel.Cdo.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27091do[io.reactivex.parallel.Cdo.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27091do[io.reactivex.parallel.Cdo.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.new$for, reason: invalid class name */
    public static final class Cfor<T> extends Cif<T> {

        /* renamed from: try, reason: not valid java name */
        public final ConditionalSubscriber<? super T> f27092try;

        public Cfor(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            super(predicate, biFunction);
            this.f27092try = conditionalSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27096new) {
                return;
            }
            this.f27096new = true;
            this.f27092try.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27096new) {
                jp1.l(th);
            } else {
                this.f27096new = true;
                this.f27092try.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27094for, subscription)) {
                this.f27094for = subscription;
                this.f27092try.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (!this.f27096new) {
                long j = 0;
                do {
                    try {
                        return this.f27093do.test(t) && this.f27092try.tryOnNext(t);
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        try {
                            j++;
                            i = Cdo.f27091do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27095if.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            cancel();
                            onError(new io.reactivex.exceptions.Cdo(th, th2));
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
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.new$if, reason: invalid class name */
    public static abstract class Cif<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Predicate<? super T> f27093do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f27094for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27095if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27096new;

        public Cif(Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            this.f27093do = predicate;
            this.f27095if = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f27094for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (tryOnNext(t) || this.f27096new) {
                return;
            }
            this.f27094for.request(1L);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            this.f27094for.request(j);
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.new$new, reason: invalid class name and collision with other inner class name */
    public static final class C0335new<T> extends Cif<T> {

        /* renamed from: try, reason: not valid java name */
        public final Subscriber<? super T> f27097try;

        public C0335new(Subscriber<? super T> subscriber, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            super(predicate, biFunction);
            this.f27097try = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27096new) {
                return;
            }
            this.f27096new = true;
            this.f27097try.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27096new) {
                jp1.l(th);
            } else {
                this.f27096new = true;
                this.f27097try.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27094for, subscription)) {
                this.f27094for = subscription;
                this.f27097try.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (!this.f27096new) {
                long j = 0;
                do {
                    try {
                        if (!this.f27093do.test(t)) {
                            return false;
                        }
                        this.f27097try.onNext(t);
                        return true;
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        try {
                            j++;
                            i = Cdo.f27091do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27095if.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            cancel();
                            onError(new io.reactivex.exceptions.Cdo(th, th2));
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
            return false;
        }
    }

    public Cnew(ub1<T> ub1Var, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
        this.f27088do = ub1Var;
        this.f27090if = predicate;
        this.f27089for = biFunction;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27088do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new Cfor((ConditionalSubscriber) subscriber, this.f27090if, this.f27089for);
                } else {
                    subscriberArr2[i] = new C0335new(subscriber, this.f27090if, this.f27089for);
                }
            }
            this.f27088do.subscribe(subscriberArr2);
        }
    }
}
