package rx.internal.operators;

import android.support.v4.y22;
import android.support.v4.yz1;
import java.util.NoSuchElementException;
import rx.Observable;

/* loaded from: classes4.dex */
public final class g1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final boolean f34826do;

    /* renamed from: if, reason: not valid java name */
    private final T f34827if;

    /* renamed from: rx.internal.operators.g1$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final g1<?> f34828do = new g1<>();
    }

    /* renamed from: rx.internal.operators.g1$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        private boolean f34829case;

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f34830do;

        /* renamed from: for, reason: not valid java name */
        private final T f34831for;

        /* renamed from: if, reason: not valid java name */
        private final boolean f34832if;

        /* renamed from: new, reason: not valid java name */
        private T f34833new;

        /* renamed from: try, reason: not valid java name */
        private boolean f34834try;

        public Cif(y22<? super T> y22Var, boolean z, T t) {
            this.f34830do = y22Var;
            this.f34832if = z;
            this.f34831for = t;
            request(2L);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34829case) {
                return;
            }
            if (this.f34834try) {
                this.f34830do.setProducer(new yz1(this.f34830do, this.f34833new));
            } else if (this.f34832if) {
                this.f34830do.setProducer(new yz1(this.f34830do, this.f34831for));
            } else {
                this.f34830do.onError(new NoSuchElementException("Sequence contains no elements"));
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34829case) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f34830do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34829case) {
                return;
            }
            if (!this.f34834try) {
                this.f34833new = t;
                this.f34834try = true;
            } else {
                this.f34829case = true;
                this.f34830do.onError(new IllegalArgumentException("Sequence contains too many elements"));
                unsubscribe();
            }
        }
    }

    public g1() {
        this(false, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> g1<T> m38525if() {
        return (g1<T>) Cdo.f34828do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var, this.f34826do, this.f34827if);
        y22Var.add(cif);
        return cif;
    }

    public g1(T t) {
        this(true, t);
    }

    private g1(boolean z, T t) {
        this.f34826do = z;
        this.f34827if = t;
    }
}
