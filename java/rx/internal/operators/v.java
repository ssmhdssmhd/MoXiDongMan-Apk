package rx.internal.operators;

import android.support.v4.lz1;
import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class v<T> implements Observable.Operator<Boolean, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, Boolean> f35480do;

    /* renamed from: if, reason: not valid java name */
    public final boolean f35481if;

    /* renamed from: rx.internal.operators.v$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35482do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ lz1 f35483for;

        /* renamed from: if, reason: not valid java name */
        public boolean f35484if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ y22 f35485new;

        public Cdo(lz1 lz1Var, y22 y22Var) {
            this.f35483for = lz1Var;
            this.f35485new = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35484if) {
                return;
            }
            this.f35484if = true;
            if (this.f35482do) {
                this.f35483for.setValue(Boolean.FALSE);
            } else {
                this.f35483for.setValue(Boolean.valueOf(v.this.f35481if));
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35484if) {
                Cif.m39151protected(th);
            } else {
                this.f35484if = true;
                this.f35485new.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35484if) {
                return;
            }
            this.f35482do = true;
            try {
                if (v.this.f35480do.call(t).booleanValue()) {
                    this.f35484if = true;
                    this.f35483for.setValue(Boolean.valueOf(true ^ v.this.f35481if));
                    unsubscribe();
                }
            } catch (Throwable th) {
                s80.m7300this(th, this, t);
            }
        }
    }

    public v(Func1<? super T, Boolean> func1, boolean z) {
        this.f35480do = func1;
        this.f35481if = z;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Boolean> y22Var) {
        lz1 lz1Var = new lz1(y22Var);
        Cdo cdo = new Cdo(lz1Var, y22Var);
        y22Var.add(cdo);
        y22Var.setProducer(lz1Var);
        return cdo;
    }
}
