package com.uber.autodispose;

import android.support.v4.fy0;
import android.support.v4.i5;
import android.support.v4.jz1;
import android.support.v4.np;
import android.support.v4.ub1;
import com.uber.autodispose.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.Consumer;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: com.uber.autodispose.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.uber.autodispose.new$do, reason: invalid class name */
    public class Cdo<T> implements AutoDisposeConverter<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CompletableSource f20784do;

        /* renamed from: com.uber.autodispose.new$do$do, reason: invalid class name and collision with other inner class name */
        public class C0200do implements CompletableSubscribeProxy {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ np f20785do;

            public C0200do(np npVar) {
                this.f20785do = npVar;
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public Disposable subscribe() {
                return new Ccase(this.f20785do, Cdo.this.f20784do).subscribe();
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public <E extends CompletableObserver> E subscribeWith(E e) {
                return (E) new Ccase(this.f20785do, Cdo.this.f20784do).subscribeWith(e);
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public io.reactivex.observers.Cif<Void> test() {
                io.reactivex.observers.Cif<Void> cif = new io.reactivex.observers.Cif<>();
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public Disposable subscribe(Action action) {
                return new Ccase(this.f20785do, Cdo.this.f20784do).subscribe(action);
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public Disposable subscribe(Action action, Consumer<? super Throwable> consumer) {
                return new Ccase(this.f20785do, Cdo.this.f20784do).subscribe(action, consumer);
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public io.reactivex.observers.Cif<Void> test(boolean z) {
                io.reactivex.observers.Cif<Void> cif = new io.reactivex.observers.Cif<>();
                if (z) {
                    cif.cancel();
                }
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.CompletableSubscribeProxy
            public void subscribe(CompletableObserver completableObserver) {
                new Ccase(this.f20785do, Cdo.this.f20784do).subscribe(completableObserver);
            }
        }

        /* renamed from: com.uber.autodispose.new$do$for, reason: invalid class name */
        public class Cfor implements MaybeSubscribeProxy<T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ fy0 f20787do;

            public Cfor(fy0 fy0Var) {
                this.f20787do = fy0Var;
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public Disposable subscribe() {
                return new Cthis(this.f20787do, Cdo.this.f20784do).subscribe();
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public <E extends MaybeObserver<? super T>> E subscribeWith(E e) {
                return (E) new Cthis(this.f20787do, Cdo.this.f20784do).subscribeWith(e);
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public io.reactivex.observers.Cif<T> test() {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer) {
                return new Cthis(this.f20787do, Cdo.this.f20784do).subscribe(consumer);
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
                return new Cthis(this.f20787do, Cdo.this.f20784do).subscribe(consumer, consumer2);
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public io.reactivex.observers.Cif<T> test(boolean z) {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                if (z) {
                    cif.cancel();
                }
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
                return new Cthis(this.f20787do, Cdo.this.f20784do).subscribe(consumer, consumer2, action);
            }

            @Override // com.uber.autodispose.MaybeSubscribeProxy
            public void subscribe(MaybeObserver<? super T> maybeObserver) {
                new Cthis(this.f20787do, Cdo.this.f20784do).subscribe(maybeObserver);
            }
        }

        /* renamed from: com.uber.autodispose.new$do$if, reason: invalid class name */
        public class Cif implements FlowableSubscribeProxy<T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ io.reactivex.Cfor f20789do;

            public Cif(io.reactivex.Cfor cfor) {
                this.f20789do = cfor;
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public Disposable subscribe() {
                return new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe();
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public <E extends Subscriber<? super T>> E subscribeWith(E e) {
                return (E) new Cgoto(this.f20789do, Cdo.this.f20784do).subscribeWith(e);
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public io.reactivex.subscribers.Cdo<T> test() {
                io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>();
                subscribe(cdo);
                return cdo;
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer) {
                return new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe(consumer);
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
                return new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe(consumer, consumer2);
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public io.reactivex.subscribers.Cdo<T> test(long j) {
                io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>(j);
                subscribe(cdo);
                return cdo;
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
                return new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe(consumer, consumer2, action);
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public io.reactivex.subscribers.Cdo<T> test(long j, boolean z) {
                io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>(j);
                if (z) {
                    cdo.cancel();
                }
                subscribe(cdo);
                return cdo;
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Subscription> consumer3) {
                return new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe(consumer, consumer2, action, consumer3);
            }

            @Override // com.uber.autodispose.FlowableSubscribeProxy
            public void subscribe(Subscriber<? super T> subscriber) {
                new Cgoto(this.f20789do, Cdo.this.f20784do).subscribe(subscriber);
            }
        }

        /* renamed from: com.uber.autodispose.new$do$new, reason: invalid class name and collision with other inner class name */
        public class C0201new implements ObservableSubscribeProxy<T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ io.reactivex.Cnew f20791do;

            public C0201new(io.reactivex.Cnew cnew) {
                this.f20791do = cnew;
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public Disposable subscribe() {
                return new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe();
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public <E extends Observer<? super T>> E subscribeWith(E e) {
                return (E) new Cbreak(this.f20791do, Cdo.this.f20784do).subscribeWith(e);
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public io.reactivex.observers.Cif<T> test() {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer) {
                return new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe(consumer);
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
                return new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe(consumer, consumer2);
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public io.reactivex.observers.Cif<T> test(boolean z) {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                if (z) {
                    cif.dispose();
                }
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
                return new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe(consumer, consumer2, action);
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3) {
                return new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe(consumer, consumer2, action, consumer3);
            }

            @Override // com.uber.autodispose.ObservableSubscribeProxy
            public void subscribe(Observer<? super T> observer) {
                new Cbreak(this.f20791do, Cdo.this.f20784do).subscribe(observer);
            }
        }

        /* renamed from: com.uber.autodispose.new$do$try, reason: invalid class name */
        public class Ctry implements SingleSubscribeProxy<T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ jz1 f20793do;

            public Ctry(jz1 jz1Var) {
                this.f20793do = jz1Var;
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public Disposable subscribe() {
                return new Cclass(this.f20793do, Cdo.this.f20784do).subscribe();
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public <E extends SingleObserver<? super T>> E subscribeWith(E e) {
                return (E) new Cclass(this.f20793do, Cdo.this.f20784do).subscribeWith(e);
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public io.reactivex.observers.Cif<T> test() {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer) {
                return new Cclass(this.f20793do, Cdo.this.f20784do).subscribe(consumer);
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public Disposable subscribe(BiConsumer<? super T, ? super Throwable> biConsumer) {
                return new Cclass(this.f20793do, Cdo.this.f20784do).subscribe(biConsumer);
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public io.reactivex.observers.Cif<T> test(boolean z) {
                io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
                if (z) {
                    cif.dispose();
                }
                subscribe(cif);
                return cif;
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
                return new Cclass(this.f20793do, Cdo.this.f20784do).subscribe(consumer, consumer2);
            }

            @Override // com.uber.autodispose.SingleSubscribeProxy
            public void subscribe(SingleObserver<? super T> singleObserver) {
                new Cclass(this.f20793do, Cdo.this.f20784do).subscribe(singleObserver);
            }
        }

        public Cdo(CompletableSource completableSource) {
            this.f20784do = completableSource;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public static /* synthetic */ void m24633goto(ub1 ub1Var, CompletableSource completableSource, Subscriber[] subscriberArr) {
            new Ccatch(ub1Var, completableSource).subscribe(subscriberArr);
        }

        @Override // io.reactivex.parallel.ParallelFlowableConverter
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public ParallelFlowableSubscribeProxy<T> apply(final ub1<T> ub1Var) {
            if (!i5.f2624for) {
                return new Ccatch(ub1Var, this.f20784do);
            }
            final CompletableSource completableSource = this.f20784do;
            return new ParallelFlowableSubscribeProxy() { // from class: com.uber.autodispose.for
                @Override // com.uber.autodispose.ParallelFlowableSubscribeProxy
                public final void subscribe(Subscriber[] subscriberArr) {
                    Cnew.Cdo.m24633goto(ub1Var, completableSource, subscriberArr);
                }
            };
        }

        @Override // io.reactivex.SingleConverter
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public SingleSubscribeProxy<T> apply(jz1<T> jz1Var) {
            return !i5.f2624for ? new Cclass(jz1Var, this.f20784do) : new Ctry(jz1Var);
        }

        @Override // io.reactivex.FlowableConverter
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public FlowableSubscribeProxy<T> apply(io.reactivex.Cfor<T> cfor) {
            return !i5.f2624for ? new Cgoto(cfor, this.f20784do) : new Cif(cfor);
        }

        @Override // io.reactivex.CompletableConverter
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public CompletableSubscribeProxy apply(np npVar) {
            return !i5.f2624for ? new Ccase(npVar, this.f20784do) : new C0200do(npVar);
        }

        @Override // io.reactivex.MaybeConverter
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public MaybeSubscribeProxy<T> apply(fy0<T> fy0Var) {
            return !i5.f2624for ? new Cthis(fy0Var, this.f20784do) : new Cfor(fy0Var);
        }

        @Override // io.reactivex.ObservableConverter
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public ObservableSubscribeProxy<T> apply(io.reactivex.Cnew<T> cnew) {
            return !i5.f2624for ? new Cbreak(cnew, this.f20784do) : new C0201new(cnew);
        }
    }

    private Cnew() {
        throw new AssertionError("No instances");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> AutoDisposeConverter<T> m24630do(ScopeProvider scopeProvider) {
        Cconst.m24610do(scopeProvider, "provider == null");
        return m24631if(Cthrows.m24676if(scopeProvider));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> AutoDisposeConverter<T> m24631if(CompletableSource completableSource) {
        Cconst.m24610do(completableSource, "scope == null");
        return new Cdo(completableSource);
    }
}
