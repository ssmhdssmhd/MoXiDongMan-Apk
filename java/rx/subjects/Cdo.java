package rx.subjects;

import android.support.v4.s80;
import android.support.v4.u22;
import android.support.v4.yz1;
import java.util.ArrayList;
import rx.Observable;
import rx.functions.Action1;
import rx.internal.operators.Creturn;
import rx.subjects.Ctry;

/* renamed from: rx.subjects.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo<T> extends u22<T, T> {

    /* renamed from: for, reason: not valid java name */
    public volatile Object f36202for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry<T> f36203if;

    /* renamed from: rx.subjects.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0571do implements Action1<Ctry.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Ctry f36204do;

        public C0571do(Ctry ctry) {
            this.f36204do = ctry;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Ctry.Cfor<T> cfor) {
            Object latest = this.f36204do.getLatest();
            if (latest == null || Creturn.m38683case(latest)) {
                cfor.onCompleted();
            } else if (Creturn.m38685else(latest)) {
                cfor.onError(Creturn.m38689new(latest));
            } else {
                cfor.f36216do.setProducer(new yz1(cfor.f36216do, Creturn.m38691try(latest)));
            }
        }
    }

    public Cdo(Observable.OnSubscribe<T> onSubscribe, Ctry<T> ctry) {
        super(onSubscribe);
        this.f36203if = ctry;
    }

    public static <T> Cdo<T> g6() {
        Ctry ctry = new Ctry();
        ctry.onTerminated = new C0571do(ctry);
        return new Cdo<>(ctry, ctry);
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36203if.observers().length > 0;
    }

    public Throwable h6() {
        Object latest = this.f36203if.getLatest();
        if (Creturn.m38685else(latest)) {
            return Creturn.m38689new(latest);
        }
        return null;
    }

    public T i6() {
        Object obj = this.f36202for;
        if (Creturn.m38685else(this.f36203if.getLatest()) || !Creturn.m38687goto(obj)) {
            return null;
        }
        return (T) Creturn.m38691try(obj);
    }

    public boolean j6() {
        Object latest = this.f36203if.getLatest();
        return (latest == null || Creturn.m38685else(latest)) ? false : true;
    }

    public boolean k6() {
        return Creturn.m38685else(this.f36203if.getLatest());
    }

    public boolean l6() {
        return !Creturn.m38685else(this.f36203if.getLatest()) && Creturn.m38687goto(this.f36202for);
    }

    @Override // rx.Observer
    public void onCompleted() {
        if (this.f36203if.active) {
            Object objM38688if = this.f36202for;
            if (objM38688if == null) {
                objM38688if = Creturn.m38688if();
            }
            for (Ctry.Cfor<T> cfor : this.f36203if.terminate(objM38688if)) {
                if (objM38688if == Creturn.m38688if()) {
                    cfor.onCompleted();
                } else {
                    cfor.f36216do.setProducer(new yz1(cfor.f36216do, Creturn.m38691try(objM38688if)));
                }
            }
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        if (this.f36203if.active) {
            ArrayList arrayList = null;
            for (Ctry.Cfor<T> cfor : this.f36203if.terminate(Creturn.m38686for(th))) {
                try {
                    cfor.onError(th);
                } catch (Throwable th2) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
            s80.m7299new(arrayList);
        }
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36202for = Creturn.m38682break(t);
    }
}
