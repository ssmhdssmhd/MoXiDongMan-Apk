package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class h1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f34865do;

    /* renamed from: rx.internal.operators.h1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public int f34866do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34868if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34868if = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34868if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34868if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f34866do;
            if (i >= h1.this.f34865do) {
                this.f34868if.onNext(t);
            } else {
                this.f34866do = i + 1;
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34868if.setProducer(producer);
            producer.request(h1.this.f34865do);
        }
    }

    public h1(int i) {
        if (i >= 0) {
            this.f34865do = i;
            return;
        }
        throw new IllegalArgumentException("n >= 0 required but it was " + i);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
