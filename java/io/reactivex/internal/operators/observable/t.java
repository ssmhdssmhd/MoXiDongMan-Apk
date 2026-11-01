package io.reactivex.internal.operators.observable;

import android.support.v4.pq;
import io.reactivex.Emitter;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class t {

    /* renamed from: io.reactivex.internal.operators.observable.t$break, reason: invalid class name */
    public static final class Cbreak<T> implements Consumer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f26894do;

        public Cbreak(Observer<T> observer) {
            this.f26894do = observer;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f26894do.onNext(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$case, reason: invalid class name */
    public static final class Ccase<T, U> implements Function<T, ObservableSource<T>> {

        /* renamed from: do, reason: not valid java name */
        public final Function<? super T, ? extends ObservableSource<U>> f26895do;

        public Ccase(Function<? super T, ? extends ObservableSource<U>> function) {
            this.f26895do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSource<T> apply(T t) throws Exception {
            return new r1((ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26895do.apply(t), "The itemDelay returned a null ObservableSource"), 1L).map(io.reactivex.internal.functions.Cdo.m29424final(t)).defaultIfEmpty(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$catch, reason: invalid class name */
    public static final class Ccatch<T> implements Callable<pq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cnew<T> f26896do;

        public Ccatch(io.reactivex.Cnew<T> cnew) {
            this.f26896do = cnew;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public pq<T> call() {
            return this.f26896do.replay();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$class, reason: invalid class name */
    public static final class Cclass<T, R> implements Function<io.reactivex.Cnew<T>, ObservableSource<R>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super io.reactivex.Cnew<T>, ? extends ObservableSource<R>> f26897do;

        /* renamed from: if, reason: not valid java name */
        private final io.reactivex.Ctry f26898if;

        public Cclass(Function<? super io.reactivex.Cnew<T>, ? extends ObservableSource<R>> function, io.reactivex.Ctry ctry) {
            this.f26897do = function;
            this.f26898if = ctry;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSource<R> apply(io.reactivex.Cnew<T> cnew) throws Exception {
            return io.reactivex.Cnew.wrap((ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26897do.apply(cnew), "The selector returned a null ObservableSource")).observeOn(this.f26898if);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$const, reason: invalid class name */
    public static final class Cconst<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final BiConsumer<S, Emitter<T>> f26899do;

        public Cconst(BiConsumer<S, Emitter<T>> biConsumer) {
            this.f26899do = biConsumer;
        }

        @Override // io.reactivex.functions.BiFunction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S apply(S s, Emitter<T> emitter) throws Exception {
            this.f26899do.accept(s, emitter);
            return s;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$do, reason: invalid class name */
    public static final class Cdo<T> implements Callable<pq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cnew<T> f26900do;

        /* renamed from: if, reason: not valid java name */
        private final int f26901if;

        public Cdo(io.reactivex.Cnew<T> cnew, int i) {
            this.f26900do = cnew;
            this.f26901if = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public pq<T> call() {
            return this.f26900do.replay(this.f26901if);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$else, reason: invalid class name */
    public enum Celse implements Function<Object, Object> {
        INSTANCE;

        @Override // io.reactivex.functions.Function
        public Object apply(Object obj) throws Exception {
            return 0;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$final, reason: invalid class name */
    public static final class Cfinal<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final Consumer<Emitter<T>> f26903do;

        public Cfinal(Consumer<Emitter<T>> consumer) {
            this.f26903do = consumer;
        }

        @Override // io.reactivex.functions.BiFunction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S apply(S s, Emitter<T> emitter) throws Exception {
            this.f26903do.accept(emitter);
            return s;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$for, reason: invalid class name */
    public static final class Cfor<T, U> implements Function<T, ObservableSource<U>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super T, ? extends Iterable<? extends U>> f26904do;

        public Cfor(Function<? super T, ? extends Iterable<? extends U>> function) {
            this.f26904do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSource<U> apply(T t) throws Exception {
            return new m((Iterable) io.reactivex.internal.functions.Cif.m29468else(this.f26904do.apply(t), "The mapper returned a null Iterable"));
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$goto, reason: invalid class name */
    public static final class Cgoto<T> implements Action {

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f26905do;

        public Cgoto(Observer<T> observer) {
            this.f26905do = observer;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f26905do.onComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$if, reason: invalid class name */
    public static final class Cif<T> implements Callable<pq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cnew<T> f26906do;

        /* renamed from: for, reason: not valid java name */
        private final long f26907for;

        /* renamed from: if, reason: not valid java name */
        private final int f26908if;

        /* renamed from: new, reason: not valid java name */
        private final TimeUnit f26909new;

        /* renamed from: try, reason: not valid java name */
        private final io.reactivex.Ctry f26910try;

        public Cif(io.reactivex.Cnew<T> cnew, int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f26906do = cnew;
            this.f26908if = i;
            this.f26907for = j;
            this.f26909new = timeUnit;
            this.f26910try = ctry;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public pq<T> call() {
            return this.f26906do.replay(this.f26908if, this.f26907for, this.f26909new, this.f26910try);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$new, reason: invalid class name */
    public static final class Cnew<U, R, T> implements Function<U, R> {

        /* renamed from: do, reason: not valid java name */
        private final BiFunction<? super T, ? super U, ? extends R> f26911do;

        /* renamed from: if, reason: not valid java name */
        private final T f26912if;

        public Cnew(BiFunction<? super T, ? super U, ? extends R> biFunction, T t) {
            this.f26911do = biFunction;
            this.f26912if = t;
        }

        @Override // io.reactivex.functions.Function
        public R apply(U u) throws Exception {
            return this.f26911do.apply(this.f26912if, u);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$super, reason: invalid class name */
    public static final class Csuper<T> implements Callable<pq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cnew<T> f26913do;

        /* renamed from: for, reason: not valid java name */
        private final TimeUnit f26914for;

        /* renamed from: if, reason: not valid java name */
        private final long f26915if;

        /* renamed from: new, reason: not valid java name */
        private final io.reactivex.Ctry f26916new;

        public Csuper(io.reactivex.Cnew<T> cnew, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f26913do = cnew;
            this.f26915if = j;
            this.f26914for = timeUnit;
            this.f26916new = ctry;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public pq<T> call() {
            return this.f26913do.replay(this.f26915if, this.f26914for, this.f26916new);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$this, reason: invalid class name */
    public static final class Cthis<T> implements Consumer<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f26917do;

        public Cthis(Observer<T> observer) {
            this.f26917do = observer;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Throwable th) throws Exception {
            this.f26917do.onError(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$throw, reason: invalid class name */
    public static final class Cthrow<T, R> implements Function<List<ObservableSource<? extends T>>, ObservableSource<? extends R>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super Object[], ? extends R> f26918do;

        public Cthrow(Function<? super Object[], ? extends R> function) {
            this.f26918do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSource<? extends R> apply(List<ObservableSource<? extends T>> list) {
            return io.reactivex.Cnew.zipIterable(list, this.f26918do, false, io.reactivex.Cnew.bufferSize());
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.t$try, reason: invalid class name */
    public static final class Ctry<T, R, U> implements Function<T, ObservableSource<R>> {

        /* renamed from: do, reason: not valid java name */
        private final BiFunction<? super T, ? super U, ? extends R> f26919do;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super T, ? extends ObservableSource<? extends U>> f26920if;

        public Ctry(BiFunction<? super T, ? super U, ? extends R> biFunction, Function<? super T, ? extends ObservableSource<? extends U>> function) {
            this.f26919do = biFunction;
            this.f26920if = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSource<R> apply(T t) throws Exception {
            return new b0((ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26920if.apply(t), "The mapper returned a null ObservableSource"), new Cnew(this.f26919do, t));
        }
    }

    private t() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Callable<pq<T>> m29616break(io.reactivex.Cnew<T> cnew, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new Csuper(cnew, j, timeUnit, ctry);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Consumer<T> m29617case(Observer<T> observer) {
        return new Cbreak(observer);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T, R> Function<io.reactivex.Cnew<T>, ObservableSource<R>> m29618catch(Function<? super io.reactivex.Cnew<T>, ? extends ObservableSource<R>> function, io.reactivex.Ctry ctry) {
        return new Cclass(function, ctry);
    }

    /* renamed from: class, reason: not valid java name */
    public static <T, S> BiFunction<S, Emitter<T>, S> m29619class(BiConsumer<S, Emitter<T>> biConsumer) {
        return new Cconst(biConsumer);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T, S> BiFunction<S, Emitter<T>, S> m29620const(Consumer<Emitter<T>> consumer) {
        return new Cfinal(consumer);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, U> Function<T, ObservableSource<U>> m29621do(Function<? super T, ? extends Iterable<? extends U>> function) {
        return new Cfor(function);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Callable<pq<T>> m29622else(io.reactivex.Cnew<T> cnew) {
        return new Ccatch(cnew);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T, R> Function<List<ObservableSource<? extends T>>, ObservableSource<? extends R>> m29623final(Function<? super Object[], ? extends R> function) {
        return new Cthrow(function);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T, U> Function<T, ObservableSource<T>> m29624for(Function<? super T, ? extends ObservableSource<U>> function) {
        return new Ccase(function);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Callable<pq<T>> m29625goto(io.reactivex.Cnew<T> cnew, int i) {
        return new Cdo(cnew, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, U, R> Function<T, ObservableSource<R>> m29626if(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return new Ctry(biFunction, function);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Action m29627new(Observer<T> observer) {
        return new Cgoto(observer);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Callable<pq<T>> m29628this(io.reactivex.Cnew<T> cnew, int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new Cif(cnew, i, j, timeUnit, ctry);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Consumer<Throwable> m29629try(Observer<T> observer) {
        return new Cthis(observer);
    }
}
