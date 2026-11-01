package rx.internal.operators;

import android.support.v4.dz;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import rx.Observable;
import rx.functions.Func0;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class r<T, K, V> implements Observable.OnSubscribe<Map<K, Collection<V>>>, Func0<Map<K, Collection<V>>> {

    /* renamed from: do, reason: not valid java name */
    private final Func1<? super T, ? extends K> f35284do;

    /* renamed from: for, reason: not valid java name */
    private final Func0<? extends Map<K, Collection<V>>> f35285for;

    /* renamed from: if, reason: not valid java name */
    private final Func1<? super T, ? extends V> f35286if;

    /* renamed from: new, reason: not valid java name */
    private final Func1<? super K, ? extends Collection<V>> f35287new;

    /* renamed from: try, reason: not valid java name */
    private final Observable<T> f35288try;

    /* renamed from: rx.internal.operators.r$do, reason: invalid class name */
    public static final class Cdo<K, V> implements Func1<K, Collection<V>> {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo<Object, Object> f35289do = new Cdo<>();

        private Cdo() {
        }

        /* renamed from: if, reason: not valid java name */
        public static <K, V> Cdo<K, V> m38672if() {
            return (Cdo<K, V>) f35289do;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> call(K k) {
            return new ArrayList();
        }
    }

    /* renamed from: rx.internal.operators.r$if, reason: invalid class name */
    public static final class Cif<T, K, V> extends dz<T, Map<K, Collection<V>>> {

        /* renamed from: break, reason: not valid java name */
        private final Func1<? super T, ? extends K> f35290break;

        /* renamed from: catch, reason: not valid java name */
        private final Func1<? super T, ? extends V> f35291catch;

        /* renamed from: class, reason: not valid java name */
        private final Func1<? super K, ? extends Collection<V>> f35292class;

        /* JADX WARN: Multi-variable type inference failed */
        public Cif(y22<? super Map<K, Collection<V>>> y22Var, Map<K, Collection<V>> map, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func1<? super K, ? extends Collection<V>> func13) {
            super(y22Var);
            this.f34936for = map;
            this.f34937if = true;
            this.f35290break = func1;
            this.f35291catch = func12;
            this.f35292class = func13;
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f1167this) {
                return;
            }
            try {
                K kCall = this.f35290break.call(t);
                V vCall = this.f35291catch.call(t);
                Collection<V> collectionCall = (Collection) ((Map) this.f34936for).get(kCall);
                if (collectionCall == null) {
                    collectionCall = this.f35292class.call(kCall);
                    ((Map) this.f34936for).put(kCall, collectionCall);
                }
                collectionCall.add(vCall);
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

    public r(Observable<T> observable, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(observable, func1, func12, null, Cdo.m38672if());
    }

    @Override // rx.functions.Func0, java.util.concurrent.Callable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Map<K, Collection<V>> call() {
        return new HashMap();
    }

    @Override // rx.functions.Action1
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super Map<K, Collection<V>>> y22Var) {
        try {
            new Cif(y22Var, this.f35285for.call(), this.f35284do, this.f35286if, this.f35287new).m38566try(this.f35288try);
        } catch (Throwable th) {
            s80.m7301try(th);
            y22Var.onError(th);
        }
    }

    public r(Observable<T> observable, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0) {
        this(observable, func1, func12, func0, Cdo.m38672if());
    }

    public r(Observable<T> observable, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0, Func1<? super K, ? extends Collection<V>> func13) {
        this.f35288try = observable;
        this.f35284do = func1;
        this.f35286if = func12;
        if (func0 == null) {
            this.f35285for = this;
        } else {
            this.f35285for = func0;
        }
        this.f35287new = func13;
    }
}
