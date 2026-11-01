package rx.internal.util;

import android.support.v4.y61;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.operators.v;

/* renamed from: rx.internal.util.for, reason: invalid class name */
/* loaded from: classes4.dex */
public enum Cfor {
    ;

    public static final Cgoto LONG_COUNTER = new Cgoto();
    public static final Ccase OBJECT_EQUALS = new Ccase();
    public static final Cwhile TO_ARRAY = new Cwhile();
    public static final Csuper RETURNS_VOID = new Csuper();
    public static final Celse COUNTER = new Celse();
    public static final Ctry ERROR_EXTRACTOR = new Ctry();
    public static final Action1<Throwable> ERROR_NOT_IMPLEMENTED = new Action1<Throwable>() { // from class: rx.internal.util.for.for
        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            throw new y61(th);
        }
    };
    public static final Observable.Operator<Boolean, Object> IS_EMPTY = new v(rx.internal.util.Cthis.m38930if(), true);

    /* renamed from: rx.internal.util.for$break, reason: invalid class name */
    public static final class Cbreak<T> implements Func0<rx.observables.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final Observable<T> f35820do;

        /* renamed from: if, reason: not valid java name */
        private final int f35821if;

        public Cbreak(Observable<T> observable, int i) {
            this.f35820do = observable;
            this.f35821if = i;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public rx.observables.Cfor<T> call() {
            return this.f35820do.d3(this.f35821if);
        }
    }

    /* renamed from: rx.internal.util.for$case, reason: invalid class name */
    public static final class Ccase implements Func2<Object, Object, Boolean> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(Object obj, Object obj2) {
            return Boolean.valueOf(obj == obj2 || (obj != null && obj.equals(obj2)));
        }
    }

    /* renamed from: rx.internal.util.for$catch, reason: invalid class name */
    public static final class Ccatch<T> implements Func0<rx.observables.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final TimeUnit f35822do;

        /* renamed from: for, reason: not valid java name */
        private final long f35823for;

        /* renamed from: if, reason: not valid java name */
        private final Observable<T> f35824if;

        /* renamed from: new, reason: not valid java name */
        private final rx.Cif f35825new;

        public Ccatch(Observable<T> observable, long j, TimeUnit timeUnit, rx.Cif cif) {
            this.f35822do = timeUnit;
            this.f35824if = observable;
            this.f35823for = j;
            this.f35825new = cif;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public rx.observables.Cfor<T> call() {
            return this.f35824if.i3(this.f35823for, this.f35822do, this.f35825new);
        }
    }

    /* renamed from: rx.internal.util.for$class, reason: invalid class name */
    public static final class Cclass<T> implements Func0<rx.observables.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final Observable<T> f35826do;

        public Cclass(Observable<T> observable) {
            this.f35826do = observable;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public rx.observables.Cfor<T> call() {
            return this.f35826do.c3();
        }
    }

    /* renamed from: rx.internal.util.for$const, reason: invalid class name */
    public static final class Cconst<T> implements Func0<rx.observables.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final long f35827do;

        /* renamed from: for, reason: not valid java name */
        private final rx.Cif f35828for;

        /* renamed from: if, reason: not valid java name */
        private final TimeUnit f35829if;

        /* renamed from: new, reason: not valid java name */
        private final int f35830new;

        /* renamed from: try, reason: not valid java name */
        private final Observable<T> f35831try;

        public Cconst(Observable<T> observable, int i, long j, TimeUnit timeUnit, rx.Cif cif) {
            this.f35827do = j;
            this.f35829if = timeUnit;
            this.f35828for = cif;
            this.f35830new = i;
            this.f35831try = observable;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public rx.observables.Cfor<T> call() {
            return this.f35831try.f3(this.f35830new, this.f35827do, this.f35829if, this.f35828for);
        }
    }

    /* renamed from: rx.internal.util.for$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Func2<R, T, R> {

        /* renamed from: do, reason: not valid java name */
        public final Action2<R, ? super T> f35832do;

        public Cdo(Action2<R, ? super T> action2) {
            this.f35832do = action2;
        }

        @Override // rx.functions.Func2
        public R call(R r, T t) {
            this.f35832do.call(r, t);
            return r;
        }
    }

    /* renamed from: rx.internal.util.for$else, reason: invalid class name */
    public static final class Celse implements Func2<Integer, Object, Integer> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Integer call(Integer num, Object obj) {
            return Integer.valueOf(num.intValue() + 1);
        }
    }

    /* renamed from: rx.internal.util.for$final, reason: invalid class name */
    public static final class Cfinal implements Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> {

        /* renamed from: do, reason: not valid java name */
        public final Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> f35833do;

        public Cfinal(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
            this.f35833do = func1;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<?> call(Observable<? extends rx.Cdo<?>> observable) {
            return this.f35833do.call(observable.K1(Cfor.ERROR_EXTRACTOR));
        }
    }

    /* renamed from: rx.internal.util.for$goto, reason: invalid class name */
    public static final class Cgoto implements Func2<Long, Object, Long> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Long call(Long l, Object obj) {
            return Long.valueOf(l.longValue() + 1);
        }
    }

    /* renamed from: rx.internal.util.for$if, reason: invalid class name */
    public static final class Cif implements Func1<Object, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final Object f35834do;

        public Cif(Object obj) {
            this.f35834do = obj;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(Object obj) {
            Object obj2 = this.f35834do;
            return Boolean.valueOf(obj == obj2 || (obj != null && obj.equals(obj2)));
        }
    }

    /* renamed from: rx.internal.util.for$new, reason: invalid class name */
    public static final class Cnew implements Func1<Object, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final Class<?> f35835do;

        public Cnew(Class<?> cls) {
            this.f35835do = cls;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(Object obj) {
            return Boolean.valueOf(this.f35835do.isInstance(obj));
        }
    }

    /* renamed from: rx.internal.util.for$super, reason: invalid class name */
    public static final class Csuper implements Func1<Object, Void> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Object obj) {
            return null;
        }
    }

    /* renamed from: rx.internal.util.for$this, reason: invalid class name */
    public static final class Cthis implements Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> {

        /* renamed from: do, reason: not valid java name */
        public final Func1<? super Observable<? extends Void>, ? extends Observable<?>> f35836do;

        public Cthis(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
            this.f35836do = func1;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<?> call(Observable<? extends rx.Cdo<?>> observable) {
            return this.f35836do.call(observable.K1(Cfor.RETURNS_VOID));
        }
    }

    /* renamed from: rx.internal.util.for$throw, reason: invalid class name */
    public static final class Cthrow<T, R> implements Func1<Observable<T>, Observable<R>> {

        /* renamed from: do, reason: not valid java name */
        public final Func1<? super Observable<T>, ? extends Observable<R>> f35837do;

        /* renamed from: if, reason: not valid java name */
        public final rx.Cif f35838if;

        public Cthrow(Func1<? super Observable<T>, ? extends Observable<R>> func1, rx.Cif cif) {
            this.f35837do = func1;
            this.f35838if = cif;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<R> call(Observable<T> observable) {
            return this.f35837do.call(observable).q2(this.f35838if);
        }
    }

    /* renamed from: rx.internal.util.for$try, reason: invalid class name */
    public static final class Ctry implements Func1<rx.Cdo<?>, Throwable> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Throwable call(rx.Cdo<?> cdo) {
            return cdo.m38319else();
        }
    }

    /* renamed from: rx.internal.util.for$while, reason: invalid class name */
    public static final class Cwhile implements Func1<List<? extends Observable<?>>, Observable<?>[]> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<?>[] call(List<? extends Observable<?>> list) {
            return (Observable[]) list.toArray(new Observable[list.size()]);
        }
    }

    public static <T, R> Func2<R, T, R> createCollectorCaller(Action2<R, ? super T> action2) {
        return new Cdo(action2);
    }

    public static Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> createRepeatDematerializer(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
        return new Cthis(func1);
    }

    public static <T, R> Func1<Observable<T>, Observable<R>> createReplaySelectorAndObserveOn(Func1<? super Observable<T>, ? extends Observable<R>> func1, rx.Cif cif) {
        return new Cthrow(func1, cif);
    }

    public static <T> Func0<rx.observables.Cfor<T>> createReplaySupplier(Observable<T> observable) {
        return new Cclass(observable);
    }

    public static Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> createRetryDematerializer(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return new Cfinal(func1);
    }

    public static Func1<Object, Boolean> equalsWith(Object obj) {
        return new Cif(obj);
    }

    public static Func1<Object, Boolean> isInstanceOf(Class<?> cls) {
        return new Cnew(cls);
    }

    public static <T> Func0<rx.observables.Cfor<T>> createReplaySupplier(Observable<T> observable, int i) {
        return new Cbreak(observable, i);
    }

    public static <T> Func0<rx.observables.Cfor<T>> createReplaySupplier(Observable<T> observable, long j, TimeUnit timeUnit, rx.Cif cif) {
        return new Ccatch(observable, j, timeUnit, cif);
    }

    public static <T> Func0<rx.observables.Cfor<T>> createReplaySupplier(Observable<T> observable, int i, long j, TimeUnit timeUnit, rx.Cif cif) {
        return new Cconst(observable, i, j, timeUnit, cif);
    }
}
