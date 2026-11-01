package rx.internal.operators;

import android.support.v4.dz;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.HashMap;
import java.util.Map;
import rx.Observable;
import rx.functions.Func0;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class q<T, K, V> implements Observable.OnSubscribe<Map<K, V>>, Func0<Map<K, V>> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f35250do;

    /* renamed from: for, reason: not valid java name */
    public final Func1<? super T, ? extends V> f35251for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends K> f35252if;

    /* renamed from: new, reason: not valid java name */
    public final Func0<? extends Map<K, V>> f35253new;

    /* renamed from: rx.internal.operators.q$do, reason: invalid class name */
    public static final class Cdo<T, K, V> extends dz<T, Map<K, V>> {

        /* renamed from: break, reason: not valid java name */
        public final Func1<? super T, ? extends K> f35254break;

        /* renamed from: catch, reason: not valid java name */
        public final Func1<? super T, ? extends V> f35255catch;

        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(y22<? super Map<K, V>> y22Var, Map<K, V> map, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
            super(y22Var);
            this.f34936for = map;
            this.f34937if = true;
            this.f35254break = func1;
            this.f35255catch = func12;
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f1167this) {
                return;
            }
            try {
                ((Map) this.f34936for).put(this.f35254break.call(t), this.f35255catch.call(t));
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(th);
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public q(Observable<T> observable, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(observable, func1, func12, null);
    }

    @Override // rx.functions.Func0, java.util.concurrent.Callable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Map<K, V> call() {
        return new HashMap();
    }

    @Override // rx.functions.Action1
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super Map<K, V>> y22Var) {
        try {
            new Cdo(y22Var, this.f35253new.call(), this.f35252if, this.f35251for).m38566try(this.f35250do);
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
        }
    }

    public q(Observable<T> observable, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, V>> func0) {
        this.f35250do = observable;
        this.f35252if = func1;
        this.f35251for = func12;
        if (func0 == null) {
            this.f35253new = this;
        } else {
            this.f35253new = func0;
        }
    }
}
