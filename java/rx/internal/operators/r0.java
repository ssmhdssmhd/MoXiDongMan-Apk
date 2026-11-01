package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class r0<T> implements Observable.Operator<rx.Cdo<T>, T> {

    /* renamed from: rx.internal.operators.r0$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f35293do;

        public Cdo(Cfor cfor) {
            this.f35293do = cfor;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j > 0) {
                this.f35293do.m38678for(j);
            }
        }
    }

    /* renamed from: rx.internal.operators.r0$for, reason: invalid class name */
    public static class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final y22<? super rx.Cdo<T>> f35295do;

        /* renamed from: for, reason: not valid java name */
        private boolean f35296for;

        /* renamed from: if, reason: not valid java name */
        private volatile rx.Cdo<T> f35297if;

        /* renamed from: new, reason: not valid java name */
        private boolean f35298new;

        /* renamed from: try, reason: not valid java name */
        private final AtomicLong f35299try = new AtomicLong();

        public Cfor(y22<? super rx.Cdo<T>> y22Var) {
            this.f35295do = y22Var;
        }

        /* renamed from: do, reason: not valid java name */
        private void m38676do() {
            long j;
            AtomicLong atomicLong = this.f35299try;
            do {
                j = atomicLong.get();
                if (j == Long.MAX_VALUE) {
                    return;
                }
            } while (!atomicLong.compareAndSet(j, j - 1));
        }

        /* renamed from: if, reason: not valid java name */
        private void m38677if() {
            synchronized (this) {
                if (this.f35296for) {
                    this.f35298new = true;
                    return;
                }
                AtomicLong atomicLong = this.f35299try;
                while (!this.f35295do.isUnsubscribed()) {
                    rx.Cdo<T> cdo = this.f35297if;
                    if (cdo != null && atomicLong.get() > 0) {
                        this.f35297if = null;
                        this.f35295do.onNext(cdo);
                        if (this.f35295do.isUnsubscribed()) {
                            return;
                        }
                        this.f35295do.onCompleted();
                        return;
                    }
                    synchronized (this) {
                        if (!this.f35298new) {
                            this.f35296for = false;
                            return;
                        }
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38678for(long j) {
            u6.m8259if(this.f35299try, j);
            request(j);
            m38677if();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35297if = rx.Cdo.m38310if();
            m38677if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35297if = rx.Cdo.m38311new(th);
            rx.plugins.Cif.m39151protected(th);
            m38677if();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35295do.onNext(rx.Cdo.m38312try(t));
            m38676do();
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(0L);
        }
    }

    /* renamed from: rx.internal.operators.r0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final r0<Object> f35300do = new r0<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> r0<T> m38674if() {
        return (r0<T>) Cif.f35300do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super rx.Cdo<T>> y22Var) {
        Cfor cfor = new Cfor(y22Var);
        y22Var.add(cfor);
        y22Var.setProducer(new Cdo(cfor));
        return cfor;
    }
}
