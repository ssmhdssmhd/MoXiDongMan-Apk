package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst extends io.reactivex.Ctry implements Disposable {

    /* renamed from: for, reason: not valid java name */
    private final io.reactivex.processors.Cfor<io.reactivex.Cfor<np>> f27291for;

    /* renamed from: if, reason: not valid java name */
    private final io.reactivex.Ctry f27292if;

    /* renamed from: new, reason: not valid java name */
    private Disposable f27293new;

    /* renamed from: try, reason: not valid java name */
    public static final Disposable f27290try = new Celse();

    /* renamed from: case, reason: not valid java name */
    public static final Disposable f27289case = io.reactivex.disposables.Cif.m29364do();

    /* renamed from: io.reactivex.internal.schedulers.const$case, reason: invalid class name */
    public static abstract class Ccase extends AtomicReference<Disposable> implements Disposable {
        public Ccase() {
            super(Cconst.f27290try);
        }

        public void call(Ctry.Cfor cfor, CompletableObserver completableObserver) {
            Disposable disposable;
            Disposable disposable2 = get();
            if (disposable2 != Cconst.f27289case && disposable2 == (disposable = Cconst.f27290try)) {
                Disposable disposableCallActual = callActual(cfor, completableObserver);
                if (compareAndSet(disposable, disposableCallActual)) {
                    return;
                }
                disposableCallActual.dispose();
            }
        }

        public abstract Disposable callActual(Ctry.Cfor cfor, CompletableObserver completableObserver);

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable;
            Disposable disposable2 = Cconst.f27289case;
            do {
                disposable = get();
                if (disposable == Cconst.f27289case) {
                    return;
                }
            } while (!compareAndSet(disposable, disposable2));
            if (disposable != Cconst.f27290try) {
                disposable.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$do, reason: invalid class name */
    public static final class Cdo implements Function<Ccase, np> {

        /* renamed from: do, reason: not valid java name */
        public final Ctry.Cfor f27294do;

        /* renamed from: io.reactivex.internal.schedulers.const$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0342do extends np {

            /* renamed from: do, reason: not valid java name */
            public final Ccase f27295do;

            public C0342do(Ccase ccase) {
                this.f27295do = ccase;
            }

            @Override // android.support.v4.np
            public void O(CompletableObserver completableObserver) {
                completableObserver.onSubscribe(this.f27295do);
                this.f27295do.call(Cdo.this.f27294do, completableObserver);
            }
        }

        public Cdo(Ctry.Cfor cfor) {
            this.f27294do = cfor;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public np apply(Ccase ccase) {
            return new C0342do(ccase);
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$else, reason: invalid class name */
    public static final class Celse implements Disposable {
        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        private final Runnable action;

        public Cfor(Runnable runnable) {
            this.action = runnable;
        }

        @Override // io.reactivex.internal.schedulers.Cconst.Ccase
        public Disposable callActual(Ctry.Cfor cfor, CompletableObserver completableObserver) {
            return cfor.mo29677if(new Cnew(this.action, completableObserver));
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$if, reason: invalid class name */
    public static class Cif extends Ccase {
        private final Runnable action;
        private final long delayTime;
        private final TimeUnit unit;

        public Cif(Runnable runnable, long j, TimeUnit timeUnit) {
            this.action = runnable;
            this.delayTime = j;
            this.unit = timeUnit;
        }

        @Override // io.reactivex.internal.schedulers.Cconst.Ccase
        public Disposable callActual(Ctry.Cfor cfor, CompletableObserver completableObserver) {
            return cfor.mo29362for(new Cnew(this.action, completableObserver), this.delayTime, this.unit);
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$new, reason: invalid class name */
    public static class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f27297do;

        /* renamed from: if, reason: not valid java name */
        public final Runnable f27298if;

        public Cnew(Runnable runnable, CompletableObserver completableObserver) {
            this.f27298if = runnable;
            this.f27297do = completableObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f27298if.run();
            } finally {
                this.f27297do.onComplete();
            }
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.const$try, reason: invalid class name */
    public static final class Ctry extends Ctry.Cfor {

        /* renamed from: do, reason: not valid java name */
        private final AtomicBoolean f27299do = new AtomicBoolean();

        /* renamed from: for, reason: not valid java name */
        private final Ctry.Cfor f27300for;

        /* renamed from: if, reason: not valid java name */
        private final io.reactivex.processors.Cfor<Ccase> f27301if;

        public Ctry(io.reactivex.processors.Cfor<Ccase> cfor, Ctry.Cfor cfor2) {
            this.f27301if = cfor;
            this.f27300for = cfor2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27299do.compareAndSet(false, true)) {
                this.f27301if.onComplete();
                this.f27300for.dispose();
            }
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            Cif cif = new Cif(runnable, j, timeUnit);
            this.f27301if.onNext(cif);
            return cif;
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if, reason: not valid java name */
        public Disposable mo29677if(@b41 Runnable runnable) {
            Cfor cfor = new Cfor(runnable);
            this.f27301if.onNext(cfor);
            return cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27299do.get();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cconst(Function<io.reactivex.Cfor<io.reactivex.Cfor<np>>, np> function, io.reactivex.Ctry ctry) {
        this.f27292if = ctry;
        io.reactivex.processors.Cfor cforP7 = io.reactivex.processors.Celse.R7().P7();
        this.f27291for = cforP7;
        try {
            this.f27293new = ((np) function.apply(cforP7)).subscribe();
        } catch (Throwable th) {
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f27293new.dispose();
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        Ctry.Cfor cforMo4229if = this.f27292if.mo4229if();
        io.reactivex.processors.Cfor<T> cforP7 = io.reactivex.processors.Celse.R7().P7();
        io.reactivex.Cfor<np> cforS2 = cforP7.S2(new Cdo(cforMo4229if));
        Ctry ctry = new Ctry(cforP7, cforMo4229if);
        this.f27291for.onNext(cforS2);
        return ctry;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f27293new.isDisposed();
    }
}
