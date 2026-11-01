package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.jp1;
import android.support.v4.t7;
import android.support.v4.t80;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.util.Ccase;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csynchronized<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final Action f25877case;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super T> f25878for;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super Throwable> f25879new;

    /* renamed from: try, reason: not valid java name */
    public final Action f25880try;

    /* renamed from: io.reactivex.internal.operators.flowable.synchronized$do, reason: invalid class name */
    public static final class Cdo<T> extends t7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Consumer<? super T> f25881case;

        /* renamed from: else, reason: not valid java name */
        public final Consumer<? super Throwable> f25882else;

        /* renamed from: goto, reason: not valid java name */
        public final Action f25883goto;

        /* renamed from: this, reason: not valid java name */
        public final Action f25884this;

        public Cdo(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            super(conditionalSubscriber);
            this.f25881case = consumer;
            this.f25882else = consumer2;
            this.f25883goto = action;
            this.f25884this = action2;
        }

        @Override // android.support.v4.t7, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f6431new) {
                return;
            }
            try {
                this.f25883goto.run();
                this.f6431new = true;
                this.f6428do.onComplete();
                try {
                    this.f25884this.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            } catch (Throwable th2) {
                m7738for(th2);
            }
        }

        @Override // android.support.v4.t7, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f6431new) {
                jp1.l(th);
                return;
            }
            boolean z = true;
            this.f6431new = true;
            try {
                this.f25882else.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f6428do.onError(new io.reactivex.exceptions.Cdo(th, th2));
                z = false;
            }
            if (z) {
                this.f6428do.onError(th);
            }
            try {
                this.f25884this.run();
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f6431new) {
                return;
            }
            if (this.f6432try != 0) {
                this.f6428do.onNext(null);
                return;
            }
            try {
                this.f25881case.accept(t);
                this.f6428do.onNext(t);
            } catch (Throwable th) {
                m7738for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            try {
                T tPoll = this.f6429for.poll();
                if (tPoll != null) {
                    try {
                        this.f25881case.accept(tPoll);
                    } catch (Throwable th) {
                        try {
                            t80.m7781if(th);
                            try {
                                this.f25882else.accept(th);
                                throw Ccase.m29716new(th);
                            } catch (Throwable th2) {
                                throw new io.reactivex.exceptions.Cdo(th, th2);
                            }
                        } finally {
                            this.f25884this.run();
                        }
                    }
                } else if (this.f6432try == 1) {
                    this.f25883goto.run();
                }
                return tPoll;
            } catch (Throwable th3) {
                t80.m7781if(th3);
                try {
                    this.f25882else.accept(th3);
                    throw Ccase.m29716new(th3);
                } catch (Throwable th4) {
                    throw new io.reactivex.exceptions.Cdo(th3, th4);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m7740new(i);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f6431new) {
                return false;
            }
            try {
                this.f25881case.accept(t);
                return this.f6428do.tryOnNext(t);
            } catch (Throwable th) {
                m7738for(th);
                return false;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.synchronized$if, reason: invalid class name */
    public static final class Cif<T> extends v7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Consumer<? super T> f25885case;

        /* renamed from: else, reason: not valid java name */
        public final Consumer<? super Throwable> f25886else;

        /* renamed from: goto, reason: not valid java name */
        public final Action f25887goto;

        /* renamed from: this, reason: not valid java name */
        public final Action f25888this;

        public Cif(Subscriber<? super T> subscriber, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            super(subscriber);
            this.f25885case = consumer;
            this.f25886else = consumer2;
            this.f25887goto = action;
            this.f25888this = action2;
        }

        @Override // android.support.v4.v7, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f7104new) {
                return;
            }
            try {
                this.f25887goto.run();
                this.f7104new = true;
                this.f7101do.onComplete();
                try {
                    this.f25888this.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            } catch (Throwable th2) {
                m8757for(th2);
            }
        }

        @Override // android.support.v4.v7, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f7104new) {
                jp1.l(th);
                return;
            }
            boolean z = true;
            this.f7104new = true;
            try {
                this.f25886else.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f7101do.onError(new io.reactivex.exceptions.Cdo(th, th2));
                z = false;
            }
            if (z) {
                this.f7101do.onError(th);
            }
            try {
                this.f25888this.run();
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(th3);
            }
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
                this.f25885case.accept(t);
                this.f7101do.onNext(t);
            } catch (Throwable th) {
                m8757for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            try {
                T tPoll = this.f7102for.poll();
                if (tPoll != null) {
                    try {
                        this.f25885case.accept(tPoll);
                    } catch (Throwable th) {
                        try {
                            t80.m7781if(th);
                            try {
                                this.f25886else.accept(th);
                                throw Ccase.m29716new(th);
                            } catch (Throwable th2) {
                                throw new io.reactivex.exceptions.Cdo(th, th2);
                            }
                        } finally {
                            this.f25888this.run();
                        }
                    }
                } else if (this.f7105try == 1) {
                    this.f25887goto.run();
                }
                return tPoll;
            } catch (Throwable th3) {
                t80.m7781if(th3);
                try {
                    this.f25886else.accept(th3);
                    throw Ccase.m29716new(th3);
                } catch (Throwable th4) {
                    throw new io.reactivex.exceptions.Cdo(th3, th4);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8759new(i);
        }
    }

    public Csynchronized(Cfor<T> cfor, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        super(cfor);
        this.f25878for = consumer;
        this.f25879new = consumer2;
        this.f25880try = action;
        this.f25877case = action2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f25614if.m5(new Cdo((ConditionalSubscriber) subscriber, this.f25878for, this.f25879new, this.f25880try, this.f25877case));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25878for, this.f25879new, this.f25880try, this.f25877case));
        }
    }
}
