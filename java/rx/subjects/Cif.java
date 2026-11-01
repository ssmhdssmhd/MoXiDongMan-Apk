package rx.subjects;

import android.support.v4.s80;
import android.support.v4.u22;
import java.lang.reflect.Array;
import java.util.ArrayList;
import rx.Observable;
import rx.functions.Action1;
import rx.internal.operators.Creturn;
import rx.subjects.Ctry;

/* renamed from: rx.subjects.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif<T> extends u22<T, T> {

    /* renamed from: for, reason: not valid java name */
    private static final Object[] f36207for = new Object[0];

    /* renamed from: if, reason: not valid java name */
    private final Ctry<T> f36208if;

    /* renamed from: rx.subjects.if$do, reason: invalid class name */
    public static class Cdo implements Action1<Ctry.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Ctry f36209do;

        public Cdo(Ctry ctry) {
            this.f36209do = ctry;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Ctry.Cfor<T> cfor) throws Throwable {
            cfor.m39218if(this.f36209do.getLatest());
        }
    }

    public Cif(Observable.OnSubscribe<T> onSubscribe, Ctry<T> ctry) {
        super(onSubscribe);
        this.f36208if = ctry;
    }

    public static <T> Cif<T> g6() {
        return i6(null, false);
    }

    public static <T> Cif<T> h6(T t) {
        return i6(t, true);
    }

    private static <T> Cif<T> i6(T t, boolean z) {
        Ctry ctry = new Ctry();
        if (z) {
            ctry.setLatest(Creturn.m38682break(t));
        }
        Cdo cdo = new Cdo(ctry);
        ctry.onAdded = cdo;
        ctry.onTerminated = cdo;
        return new Cif<>(ctry, ctry);
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36208if.observers().length > 0;
    }

    public Throwable j6() {
        Object latest = this.f36208if.getLatest();
        if (Creturn.m38685else(latest)) {
            return Creturn.m38689new(latest);
        }
        return null;
    }

    public T k6() {
        Object latest = this.f36208if.getLatest();
        if (Creturn.m38687goto(latest)) {
            return (T) Creturn.m38691try(latest);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] l6() {
        Object[] objArr = f36207for;
        Object[] objArrM6 = m6(objArr);
        return objArrM6 == objArr ? new Object[0] : objArrM6;
    }

    public T[] m6(T[] tArr) {
        Object latest = this.f36208if.getLatest();
        if (Creturn.m38687goto(latest)) {
            if (tArr.length == 0) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            }
            tArr[0] = Creturn.m38691try(latest);
            if (tArr.length > 1) {
                tArr[1] = null;
            }
        } else if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    public boolean n6() {
        return Creturn.m38683case(this.f36208if.getLatest());
    }

    public boolean o6() {
        return Creturn.m38685else(this.f36208if.getLatest());
    }

    @Override // rx.Observer
    public void onCompleted() {
        if (this.f36208if.getLatest() == null || this.f36208if.active) {
            Object objM38688if = Creturn.m38688if();
            for (Ctry.Cfor<T> cfor : this.f36208if.terminate(objM38688if)) {
                cfor.m39219new(objM38688if);
            }
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        if (this.f36208if.getLatest() == null || this.f36208if.active) {
            Object objM38686for = Creturn.m38686for(th);
            ArrayList arrayList = null;
            for (Ctry.Cfor<T> cfor : this.f36208if.terminate(objM38686for)) {
                try {
                    cfor.m39219new(objM38686for);
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
        if (this.f36208if.getLatest() == null || this.f36208if.active) {
            Object objM38682break = Creturn.m38682break(t);
            for (Ctry.Cfor<T> cfor : this.f36208if.next(objM38682break)) {
                cfor.m39219new(objM38682break);
            }
        }
    }

    public boolean p6() {
        return Creturn.m38687goto(this.f36208if.getLatest());
    }

    public int q6() {
        return this.f36208if.observers().length;
    }
}
