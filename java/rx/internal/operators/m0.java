package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class m0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f35078do;

    /* renamed from: for, reason: not valid java name */
    public final T f35079for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f35080if;

    /* renamed from: rx.internal.operators.m0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private int f35081do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35083if;

        public Cdo(y22 y22Var) {
            this.f35083if = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            int i = this.f35081do;
            m0 m0Var = m0.this;
            if (i <= m0Var.f35078do) {
                if (m0Var.f35080if) {
                    this.f35083if.onNext(m0Var.f35079for);
                    this.f35083if.onCompleted();
                    return;
                }
                this.f35083if.onError(new IndexOutOfBoundsException(m0.this.f35078do + " is out of bounds"));
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35083if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f35081do;
            this.f35081do = i + 1;
            if (i == m0.this.f35078do) {
                this.f35083if.onNext(t);
                this.f35083if.onCompleted();
                unsubscribe();
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35083if.setProducer(new Cif(producer));
        }
    }

    /* renamed from: rx.internal.operators.m0$if, reason: invalid class name */
    public static class Cif extends AtomicBoolean implements Producer {
        private static final long serialVersionUID = 1;
        public final Producer actual;

        public Cif(Producer producer) {
            this.actual = producer;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
            if (j <= 0 || !compareAndSet(false, true)) {
                return;
            }
            this.actual.request(Long.MAX_VALUE);
        }
    }

    public m0(int i) {
        this(i, null, false);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var);
        y22Var.add(cdo);
        return cdo;
    }

    public m0(int i, T t) {
        this(i, t, true);
    }

    private m0(int i, T t, boolean z) {
        if (i >= 0) {
            this.f35078do = i;
            this.f35079for = t;
            this.f35080if = z;
        } else {
            throw new IndexOutOfBoundsException(i + " is out of bounds");
        }
    }
}
