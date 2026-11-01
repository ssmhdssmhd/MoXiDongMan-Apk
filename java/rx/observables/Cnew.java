package rx.observables;

import android.support.v4.y22;
import rx.Observable;

/* renamed from: rx.observables.new, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cnew<K, T> extends Observable<T> {

    /* renamed from: if, reason: not valid java name */
    private final K f36075if;

    /* renamed from: rx.observables.new$do, reason: invalid class name */
    public static class Cdo implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f36076do;

        public Cdo(Observable observable) {
            this.f36076do = observable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            this.f36076do.r5(y22Var);
        }
    }

    public Cnew(K k, Observable.OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
        this.f36075if = k;
    }

    public static <K, T> Cnew<K, T> e6(K k, Observable.OnSubscribe<T> onSubscribe) {
        return new Cnew<>(k, onSubscribe);
    }

    public static <K, T> Cnew<K, T> f6(K k, Observable<T> observable) {
        return new Cnew<>(k, new Cdo(observable));
    }

    public K g6() {
        return this.f36075if;
    }
}
