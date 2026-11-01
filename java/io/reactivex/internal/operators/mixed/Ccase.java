package io.reactivex.internal.operators.mixed;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f26269do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f26270for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26271if;

    /* renamed from: io.reactivex.internal.operators.mixed.case$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: goto, reason: not valid java name */
        public static final C0301do f26272goto = new C0301do(null);

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f26273case;

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f26274do;

        /* renamed from: else, reason: not valid java name */
        public Subscription f26275else;

        /* renamed from: for, reason: not valid java name */
        public final boolean f26276for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends CompletableSource> f26277if;

        /* renamed from: new, reason: not valid java name */
        public final h4 f26278new = new h4();

        /* renamed from: try, reason: not valid java name */
        public final AtomicReference<C0301do> f26279try = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.mixed.case$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0301do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;
            public final Cdo<?> parent;

            public C0301do(Cdo<?> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.m29553if(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.m29552for(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f26274do = completableObserver;
            this.f26277if = function;
            this.f26276for = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26275else.cancel();
            m29551do();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29551do() {
            AtomicReference<C0301do> atomicReference = this.f26279try;
            C0301do c0301do = f26272goto;
            C0301do andSet = atomicReference.getAndSet(c0301do);
            if (andSet == null || andSet == c0301do) {
                return;
            }
            andSet.dispose();
        }

        /* renamed from: for, reason: not valid java name */
        public void m29552for(C0301do c0301do, Throwable th) {
            if (!this.f26279try.compareAndSet(c0301do, null) || !this.f26278new.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.f26276for) {
                if (this.f26273case) {
                    this.f26274do.onError(this.f26278new.terminate());
                    return;
                }
                return;
            }
            dispose();
            Throwable thTerminate = this.f26278new.terminate();
            if (thTerminate != io.reactivex.internal.util.Ccase.f27435do) {
                this.f26274do.onError(thTerminate);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m29553if(C0301do c0301do) {
            if (this.f26279try.compareAndSet(c0301do, null) && this.f26273case) {
                Throwable thTerminate = this.f26278new.terminate();
                if (thTerminate == null) {
                    this.f26274do.onComplete();
                } else {
                    this.f26274do.onError(thTerminate);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26279try.get() == f26272goto;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f26273case = true;
            if (this.f26279try.get() == null) {
                Throwable thTerminate = this.f26278new.terminate();
                if (thTerminate == null) {
                    this.f26274do.onComplete();
                } else {
                    this.f26274do.onError(thTerminate);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f26278new.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.f26276for) {
                onComplete();
                return;
            }
            m29551do();
            Throwable thTerminate = this.f26278new.terminate();
            if (thTerminate != io.reactivex.internal.util.Ccase.f27435do) {
                this.f26274do.onError(thTerminate);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            C0301do c0301do;
            try {
                CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.f26277if.apply(t), "The mapper returned a null CompletableSource");
                C0301do c0301do2 = new C0301do(this);
                do {
                    c0301do = this.f26279try.get();
                    if (c0301do == f26272goto) {
                        return;
                    }
                } while (!this.f26279try.compareAndSet(c0301do, c0301do2));
                if (c0301do != null) {
                    c0301do.dispose();
                }
                completableSource.subscribe(c0301do2);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26275else.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f26275else, subscription)) {
                this.f26275else = subscription;
                this.f26274do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Ccase(Cfor<T> cfor, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f26269do = cfor;
        this.f26271if = function;
        this.f26270for = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f26269do.m5(new Cdo(completableObserver, this.f26271if, this.f26270for));
    }
}
