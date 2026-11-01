package io.reactivex.internal.operators.mixed;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<T> f26297do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f26298for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26299if;

    /* renamed from: io.reactivex.internal.operators.mixed.final$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: goto, reason: not valid java name */
        public static final C0307do f26300goto = new C0307do(null);

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f26301case;

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f26302do;

        /* renamed from: else, reason: not valid java name */
        public Disposable f26303else;

        /* renamed from: for, reason: not valid java name */
        public final boolean f26304for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends CompletableSource> f26305if;

        /* renamed from: new, reason: not valid java name */
        public final h4 f26306new = new h4();

        /* renamed from: try, reason: not valid java name */
        public final AtomicReference<C0307do> f26307try = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.mixed.final$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0307do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;
            public final Cdo<?> parent;

            public C0307do(Cdo<?> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.m29556if(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.m29555for(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f26302do = completableObserver;
            this.f26305if = function;
            this.f26304for = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26303else.dispose();
            m29554do();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29554do() {
            AtomicReference<C0307do> atomicReference = this.f26307try;
            C0307do c0307do = f26300goto;
            C0307do andSet = atomicReference.getAndSet(c0307do);
            if (andSet == null || andSet == c0307do) {
                return;
            }
            andSet.dispose();
        }

        /* renamed from: for, reason: not valid java name */
        public void m29555for(C0307do c0307do, Throwable th) {
            if (!this.f26307try.compareAndSet(c0307do, null) || !this.f26306new.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.f26304for) {
                if (this.f26301case) {
                    this.f26302do.onError(this.f26306new.terminate());
                    return;
                }
                return;
            }
            dispose();
            Throwable thTerminate = this.f26306new.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.f26302do.onError(thTerminate);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m29556if(C0307do c0307do) {
            if (this.f26307try.compareAndSet(c0307do, null) && this.f26301case) {
                Throwable thTerminate = this.f26306new.terminate();
                if (thTerminate == null) {
                    this.f26302do.onComplete();
                } else {
                    this.f26302do.onError(thTerminate);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26307try.get() == f26300goto;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26301case = true;
            if (this.f26307try.get() == null) {
                Throwable thTerminate = this.f26306new.terminate();
                if (thTerminate == null) {
                    this.f26302do.onComplete();
                } else {
                    this.f26302do.onError(thTerminate);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f26306new.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.f26304for) {
                onComplete();
                return;
            }
            m29554do();
            Throwable thTerminate = this.f26306new.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.f26302do.onError(thTerminate);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            C0307do c0307do;
            try {
                CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.f26305if.apply(t), "The mapper returned a null CompletableSource");
                C0307do c0307do2 = new C0307do(this);
                do {
                    c0307do = this.f26307try.get();
                    if (c0307do == f26300goto) {
                        return;
                    }
                } while (!this.f26307try.compareAndSet(c0307do, c0307do2));
                if (c0307do != null) {
                    c0307do.dispose();
                }
                completableSource.subscribe(c0307do2);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26303else.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26303else, disposable)) {
                this.f26303else = disposable;
                this.f26302do.onSubscribe(this);
            }
        }
    }

    public Cfinal(Cnew<T> cnew, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f26297do = cnew;
        this.f26299if = function;
        this.f26298for = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        if (Cwhile.m29557do(this.f26297do, this.f26299if, completableObserver)) {
            return;
        }
        this.f26297do.subscribe(new Cdo(completableObserver, this.f26299if, this.f26298for));
    }
}
