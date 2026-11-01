package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class p1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f35214do;

    /* renamed from: rx.internal.operators.p1$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35215do;

        public Cdo(Cif cif) {
            this.f35215do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35215do.m38651do(j);
        }
    }

    /* renamed from: rx.internal.operators.p1$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> implements Func1<Object, T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35217do;

        /* renamed from: new, reason: not valid java name */
        public final int f35220new;

        /* renamed from: if, reason: not valid java name */
        public final AtomicLong f35219if = new AtomicLong();

        /* renamed from: for, reason: not valid java name */
        public final ArrayDeque<Object> f35218for = new ArrayDeque<>();

        public Cif(y22<? super T> y22Var, int i) {
            this.f35217do = y22Var;
            this.f35220new = i;
        }

        @Override // rx.functions.Func1
        public T call(Object obj) {
            return (T) Creturn.m38691try(obj);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38651do(long j) {
            if (j > 0) {
                u6.m8258goto(this.f35219if, j, this.f35218for, this.f35217do, this);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            u6.m8262try(this.f35219if, this.f35218for, this.f35217do, this);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35218for.clear();
            this.f35217do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35218for.size() == this.f35220new) {
                this.f35218for.poll();
            }
            this.f35218for.offer(Creturn.m38682break(t));
        }
    }

    public p1(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count cannot be negative");
        }
        this.f35214do = i;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var, this.f35214do);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        return cif;
    }
}
