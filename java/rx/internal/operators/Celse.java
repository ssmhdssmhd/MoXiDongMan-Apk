package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Single;
import rx.Subscription;
import rx.functions.Func1;

/* renamed from: rx.internal.operators.else, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Celse<T> implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Single<T> f34714do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Completable> f34715if;

    /* renamed from: rx.internal.operators.else$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> implements CompletableSubscriber {

        /* renamed from: for, reason: not valid java name */
        public final Func1<? super T, ? extends Completable> f34716for;

        /* renamed from: if, reason: not valid java name */
        public final CompletableSubscriber f34717if;

        public Cdo(CompletableSubscriber completableSubscriber, Func1<? super T, ? extends Completable> func1) {
            this.f34717if = completableSubscriber;
            this.f34716for = func1;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            try {
                Completable completableCall = this.f34716for.call(t);
                if (completableCall == null) {
                    onError(new NullPointerException("The mapper returned a null Completable"));
                } else {
                    completableCall.E(this);
                }
            } catch (Throwable th) {
                s80.m7301try(th);
                onError(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34717if.onCompleted();
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f34717if.onError(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            m415do(subscription);
        }
    }

    public Celse(Single<T> single, Func1<? super T, ? extends Completable> func1) {
        this.f34714do = single;
        this.f34715if = func1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        Cdo cdo = new Cdo(completableSubscriber, this.f34715if);
        completableSubscriber.onSubscribe(cdo);
        this.f34714do.u(cdo);
    }
}
