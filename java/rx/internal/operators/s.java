package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.yz1;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.functions.Action0;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public final class s {
    private s() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38692do(Future<? extends T> future) {
        return new Cdo(future);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38693if(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return new Cdo(future, j, timeUnit);
    }

    /* renamed from: rx.internal.operators.s$do, reason: invalid class name */
    public static class Cdo<T> implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final Future<? extends T> f35310do;

        /* renamed from: for, reason: not valid java name */
        private final TimeUnit f35311for;

        /* renamed from: if, reason: not valid java name */
        private final long f35312if;

        /* renamed from: rx.internal.operators.s$do$do, reason: invalid class name and collision with other inner class name */
        public class C0534do implements Action0 {
            public C0534do() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f35310do.cancel(true);
            }
        }

        public Cdo(Future<? extends T> future) {
            this.f35310do = future;
            this.f35312if = 0L;
            this.f35311for = null;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            y22Var.add(Cfor.m39225do(new C0534do()));
            try {
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                TimeUnit timeUnit = this.f35311for;
                y22Var.setProducer(new yz1(y22Var, timeUnit == null ? this.f35310do.get() : this.f35310do.get(this.f35312if, timeUnit)));
            } catch (Throwable th) {
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                s80.m7297goto(th, y22Var);
            }
        }

        public Cdo(Future<? extends T> future, long j, TimeUnit timeUnit) {
            this.f35310do = future;
            this.f35312if = j;
            this.f35311for = timeUnit;
        }
    }
}
