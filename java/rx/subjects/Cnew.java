package rx.subjects;

import android.support.v4.u22;
import android.support.v4.y22;
import rx.Observable;
import rx.observers.Cfor;

/* renamed from: rx.subjects.new, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cnew<T, R> extends u22<T, R> {

    /* renamed from: for, reason: not valid java name */
    private final u22<T, R> f36210for;

    /* renamed from: if, reason: not valid java name */
    private final Cfor<T> f36211if;

    /* renamed from: rx.subjects.new$do, reason: invalid class name */
    public class Cdo implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ u22 f36212do;

        public Cdo(u22 u22Var) {
            this.f36212do = u22Var;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            this.f36212do.r5(y22Var);
        }
    }

    public Cnew(u22<T, R> u22Var) {
        super(new Cdo(u22Var));
        this.f36210for = u22Var;
        this.f36211if = new Cfor<>(u22Var);
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36210for.e6();
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f36211if.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f36211if.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36211if.onNext(t);
    }
}
