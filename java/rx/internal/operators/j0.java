package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Objects;
import rx.Observable;
import rx.functions.Action0;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class j0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Action0 f34987do;

    /* renamed from: rx.internal.operators.j0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34988do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34988do = y22Var2;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38581do() {
            try {
                j0.this.f34987do.call();
            } catch (Throwable th) {
                s80.m7301try(th);
                Cif.m39151protected(th);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                this.f34988do.onCompleted();
            } finally {
                m38581do();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                this.f34988do.onError(th);
            } finally {
                m38581do();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34988do.onNext(t);
        }
    }

    public j0(Action0 action0) {
        Objects.requireNonNull(action0, "Action can not be null");
        this.f34987do = action0;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
