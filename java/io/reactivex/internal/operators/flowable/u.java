package io.reactivex.internal.operators.flowable;

import android.support.v4.oq;
import io.reactivex.Emitter;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class u {

    /* renamed from: io.reactivex.internal.operators.flowable.u$break, reason: invalid class name */
    public static final class Cbreak<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final BiConsumer<S, Emitter<T>> f25964do;

        public Cbreak(BiConsumer<S, Emitter<T>> biConsumer) {
            this.f25964do = biConsumer;
        }

        @Override // io.reactivex.functions.BiFunction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S apply(S s, Emitter<T> emitter) throws Exception {
            this.f25964do.accept(s, emitter);
            return s;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$case, reason: invalid class name */
    public static final class Ccase<T, U> implements Function<T, Publisher<T>> {

        /* renamed from: do, reason: not valid java name */
        public final Function<? super T, ? extends Publisher<U>> f25965do;

        public Ccase(Function<? super T, ? extends Publisher<U>> function) {
            this.f25965do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Publisher<T> apply(T t) throws Exception {
            return new d2((Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25965do.apply(t), "The itemDelay returned a null Publisher"), 1L).S2(io.reactivex.internal.functions.Cdo.m29424final(t)).I0(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$catch, reason: invalid class name */
    public static final class Ccatch<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final Consumer<Emitter<T>> f25966do;

        public Ccatch(Consumer<Emitter<T>> consumer) {
            this.f25966do = consumer;
        }

        @Override // io.reactivex.functions.BiFunction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S apply(S s, Emitter<T> emitter) throws Exception {
            this.f25966do.accept(emitter);
            return s;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$class, reason: invalid class name */
    public static final class Cclass<T> implements Action {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<T> f25967do;

        public Cclass(Subscriber<T> subscriber) {
            this.f25967do = subscriber;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f25967do.onComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$const, reason: invalid class name */
    public static final class Cconst<T> implements Consumer<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<T> f25968do;

        public Cconst(Subscriber<T> subscriber) {
            this.f25968do = subscriber;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Throwable th) throws Exception {
            this.f25968do.onError(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$do, reason: invalid class name */
    public static final class Cdo<T> implements Callable<oq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cfor<T> f25969do;

        /* renamed from: if, reason: not valid java name */
        private final int f25970if;

        public Cdo(io.reactivex.Cfor<T> cfor, int i) {
            this.f25969do = cfor;
            this.f25970if = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public oq<T> call() {
            return this.f25969do.g4(this.f25970if);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$else, reason: invalid class name */
    public static final class Celse<T> implements Callable<oq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cfor<T> f25971do;

        public Celse(io.reactivex.Cfor<T> cfor) {
            this.f25971do = cfor;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public oq<T> call() {
            return this.f25971do.f4();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$final, reason: invalid class name */
    public static final class Cfinal<T> implements Consumer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<T> f25972do;

        public Cfinal(Subscriber<T> subscriber) {
            this.f25972do = subscriber;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f25972do.onNext(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$for, reason: invalid class name */
    public static final class Cfor<T, U> implements Function<T, Publisher<U>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super T, ? extends Iterable<? extends U>> f25973do;

        public Cfor(Function<? super T, ? extends Iterable<? extends U>> function) {
            this.f25973do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Publisher<U> apply(T t) throws Exception {
            return new n((Iterable) io.reactivex.internal.functions.Cif.m29468else(this.f25973do.apply(t), "The mapper returned a null Iterable"));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$goto, reason: invalid class name */
    public static final class Cgoto<T, R> implements Function<io.reactivex.Cfor<T>, Publisher<R>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super io.reactivex.Cfor<T>, ? extends Publisher<R>> f25974do;

        /* renamed from: if, reason: not valid java name */
        private final io.reactivex.Ctry f25975if;

        public Cgoto(Function<? super io.reactivex.Cfor<T>, ? extends Publisher<R>> function, io.reactivex.Ctry ctry) {
            this.f25974do = function;
            this.f25975if = ctry;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Publisher<R> apply(io.reactivex.Cfor<T> cfor) throws Exception {
            return io.reactivex.Cfor.g2((Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25974do.apply(cfor), "The selector returned a null Publisher")).t3(this.f25975if);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$if, reason: invalid class name */
    public static final class Cif<T> implements Callable<oq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cfor<T> f25976do;

        /* renamed from: for, reason: not valid java name */
        private final long f25977for;

        /* renamed from: if, reason: not valid java name */
        private final int f25978if;

        /* renamed from: new, reason: not valid java name */
        private final TimeUnit f25979new;

        /* renamed from: try, reason: not valid java name */
        private final io.reactivex.Ctry f25980try;

        public Cif(io.reactivex.Cfor<T> cfor, int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f25976do = cfor;
            this.f25978if = i;
            this.f25977for = j;
            this.f25979new = timeUnit;
            this.f25980try = ctry;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public oq<T> call() {
            return this.f25976do.i4(this.f25978if, this.f25977for, this.f25979new, this.f25980try);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$new, reason: invalid class name */
    public static final class Cnew<U, R, T> implements Function<U, R> {

        /* renamed from: do, reason: not valid java name */
        private final BiFunction<? super T, ? super U, ? extends R> f25981do;

        /* renamed from: if, reason: not valid java name */
        private final T f25982if;

        public Cnew(BiFunction<? super T, ? super U, ? extends R> biFunction, T t) {
            this.f25981do = biFunction;
            this.f25982if = t;
        }

        @Override // io.reactivex.functions.Function
        public R apply(U u) throws Exception {
            return this.f25981do.apply(this.f25982if, u);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$super, reason: invalid class name */
    public static final class Csuper<T> implements Callable<oq<T>> {

        /* renamed from: do, reason: not valid java name */
        private final io.reactivex.Cfor<T> f25983do;

        /* renamed from: for, reason: not valid java name */
        private final TimeUnit f25984for;

        /* renamed from: if, reason: not valid java name */
        private final long f25985if;

        /* renamed from: new, reason: not valid java name */
        private final io.reactivex.Ctry f25986new;

        public Csuper(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f25983do = cfor;
            this.f25985if = j;
            this.f25984for = timeUnit;
            this.f25986new = ctry;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public oq<T> call() {
            return this.f25983do.l4(this.f25985if, this.f25984for, this.f25986new);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$this, reason: invalid class name */
    public enum Cthis implements Consumer<Subscription> {
        INSTANCE;

        @Override // io.reactivex.functions.Consumer
        public void accept(Subscription subscription) throws Exception {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$throw, reason: invalid class name */
    public static final class Cthrow<T, R> implements Function<List<Publisher<? extends T>>, Publisher<? extends R>> {

        /* renamed from: do, reason: not valid java name */
        private final Function<? super Object[], ? extends R> f25988do;

        public Cthrow(Function<? super Object[], ? extends R> function) {
            this.f25988do = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Publisher<? extends R> apply(List<Publisher<? extends T>> list) {
            return io.reactivex.Cfor.G7(list, this.f25988do, false, io.reactivex.Cfor.g());
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u$try, reason: invalid class name */
    public static final class Ctry<T, R, U> implements Function<T, Publisher<R>> {

        /* renamed from: do, reason: not valid java name */
        private final BiFunction<? super T, ? super U, ? extends R> f25989do;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super T, ? extends Publisher<? extends U>> f25990if;

        public Ctry(BiFunction<? super T, ? super U, ? extends R> biFunction, Function<? super T, ? extends Publisher<? extends U>> function) {
            this.f25989do = biFunction;
            this.f25990if = function;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Publisher<R> apply(T t) throws Exception {
            return new e0((Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25990if.apply(t), "The mapper returned a null Publisher"), new Cnew(this.f25989do, t));
        }
    }

    private u() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: break, reason: not valid java name */
    public static <T, S> BiFunction<S, Emitter<T>, S> m29519break(Consumer<Emitter<T>> consumer) {
        return new Ccatch(consumer);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Callable<oq<T>> m29520case(io.reactivex.Cfor<T> cfor, int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new Cif(cfor, i, j, timeUnit, ctry);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> Action m29521catch(Subscriber<T> subscriber) {
        return new Cclass(subscriber);
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> Consumer<Throwable> m29522class(Subscriber<T> subscriber) {
        return new Cconst(subscriber);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Consumer<T> m29523const(Subscriber<T> subscriber) {
        return new Cfinal(subscriber);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, U> Function<T, Publisher<U>> m29524do(Function<? super T, ? extends Iterable<? extends U>> function) {
        return new Cfor(function);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Callable<oq<T>> m29525else(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new Csuper(cfor, j, timeUnit, ctry);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T, R> Function<List<Publisher<? extends T>>, Publisher<? extends R>> m29526final(Function<? super Object[], ? extends R> function) {
        return new Cthrow(function);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T, U> Function<T, Publisher<T>> m29527for(Function<? super T, ? extends Publisher<U>> function) {
        return new Ccase(function);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T, R> Function<io.reactivex.Cfor<T>, Publisher<R>> m29528goto(Function<? super io.reactivex.Cfor<T>, ? extends Publisher<R>> function, io.reactivex.Ctry ctry) {
        return new Cgoto(function, ctry);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, U, R> Function<T, Publisher<R>> m29529if(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return new Ctry(biFunction, function);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Callable<oq<T>> m29530new(io.reactivex.Cfor<T> cfor) {
        return new Celse(cfor);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T, S> BiFunction<S, Emitter<T>, S> m29531this(BiConsumer<S, Emitter<T>> biConsumer) {
        return new Cbreak(biConsumer);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Callable<oq<T>> m29532try(io.reactivex.Cfor<T> cfor, int i) {
        return new Cdo(cfor, i);
    }
}
