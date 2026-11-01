package io.reactivex.internal.functions;

import android.support.v4.e72;
import android.support.v4.jp1;
import android.support.v4.t41;
import android.support.v4.z61;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import io.reactivex.functions.Function4;
import io.reactivex.functions.Function5;
import io.reactivex.functions.Function6;
import io.reactivex.functions.Function7;
import io.reactivex.functions.Function8;
import io.reactivex.functions.Function9;
import io.reactivex.functions.LongConsumer;
import io.reactivex.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.functions.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final Function<Object, Object> f25280do = new Cthrows();

    /* renamed from: if, reason: not valid java name */
    public static final Runnable f25284if = new Cimport();

    /* renamed from: for, reason: not valid java name */
    public static final Action f25282for = new Csuper();

    /* renamed from: new, reason: not valid java name */
    public static final Consumer<Object> f25285new = new Cthrow();

    /* renamed from: try, reason: not valid java name */
    public static final Consumer<Throwable> f25287try = new Cpublic();

    /* renamed from: case, reason: not valid java name */
    public static final Consumer<Throwable> f25277case = new Cinterface();

    /* renamed from: else, reason: not valid java name */
    public static final LongConsumer f25281else = new Cwhile();

    /* renamed from: goto, reason: not valid java name */
    public static final Predicate<Object> f25283goto = new Csynchronized();

    /* renamed from: this, reason: not valid java name */
    public static final Predicate<Object> f25286this = new Creturn();

    /* renamed from: break, reason: not valid java name */
    public static final Callable<Object> f25276break = new Cvolatile();

    /* renamed from: catch, reason: not valid java name */
    public static final Comparator<Object> f25278catch = new Cprivate();

    /* renamed from: class, reason: not valid java name */
    public static final Consumer<Subscription> f25279class = new Cfinally();

    /* renamed from: io.reactivex.internal.functions.do$abstract, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cabstract<T> implements Action {

        /* renamed from: do, reason: not valid java name */
        public final Consumer<? super t41<T>> f25288do;

        public Cabstract(Consumer<? super t41<T>> consumer) {
            this.f25288do = consumer;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f25288do.accept(t41.m7720do());
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$break, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cbreak<T> implements Callable<List<T>> {

        /* renamed from: do, reason: not valid java name */
        public final int f25289do;

        public Cbreak(int i) {
            this.f25289do = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<T> call() throws Exception {
            return new ArrayList(this.f25289do);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$case, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ccase<T1, T2, T3, T4, T5, T6, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function6<T1, T2, T3, T4, T5, T6, R> f25290do;

        public Ccase(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
            this.f25290do = function6;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f25290do.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$catch, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ccatch<T> implements Predicate<T> {

        /* renamed from: do, reason: not valid java name */
        public final BooleanSupplier f25291do;

        public Ccatch(BooleanSupplier booleanSupplier) {
            this.f25291do = booleanSupplier;
        }

        @Override // io.reactivex.functions.Predicate
        public boolean test(T t) throws Exception {
            return !this.f25291do.getAsBoolean();
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$class, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static class Cclass implements Consumer<Subscription> {

        /* renamed from: do, reason: not valid java name */
        public final int f25292do;

        public Cclass(int i) {
            this.f25292do = i;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Subscription subscription) throws Exception {
            subscription.request(this.f25292do);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$const, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cconst<T, U> implements Function<T, U> {

        /* renamed from: do, reason: not valid java name */
        public final Class<U> f25293do;

        public Cconst(Class<U> cls) {
            this.f25293do = cls;
        }

        @Override // io.reactivex.functions.Function
        public U apply(T t) throws Exception {
            return this.f25293do.cast(t);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$continue, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ccontinue<T> implements Consumer<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final Consumer<? super t41<T>> f25294do;

        public Ccontinue(Consumer<? super t41<T>> consumer) {
            this.f25294do = consumer;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Throwable th) throws Exception {
            this.f25294do.accept(t41.m7722if(th));
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$default, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdefault<T, U> implements Callable<U>, Function<T, U> {

        /* renamed from: do, reason: not valid java name */
        public final U f25295do;

        public Cdefault(U u) {
            this.f25295do = u;
        }

        @Override // io.reactivex.functions.Function
        public U apply(T t) throws Exception {
            return this.f25295do;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f25295do;
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$do, reason: invalid class name and collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0269do<T> implements Consumer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Action f25296do;

        public C0269do(Action action) {
            this.f25296do = action;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f25296do.run();
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$else, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Celse<T1, T2, T3, T4, T5, T6, T7, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function7<T1, T2, T3, T4, T5, T6, T7, R> f25297do;

        public Celse(Function7<T1, T2, T3, T4, T5, T6, T7, R> function7) {
            this.f25297do = function7;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f25297do.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$extends, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cextends<T> implements Function<List<T>, List<T>> {

        /* renamed from: do, reason: not valid java name */
        public final Comparator<? super T> f25298do;

        public Cextends(Comparator<? super T> comparator) {
            this.f25298do = comparator;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.f25298do);
            return list;
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$final, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cfinal<T, U> implements Predicate<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<U> f25299do;

        public Cfinal(Class<U> cls) {
            this.f25299do = cls;
        }

        @Override // io.reactivex.functions.Predicate
        public boolean test(T t) throws Exception {
            return this.f25299do.isInstance(t);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$finally, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cfinally implements Consumer<Subscription> {
        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Subscription subscription) throws Exception {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$for, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cfor<T1, T2, T3, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function3<T1, T2, T3, R> f25300do;

        public Cfor(Function3<T1, T2, T3, R> function3) {
            this.f25300do = function3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f25300do.apply(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$goto, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cgoto<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f25301do;

        public Cgoto(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
            this.f25301do = function8;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f25301do.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$if, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cif<T1, T2, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final BiFunction<? super T1, ? super T2, ? extends R> f25302do;

        public Cif(BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
            this.f25302do = biFunction;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f25302do.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$implements, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cimplements<K, V, T> implements BiConsumer<Map<K, V>, T> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super T, ? extends V> f25303do;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super T, ? extends K> f25304if;

        public Cimplements(Function<? super T, ? extends V> function, Function<? super T, ? extends K> function2) {
            this.f25303do = function;
            this.f25304if = function2;
        }

        @Override // io.reactivex.functions.BiConsumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Map<K, V> map, T t) throws Exception {
            map.put(this.f25304if.apply(t), this.f25303do.apply(t));
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$import, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cimport implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$instanceof, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cinstanceof<K, V, T> implements BiConsumer<Map<K, Collection<V>>, T> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super K, ? extends Collection<? super V>> f25305do;

        /* renamed from: for, reason: not valid java name */
        private final Function<? super T, ? extends K> f25306for;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super T, ? extends V> f25307if;

        public Cinstanceof(Function<? super K, ? extends Collection<? super V>> function, Function<? super T, ? extends V> function2, Function<? super T, ? extends K> function3) {
            this.f25305do = function;
            this.f25307if = function2;
            this.f25306for = function3;
        }

        @Override // io.reactivex.functions.BiConsumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Map<K, Collection<V>> map, T t) throws Exception {
            K kApply = this.f25306for.apply(t);
            Collection<? super V> collectionApply = (Collection) map.get(kApply);
            if (collectionApply == null) {
                collectionApply = this.f25305do.apply(kApply);
                map.put(kApply, collectionApply);
            }
            collectionApply.add(this.f25307if.apply(t));
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$interface, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cinterface implements Consumer<Throwable> {
        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Throwable th) {
            jp1.l(new z61(th));
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$native, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cnative<T> implements Predicate<T> {

        /* renamed from: do, reason: not valid java name */
        public final T f25308do;

        public Cnative(T t) {
            this.f25308do = t;
        }

        @Override // io.reactivex.functions.Predicate
        public boolean test(T t) throws Exception {
            return io.reactivex.internal.functions.Cif.m29469for(t, this.f25308do);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$new, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cnew<T1, T2, T3, T4, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function4<T1, T2, T3, T4, R> f25309do;

        public Cnew(Function4<T1, T2, T3, T4, R> function4) {
            this.f25309do = function4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f25309do.apply(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$package, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum Cpackage implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$private, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cprivate implements Comparator<Object> {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$protected, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cprotected<T> implements Function<T, e72<T>> {

        /* renamed from: do, reason: not valid java name */
        public final TimeUnit f25311do;

        /* renamed from: if, reason: not valid java name */
        public final io.reactivex.Ctry f25312if;

        public Cprotected(TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f25311do = timeUnit;
            this.f25312if = ctry;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public e72<T> apply(T t) throws Exception {
            return new e72<>(t, this.f25312if.mo29783for(this.f25311do), this.f25311do);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$public, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cpublic implements Consumer<Throwable> {
        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Throwable th) {
            jp1.l(th);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$return, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Creturn implements Predicate<Object> {
        @Override // io.reactivex.functions.Predicate
        public boolean test(Object obj) {
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$static, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cstatic implements Action {

        /* renamed from: do, reason: not valid java name */
        public final Future<?> f25313do;

        public Cstatic(Future<?> future) {
            this.f25313do = future;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f25313do.get();
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$strictfp, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cstrictfp<T> implements Consumer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Consumer<? super t41<T>> f25314do;

        public Cstrictfp(Consumer<? super t41<T>> consumer) {
            this.f25314do = consumer;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f25314do.accept(t41.m7721for(t));
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$super, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Csuper implements Action {
        @Override // io.reactivex.functions.Action
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$switch, reason: invalid class name */
    /* loaded from: classes3.dex */
    public enum Cswitch implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$synchronized, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Csynchronized implements Predicate<Object> {
        @Override // io.reactivex.functions.Predicate
        public boolean test(Object obj) {
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$this, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cthis<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        public final Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f25316do;

        public Cthis(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> function9) {
            this.f25316do = function9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f25316do.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$throw, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cthrow implements Consumer<Object> {
        @Override // io.reactivex.functions.Consumer
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$throws, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cthrows implements Function<Object, Object> {
        @Override // io.reactivex.functions.Function
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$transient, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ctransient<K, T> implements BiConsumer<Map<K, T>, T> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super T, ? extends K> f25317do;

        public Ctransient(Function<? super T, ? extends K> function) {
            this.f25317do = function;
        }

        @Override // io.reactivex.functions.BiConsumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Map<K, T> map, T t) throws Exception {
            map.put(this.f25317do.apply(t), t);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$try, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Ctry<T1, T2, T3, T4, T5, R> implements Function<Object[], R> {

        /* renamed from: do, reason: not valid java name */
        private final Function5<T1, T2, T3, T4, T5, R> f25318do;

        public Ctry(Function5<T1, T2, T3, T4, T5, R> function5) {
            this.f25318do = function5;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f25318do.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$volatile, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cvolatile implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* renamed from: io.reactivex.internal.functions.do$while, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cwhile implements LongConsumer {
        @Override // io.reactivex.functions.LongConsumer
        public void accept(long j) {
        }
    }

    private Cdo() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Function<Object[], R> m29413abstract(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
        io.reactivex.internal.functions.Cif.m29468else(function8, "f is null");
        return new Cgoto(function8);
    }

    /* renamed from: break, reason: not valid java name */
    public static Action m29414break(Future<?> future) {
        return new Cstatic(future);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Callable<List<T>> m29415case(int i) {
        return new Cbreak(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> Function<T, T> m29416catch() {
        return (Function<T, T>) f25280do;
    }

    /* renamed from: class, reason: not valid java name */
    public static <T, U> Predicate<T> m29417class(Class<U> cls) {
        return new Cfinal(cls);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Callable<T> m29418const(T t) {
        return new Cdefault(t);
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Function<Object[], R> m29419continue(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> function9) {
        io.reactivex.internal.functions.Cif.m29468else(function9, "f is null");
        return new Cthis(function9);
    }

    /* renamed from: default, reason: not valid java name */
    public static <T1, T2, T3, R> Function<Object[], R> m29420default(Function3<T1, T2, T3, R> function3) {
        io.reactivex.internal.functions.Cif.m29468else(function3, "f is null");
        return new Cfor(function3);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Consumer<T> m29421do(Action action) {
        return new C0269do(action);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Callable<Set<T>> m29422else() {
        return Cswitch.INSTANCE;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T1, T2, T3, T4, R> Function<Object[], R> m29423extends(Function4<T1, T2, T3, T4, R> function4) {
        io.reactivex.internal.functions.Cif.m29468else(function4, "f is null");
        return new Cnew(function4);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T, U> Function<T, U> m29424final(U u) {
        return new Cdefault(u);
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, R> Function<Object[], R> m29425finally(Function5<T1, T2, T3, T4, T5, R> function5) {
        io.reactivex.internal.functions.Cif.m29468else(function5, "f is null");
        return new Ctry(function5);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Predicate<T> m29426for() {
        return (Predicate<T>) f25283goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Consumer<T> m29427goto() {
        return (Consumer<T>) f25285new;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Predicate<T> m29428if() {
        return (Predicate<T>) f25286this;
    }

    /* renamed from: import, reason: not valid java name */
    public static <T> Action m29429import(Consumer<? super t41<T>> consumer) {
        return new Cabstract(consumer);
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T, K, V> BiConsumer<Map<K, Collection<V>>, T> m29430interface(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Function<? super K, ? extends Collection<? super V>> function3) {
        return new Cinstanceof(function3, function2, function);
    }

    /* renamed from: native, reason: not valid java name */
    public static <T> Consumer<Throwable> m29431native(Consumer<? super t41<T>> consumer) {
        return new Ccontinue(consumer);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Consumer<T> m29432new(int i) {
        return new Cclass(i);
    }

    /* renamed from: package, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, R> Function<Object[], R> m29433package(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
        io.reactivex.internal.functions.Cif.m29468else(function6, "f is null");
        return new Ccase(function6);
    }

    /* renamed from: private, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, R> Function<Object[], R> m29434private(Function7<T1, T2, T3, T4, T5, T6, T7, R> function7) {
        io.reactivex.internal.functions.Cif.m29468else(function7, "f is null");
        return new Celse(function7);
    }

    /* renamed from: public, reason: not valid java name */
    public static <T> Consumer<T> m29435public(Consumer<? super t41<T>> consumer) {
        return new Cstrictfp(consumer);
    }

    /* renamed from: return, reason: not valid java name */
    public static <T> Callable<T> m29436return() {
        return (Callable<T>) f25276break;
    }

    /* renamed from: static, reason: not valid java name */
    public static <T> Predicate<T> m29437static(BooleanSupplier booleanSupplier) {
        return new Ccatch(booleanSupplier);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T, K> BiConsumer<Map<K, T>, T> m29438strictfp(Function<? super T, ? extends K> function) {
        return new Ctransient(function);
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> Function<List<T>, List<T>> m29439super(Comparator<? super T> comparator) {
        return new Cextends(comparator);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T> Function<T, e72<T>> m29440switch(TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new Cprotected(timeUnit, ctry);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Predicate<T> m29441this(T t) {
        return new Cnative(t);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T> Comparator<T> m29442throw() {
        return Cpackage.INSTANCE;
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T1, T2, R> Function<Object[], R> m29443throws(BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        io.reactivex.internal.functions.Cif.m29468else(biFunction, "f is null");
        return new Cif(biFunction);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T, U> Function<T, U> m29444try(Class<U> cls) {
        return new Cconst(cls);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T, K, V> BiConsumer<Map<K, V>, T> m29445volatile(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return new Cimplements(function2, function);
    }

    /* renamed from: while, reason: not valid java name */
    public static <T> Comparator<T> m29446while() {
        return (Comparator<T>) f25278catch;
    }
}
