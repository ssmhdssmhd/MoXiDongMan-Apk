package rx.subjects;

import android.support.v4.u22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.internal.operators.Creturn;
import rx.subjects.Ctry;

/* renamed from: rx.subjects.case, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccase<T> extends u22<T, T> {

    /* renamed from: for, reason: not valid java name */
    private final Cif.Cdo f36194for;

    /* renamed from: if, reason: not valid java name */
    private final Ctry<T> f36195if;

    /* renamed from: rx.subjects.case$do, reason: invalid class name */
    public static class Cdo implements Action1<Ctry.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Ctry f36196do;

        public Cdo(Ctry ctry) {
            this.f36196do = ctry;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Ctry.Cfor<T> cfor) throws Throwable {
            cfor.m39218if(this.f36196do.getLatest());
        }
    }

    /* renamed from: rx.subjects.case$for, reason: invalid class name */
    public class Cfor implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Throwable f36197do;

        public Cfor(Throwable th) {
            this.f36197do = th;
        }

        @Override // rx.functions.Action0
        public void call() {
            Ccase.this.i6(this.f36197do);
        }
    }

    /* renamed from: rx.subjects.case$if, reason: invalid class name */
    public class Cif implements Action0 {
        public Cif() {
        }

        @Override // rx.functions.Action0
        public void call() {
            Ccase.this.h6();
        }
    }

    /* renamed from: rx.subjects.case$new, reason: invalid class name */
    public class Cnew implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f36200do;

        public Cnew(Object obj) {
            this.f36200do = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.functions.Action0
        public void call() {
            Ccase.this.j6(this.f36200do);
        }
    }

    public Ccase(Observable.OnSubscribe<T> onSubscribe, Ctry<T> ctry, rx.schedulers.Cdo cdo) {
        super(onSubscribe);
        this.f36195if = ctry;
        this.f36194for = cdo.mo971do();
    }

    public static <T> Ccase<T> g6(rx.schedulers.Cdo cdo) {
        Ctry ctry = new Ctry();
        Cdo cdo2 = new Cdo(ctry);
        ctry.onAdded = cdo2;
        ctry.onTerminated = cdo2;
        return new Ccase<>(ctry, ctry, cdo);
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36195if.observers().length > 0;
    }

    public void h6() {
        Ctry<T> ctry = this.f36195if;
        if (ctry.active) {
            for (Ctry.Cfor<T> cfor : ctry.terminate(Creturn.m38688if())) {
                cfor.onCompleted();
            }
        }
    }

    public void i6(Throwable th) {
        Ctry<T> ctry = this.f36195if;
        if (ctry.active) {
            for (Ctry.Cfor<T> cfor : ctry.terminate(Creturn.m38686for(th))) {
                cfor.onError(th);
            }
        }
    }

    public void j6(T t) {
        for (Ctry.Cfor<T> cfor : this.f36195if.observers()) {
            cfor.onNext(t);
        }
    }

    public void k6(long j) {
        this.f36194for.mo38375for(new Cif(), j, TimeUnit.MILLISECONDS);
    }

    public void l6(Throwable th, long j) {
        this.f36194for.mo38375for(new Cfor(th), j, TimeUnit.MILLISECONDS);
    }

    public void m6(T t, long j) {
        this.f36194for.mo38375for(new Cnew(t), j, TimeUnit.MILLISECONDS);
    }

    @Override // rx.Observer
    public void onCompleted() {
        k6(0L);
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        l6(th, 0L);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        m6(t, 0L);
    }
}
