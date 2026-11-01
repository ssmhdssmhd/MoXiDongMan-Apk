package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public class w0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<? super T> f35520do;

    /* renamed from: rx.internal.operators.w0$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicLong f35521do;

        public Cdo(AtomicLong atomicLong) {
            this.f35521do = atomicLong;
        }

        @Override // rx.Producer
        public void request(long j) {
            u6.m8259if(this.f35521do, j);
        }
    }

    /* renamed from: rx.internal.operators.w0$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final w0<Object> f35523do = new w0<>();
    }

    /* renamed from: rx.internal.operators.w0$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35524do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicLong f35525for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35526if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(y22 y22Var, y22 y22Var2, AtomicLong atomicLong) {
            super(y22Var);
            this.f35526if = y22Var2;
            this.f35525for = atomicLong;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35524do) {
                return;
            }
            this.f35524do = true;
            this.f35526if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35524do) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35524do = true;
                this.f35526if.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35524do) {
                return;
            }
            if (this.f35525for.get() > 0) {
                this.f35526if.onNext(t);
                this.f35525for.decrementAndGet();
                return;
            }
            Action1<? super T> action1 = w0.this.f35520do;
            if (action1 != null) {
                try {
                    action1.call(t);
                } catch (Throwable th) {
                    s80.m7300this(th, this, t);
                }
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public w0() {
        this(null);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> w0<T> m38778if() {
        return (w0<T>) Cfor.f35523do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        AtomicLong atomicLong = new AtomicLong();
        y22Var.setProducer(new Cdo(atomicLong));
        return new Cif(y22Var, y22Var, atomicLong);
    }

    public w0(Action1<? super T> action1) {
        this.f35520do = action1;
    }
}
