package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ib2;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.mn0;
import android.support.v4.nn0;
import android.support.v4.o8;
import android.support.v4.y80;
import com.google.common.base.Csuper;
import com.google.common.base.Function;
import com.google.common.collect.v0;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Cfinal;
import com.google.common.util.concurrent.Cinstanceof;
import com.google.common.util.concurrent.Cvolatile;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.private, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cprivate extends Ccontinue {

    /* renamed from: com.google.common.util.concurrent.private$case, reason: invalid class name */
    public static final class Ccase<T> extends AbstractFuture<T> {

        /* renamed from: this, reason: not valid java name */
        private Celse<T> f15870this;

        public /* synthetic */ Ccase(Celse celse, Cdo cdo) {
            this(celse);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            Celse<T> celse = this.f15870this;
            if (!super.cancel(z)) {
                return false;
            }
            celse.m18294else(z);
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: default */
        public String mo17977default() {
            Celse<T> celse = this.f15870this;
            if (celse == null) {
                return null;
            }
            return "inputCount=[" + ((Celse) celse).f15875new.length + "], remaining=[" + ((Celse) celse).f15873for.get() + "]";
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: final */
        public void mo17978final() {
            this.f15870this = null;
        }

        private Ccase(Celse<T> celse) {
            this.f15870this = celse;
        }
    }

    /* renamed from: com.google.common.util.concurrent.private$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Future f15871do;

        public Cdo(Future future) {
            this.f15871do = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15871do.cancel(false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.private$else, reason: invalid class name */
    public static final class Celse<T> {

        /* renamed from: do, reason: not valid java name */
        private boolean f15872do;

        /* renamed from: for, reason: not valid java name */
        private final AtomicInteger f15873for;

        /* renamed from: if, reason: not valid java name */
        private boolean f15874if;

        /* renamed from: new, reason: not valid java name */
        private final ListenableFuture<? extends T>[] f15875new;

        /* renamed from: try, reason: not valid java name */
        private volatile int f15876try;

        public /* synthetic */ Celse(ListenableFuture[] listenableFutureArr, Cdo cdo) {
            this(listenableFutureArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public void m18292case(v0<AbstractFuture<T>> v0Var, int i) {
            ListenableFuture<? extends T>[] listenableFutureArr = this.f15875new;
            ListenableFuture<? extends T> listenableFuture = listenableFutureArr[i];
            listenableFutureArr[i] = null;
            for (int i2 = this.f15876try; i2 < v0Var.size(); i2++) {
                if (v0Var.get(i2).mo17975abstract(listenableFuture)) {
                    m18298try();
                    this.f15876try = i2 + 1;
                    return;
                }
            }
            this.f15876try = v0Var.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public void m18294else(boolean z) {
            this.f15872do = true;
            if (!z) {
                this.f15874if = false;
            }
            m18298try();
        }

        /* renamed from: try, reason: not valid java name */
        private void m18298try() {
            if (this.f15873for.decrementAndGet() == 0 && this.f15872do) {
                for (ListenableFuture<? extends T> listenableFuture : this.f15875new) {
                    if (listenableFuture != null) {
                        listenableFuture.cancel(this.f15874if);
                    }
                }
            }
        }

        private Celse(ListenableFuture<? extends T>[] listenableFutureArr) {
            this.f15872do = false;
            this.f15874if = true;
            this.f15876try = 0;
            this.f15875new = listenableFutureArr;
            this.f15873for = new AtomicInteger(listenableFutureArr.length);
        }
    }

    /* renamed from: com.google.common.util.concurrent.private$for, reason: invalid class name */
    public static class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Celse f15877do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f15878for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ v0 f15879if;

        public Cfor(Celse celse, v0 v0Var, int i) {
            this.f15877do = celse;
            this.f15879if = v0Var;
            this.f15878for = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15877do.m18292case(this.f15879if, this.f15878for);
        }
    }

    /* renamed from: com.google.common.util.concurrent.private$goto, reason: invalid class name */
    public static final class Cgoto<V> extends AbstractFuture.Cthis<V> implements Runnable {

        /* renamed from: this, reason: not valid java name */
        private ListenableFuture<V> f15880this;

        public Cgoto(ListenableFuture<V> listenableFuture) {
            this.f15880this = listenableFuture;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: default */
        public String mo17977default() {
            ListenableFuture<V> listenableFuture = this.f15880this;
            if (listenableFuture == null) {
                return null;
            }
            return "delegate=[" + listenableFuture + "]";
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        /* renamed from: final */
        public void mo17978final() {
            this.f15880this = null;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<V> listenableFuture = this.f15880this;
            if (listenableFuture != null) {
                mo17975abstract(listenableFuture);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [O] */
    /* renamed from: com.google.common.util.concurrent.private$if, reason: invalid class name */
    public static class Cif<O> implements Future<O> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Future f15881do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function f15882if;

        public Cif(Future future, Function function) {
            this.f15881do = future;
            this.f15882if = function;
        }

        /* renamed from: do, reason: not valid java name */
        private O m18299do(I i) throws ExecutionException {
            try {
                return (O) this.f15882if.apply(i);
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return this.f15881do.cancel(z);
        }

        @Override // java.util.concurrent.Future
        public O get() throws ExecutionException, InterruptedException {
            return m18299do(this.f15881do.get());
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f15881do.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f15881do.isDone();
        }

        @Override // java.util.concurrent.Future
        public O get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return m18299do(this.f15881do.get(j, timeUnit));
        }
    }

    /* renamed from: com.google.common.util.concurrent.private$new, reason: invalid class name */
    public static final class Cnew<V> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Future<V> f15883do;

        /* renamed from: if, reason: not valid java name */
        public final FutureCallback<? super V> f15884if;

        public Cnew(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.f15883do = future;
            this.f15884if = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable thM5278do;
            Future<V> future = this.f15883do;
            if ((future instanceof mn0) && (thM5278do = nn0.m5278do((mn0) future)) != null) {
                this.f15884if.onFailure(thM5278do);
                return;
            }
            try {
                this.f15884if.onSuccess(Cprivate.m18275goto(this.f15883do));
            } catch (Error e) {
                e = e;
                this.f15884if.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.f15884if.onFailure(e);
            } catch (ExecutionException e3) {
                this.f15884if.onFailure(e3.getCause());
            }
        }

        public String toString() {
            return Csuper.m15184for(this).m15202throw(this.f15884if).toString();
        }
    }

    @lf
    @ki0
    @o8
    /* renamed from: com.google.common.util.concurrent.private$try, reason: invalid class name */
    public static final class Ctry<V> {

        /* renamed from: do, reason: not valid java name */
        private final boolean f15885do;

        /* renamed from: if, reason: not valid java name */
        private final v0<ListenableFuture<? extends V>> f15886if;

        /* renamed from: com.google.common.util.concurrent.private$try$do, reason: invalid class name */
        public class Cdo implements Callable<Void> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Runnable f15887do;

            public Cdo(Runnable runnable) {
                this.f15887do = runnable;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Void call() throws Exception {
                this.f15887do.run();
                return null;
            }
        }

        public /* synthetic */ Ctry(boolean z, v0 v0Var, Cdo cdo) {
            this(z, v0Var);
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public <C> ListenableFuture<C> m18300do(Callable<C> callable, Executor executor) {
            return new Csuper(this.f15886if, this.f15885do, executor, callable);
        }

        /* renamed from: for, reason: not valid java name */
        public ListenableFuture<?> m18301for(Runnable runnable, Executor executor) {
            return m18300do(new Cdo(runnable), executor);
        }

        /* renamed from: if, reason: not valid java name */
        public <C> ListenableFuture<C> m18302if(AsyncCallable<C> asyncCallable, Executor executor) {
            return new Csuper(this.f15886if, this.f15885do, executor, asyncCallable);
        }

        private Ctry(boolean z, v0<ListenableFuture<? extends V>> v0Var) {
            this.f15885do = z;
            this.f15886if = v0Var;
        }
    }

    private Cprivate() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <V> ListenableFuture<V> m18263break() {
        return new Cvolatile.Cdo();
    }

    @lf
    @li0
    @o8
    /* renamed from: case, reason: not valid java name */
    public static <V, X extends Exception> V m18264case(Future<V> future, Class<X> cls) throws Exception {
        return (V) FuturesGetChecked.m18026try(future, cls);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <V> ListenableFuture<V> m18265catch(Throwable th) {
        af1.m205continue(th);
        return new Cvolatile.Cif(th);
    }

    /* renamed from: class, reason: not valid java name */
    public static <V> ListenableFuture<V> m18266class(@b51 V v) {
        return v == null ? (ListenableFuture<V>) Cvolatile.f15940if : new Cvolatile(v);
    }

    @o8
    /* renamed from: const, reason: not valid java name */
    public static <T> v0<ListenableFuture<T>> m18267const(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        Collection collectionCopyOf = iterable instanceof Collection ? (Collection) iterable : v0.copyOf(iterable);
        ListenableFuture[] listenableFutureArr = (ListenableFuture[]) collectionCopyOf.toArray(new ListenableFuture[collectionCopyOf.size()]);
        Cdo cdo = null;
        Celse celse = new Celse(listenableFutureArr, cdo);
        v0.Cdo cdoBuilder = v0.builder();
        for (int i = 0; i < listenableFutureArr.length; i++) {
            cdoBuilder.mo15635do(new Ccase(celse, cdo));
        }
        v0<ListenableFuture<T>> v0VarMo15642try = cdoBuilder.mo15642try();
        for (int i2 = 0; i2 < listenableFutureArr.length; i2++) {
            listenableFutureArr[i2].addListener(new Cfor(celse, v0VarMo15642try, i2), Cimplements.m18221for());
        }
        return v0VarMo15642try;
    }

    @SafeVarargs
    @o8
    /* renamed from: default, reason: not valid java name */
    public static <V> Ctry<V> m18268default(ListenableFuture<? extends V>... listenableFutureArr) {
        return new Ctry<>(false, v0.copyOf(listenableFutureArr), null);
    }

    /* renamed from: do, reason: not valid java name */
    public static <V> void m18269do(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback, Executor executor) {
        af1.m205continue(futureCallback);
        listenableFuture.addListener(new Cnew(listenableFuture, futureCallback), executor);
    }

    @lf
    @li0
    @o8
    /* renamed from: else, reason: not valid java name */
    public static <V, X extends Exception> V m18270else(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        return (V) FuturesGetChecked.m18015case(future, cls, j, timeUnit);
    }

    @o8
    /* renamed from: extends, reason: not valid java name */
    public static <V> Ctry<V> m18271extends(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new Ctry<>(true, v0.copyOf(iterable), null);
    }

    @li0
    @o8
    /* renamed from: final, reason: not valid java name */
    public static <I, O> Future<O> m18272final(Future<I> future, Function<? super I, ? extends O> function) {
        af1.m205continue(future);
        af1.m205continue(function);
        return new Cif(future, function);
    }

    @SafeVarargs
    @o8
    /* renamed from: finally, reason: not valid java name */
    public static <V> Ctry<V> m18273finally(ListenableFuture<? extends V>... listenableFutureArr) {
        return new Ctry<>(true, v0.copyOf(listenableFutureArr), null);
    }

    @SafeVarargs
    @o8
    /* renamed from: for, reason: not valid java name */
    public static <V> ListenableFuture<List<V>> m18274for(ListenableFuture<? extends V>... listenableFutureArr) {
        return new Cfinal.Cdo(v0.copyOf(listenableFutureArr), true);
    }

    @lf
    /* renamed from: goto, reason: not valid java name */
    public static <V> V m18275goto(Future<V> future) throws ExecutionException {
        af1.K(future.isDone(), "Future was expected to be done: %s", future);
        return (V) m.m18259new(future);
    }

    @o8
    /* renamed from: if, reason: not valid java name */
    public static <V> ListenableFuture<List<V>> m18276if(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new Cfinal.Cdo(v0.copyOf(iterable), true);
    }

    @o8
    /* renamed from: import, reason: not valid java name */
    public static <O> ListenableFuture<O> m18277import(Callable<O> callable, Executor executor) {
        k kVarC = k.c(callable);
        executor.execute(kVarC);
        return kVarC;
    }

    @o8
    /* renamed from: native, reason: not valid java name */
    public static <O> ListenableFuture<O> m18278native(AsyncCallable<O> asyncCallable, Executor executor) {
        k kVarA = k.a(asyncCallable);
        executor.execute(kVarA);
        return kVarA;
    }

    @Cinstanceof.Cdo("AVAILABLE but requires exceptionType to be Throwable.class")
    @o8
    /* renamed from: new, reason: not valid java name */
    public static <V, X extends Throwable> ListenableFuture<V> m18279new(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        return com.google.common.util.concurrent.Cdo.a(listenableFuture, cls, function, executor);
    }

    @li0
    @o8
    /* renamed from: package, reason: not valid java name */
    public static <V> ListenableFuture<V> m18280package(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return listenableFuture.isDone() ? listenableFuture : j.d(listenableFuture, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: private, reason: not valid java name */
    private static void m18281private(Throwable th) {
        if (!(th instanceof Error)) {
            throw new ib2(th);
        }
        throw new y80((Error) th);
    }

    @o8
    /* renamed from: public, reason: not valid java name */
    public static <V> ListenableFuture<List<V>> m18282public(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new Cfinal.Cdo(v0.copyOf(iterable), false);
    }

    @SafeVarargs
    @o8
    /* renamed from: return, reason: not valid java name */
    public static <V> ListenableFuture<List<V>> m18283return(ListenableFuture<? extends V>... listenableFutureArr) {
        return new Cfinal.Cdo(v0.copyOf(listenableFutureArr), false);
    }

    @o8
    /* renamed from: static, reason: not valid java name */
    public static <I, O> ListenableFuture<O> m18284static(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        return com.google.common.util.concurrent.Celse.a(listenableFuture, function, executor);
    }

    @o8
    /* renamed from: super, reason: not valid java name */
    public static <V> ListenableFuture<V> m18285super(ListenableFuture<V> listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        Cgoto cgoto = new Cgoto(listenableFuture);
        listenableFuture.addListener(cgoto, Cimplements.m18221for());
        return cgoto;
    }

    @o8
    /* renamed from: switch, reason: not valid java name */
    public static <I, O> ListenableFuture<O> m18286switch(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        return com.google.common.util.concurrent.Celse.b(listenableFuture, asyncFunction, executor);
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    public static <V> V m18287this(Future<V> future) {
        af1.m205continue(future);
        try {
            return (V) m.m18259new(future);
        } catch (ExecutionException e) {
            m18281private(e.getCause());
            throw new AssertionError();
        }
    }

    @li0
    @o8
    /* renamed from: throw, reason: not valid java name */
    public static <O> ListenableFuture<O> m18288throw(AsyncCallable<O> asyncCallable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        k kVarA = k.a(asyncCallable);
        kVarA.addListener(new Cdo(scheduledExecutorService.schedule(kVarA, j, timeUnit)), Cimplements.m18221for());
        return kVarA;
    }

    @o8
    /* renamed from: throws, reason: not valid java name */
    public static <V> Ctry<V> m18289throws(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new Ctry<>(false, v0.copyOf(iterable), null);
    }

    @Cinstanceof.Cdo("AVAILABLE but requires exceptionType to be Throwable.class")
    @o8
    /* renamed from: try, reason: not valid java name */
    public static <V, X extends Throwable> ListenableFuture<V> m18290try(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        return com.google.common.util.concurrent.Cdo.b(listenableFuture, cls, asyncFunction, executor);
    }

    @o8
    /* renamed from: while, reason: not valid java name */
    public static ListenableFuture<Void> m18291while(Runnable runnable, Executor executor) {
        k kVarB = k.b(runnable, null);
        executor.execute(kVarB);
        return kVarB;
    }
}
