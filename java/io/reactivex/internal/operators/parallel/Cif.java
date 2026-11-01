package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> extends ub1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27074do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27075for;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f27076if;

    /* renamed from: io.reactivex.internal.operators.parallel.if$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f27077do;

        static {
            int[] iArr = new int[io.reactivex.parallel.Cdo.values().length];
            f27077do = iArr;
            try {
                iArr[io.reactivex.parallel.Cdo.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27077do[io.reactivex.parallel.Cdo.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27077do[io.reactivex.parallel.Cdo.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.if$for, reason: invalid class name */
    public static final class Cfor<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f27078do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27079for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super T> f27080if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f27081new;

        /* renamed from: try, reason: not valid java name */
        public boolean f27082try;

        public Cfor(Subscriber<? super T> subscriber, Consumer<? super T> consumer, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            this.f27078do = subscriber;
            this.f27080if = consumer;
            this.f27079for = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27081new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27082try) {
                return;
            }
            this.f27082try = true;
            this.f27078do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27082try) {
                jp1.l(th);
            } else {
                this.f27082try = true;
                this.f27078do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f27081new.request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27081new, subscription)) {
                this.f27081new = subscription;
                this.f27078do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27081new.request(j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f27082try) {
                return false;
            }
            long j = 0;
            do {
                try {
                    this.f27080if.accept(t);
                    this.f27078do.onNext(t);
                    return true;
                } catch (Throwable th) {
                    t80.m7781if(th);
                    try {
                        j++;
                        i = Cdo.f27077do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27079for.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
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

    /* renamed from: io.reactivex.internal.operators.parallel.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0334if<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final ConditionalSubscriber<? super T> f27083do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> f27084for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super T> f27085if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f27086new;

        /* renamed from: try, reason: not valid java name */
        public boolean f27087try;

        public C0334if(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
            this.f27083do = conditionalSubscriber;
            this.f27085if = consumer;
            this.f27084for = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27086new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27087try) {
                return;
            }
            this.f27087try = true;
            this.f27083do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27087try) {
                jp1.l(th);
            } else {
                this.f27087try = true;
                this.f27083do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f27087try) {
                return;
            }
            this.f27086new.request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27086new, subscription)) {
                this.f27086new = subscription;
                this.f27083do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27086new.request(j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f27087try) {
                return false;
            }
            long j = 0;
            do {
                try {
                    this.f27085if.accept(t);
                    return this.f27083do.tryOnNext(t);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    try {
                        j++;
                        i = Cdo.f27077do[((io.reactivex.parallel.Cdo) io.reactivex.internal.functions.Cif.m29468else(this.f27084for.apply(Long.valueOf(j), th), "The errorHandler returned a null item")).ordinal()];
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

    public Cif(ub1<T> ub1Var, Consumer<? super T> consumer, BiFunction<? super Long, ? super Throwable, io.reactivex.parallel.Cdo> biFunction) {
        this.f27074do = ub1Var;
        this.f27076if = consumer;
        this.f27075for = biFunction;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27074do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new C0334if((ConditionalSubscriber) subscriber, this.f27076if, this.f27075for);
                } else {
                    subscriberArr2[i] = new Cfor(subscriber, this.f27076if, this.f27075for);
                }
            }
            this.f27074do.subscribe(subscriberArr2);
        }
    }
}
