package rx;

import android.support.v4.b02;
import android.support.v4.d32;
import android.support.v4.dq;
import android.support.v4.ds1;
import android.support.v4.pr1;
import android.support.v4.s80;
import android.support.v4.sr1;
import android.support.v4.v3;
import android.support.v4.ww1;
import android.support.v4.x01;
import android.support.v4.y22;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Cif;
import rx.Observable;
import rx.Single;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.observers.AssertableSubscriber;

/* loaded from: classes4.dex */
public class Completable {

    /* renamed from: do, reason: not valid java name */
    private final OnSubscribe f34179do;

    /* renamed from: if, reason: not valid java name */
    public static final Completable f34178if = new Completable(new Ccatch(), false);

    /* renamed from: for, reason: not valid java name */
    public static final Completable f34177for = new Completable(new Cstatic(), false);

    public interface OnSubscribe extends Action1<CompletableSubscriber> {
    }

    public interface Operator extends Func1<CompletableSubscriber, CompletableSubscriber> {
    }

    public interface Transformer extends Func1<Completable, Completable> {
    }

    /* renamed from: rx.Completable$abstract, reason: invalid class name */
    public static class Cabstract implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterable f34180do;

        /* renamed from: rx.Completable$abstract$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ AtomicBoolean f34181do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34182for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ dq f34183if;

            public Cdo(AtomicBoolean atomicBoolean, dq dqVar, CompletableSubscriber completableSubscriber) {
                this.f34181do = atomicBoolean;
                this.f34183if = dqVar;
                this.f34182for = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                if (this.f34181do.compareAndSet(false, true)) {
                    this.f34183if.unsubscribe();
                    this.f34182for.onCompleted();
                }
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                if (!this.f34181do.compareAndSet(false, true)) {
                    rx.plugins.Cif.m39151protected(th);
                } else {
                    this.f34183if.unsubscribe();
                    this.f34182for.onError(th);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34183if.m1488do(subscription);
            }
        }

        public Cabstract(Iterable iterable) {
            this.f34180do = iterable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            dq dqVar = new dq();
            completableSubscriber.onSubscribe(dqVar);
            try {
                Iterator it = this.f34180do.iterator();
                if (it == null) {
                    completableSubscriber.onError(new NullPointerException("The iterator returned is null"));
                    return;
                }
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                Cdo cdo = new Cdo(atomicBoolean, dqVar, completableSubscriber);
                boolean z = true;
                while (!atomicBoolean.get() && !dqVar.isUnsubscribed()) {
                    try {
                        if (!it.hasNext()) {
                            if (z) {
                                completableSubscriber.onCompleted();
                                return;
                            }
                            return;
                        }
                        if (atomicBoolean.get() || dqVar.isUnsubscribed()) {
                            return;
                        }
                        try {
                            Completable completable = (Completable) it.next();
                            if (completable == null) {
                                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                                if (!atomicBoolean.compareAndSet(false, true)) {
                                    rx.plugins.Cif.m39151protected(nullPointerException);
                                    return;
                                } else {
                                    dqVar.unsubscribe();
                                    completableSubscriber.onError(nullPointerException);
                                    return;
                                }
                            }
                            if (atomicBoolean.get() || dqVar.isUnsubscribed()) {
                                return;
                            }
                            completable.V(cdo);
                            z = false;
                        } catch (Throwable th) {
                            if (!atomicBoolean.compareAndSet(false, true)) {
                                rx.plugins.Cif.m39151protected(th);
                                return;
                            } else {
                                dqVar.unsubscribe();
                                completableSubscriber.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        if (!atomicBoolean.compareAndSet(false, true)) {
                            rx.plugins.Cif.m39151protected(th2);
                            return;
                        } else {
                            dqVar.unsubscribe();
                            completableSubscriber.onError(th2);
                            return;
                        }
                    }
                }
            } catch (Throwable th3) {
                completableSubscriber.onError(th3);
            }
        }
    }

    /* renamed from: rx.Completable$break, reason: invalid class name */
    public class Cbreak implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f34186do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f34187for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action0 f34188if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Action1 f34189new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Action0 f34190try;

        /* renamed from: rx.Completable$break$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34191do;

            /* renamed from: rx.Completable$break$do$do, reason: invalid class name and collision with other inner class name */
            public class C0494do implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Subscription f34193do;

                public C0494do(Subscription subscription) {
                    this.f34193do = subscription;
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cbreak.this.f34190try.call();
                    } catch (Throwable th) {
                        rx.plugins.Cif.m39151protected(th);
                    }
                    this.f34193do.unsubscribe();
                }
            }

            public Cdo(CompletableSubscriber completableSubscriber) {
                this.f34191do = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                try {
                    Cbreak.this.f34186do.call();
                    this.f34191do.onCompleted();
                    try {
                        Cbreak.this.f34188if.call();
                    } catch (Throwable th) {
                        rx.plugins.Cif.m39151protected(th);
                    }
                } catch (Throwable th2) {
                    this.f34191do.onError(th2);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                try {
                    Cbreak.this.f34187for.call(th);
                } catch (Throwable th2) {
                    th = new rx.exceptions.Cdo(Arrays.asList(th, th2));
                }
                this.f34191do.onError(th);
                try {
                    Cbreak.this.f34188if.call();
                } catch (Throwable th3) {
                    rx.plugins.Cif.m39151protected(th3);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                try {
                    Cbreak.this.f34189new.call(subscription);
                    this.f34191do.onSubscribe(rx.subscriptions.Cfor.m39225do(new C0494do(subscription)));
                } catch (Throwable th) {
                    subscription.unsubscribe();
                    this.f34191do.onSubscribe(rx.subscriptions.Cfor.m39229try());
                    this.f34191do.onError(th);
                }
            }
        }

        public Cbreak(Action0 action0, Action0 action02, Action1 action1, Action1 action12, Action0 action03) {
            this.f34186do = action0;
            this.f34188if = action02;
            this.f34187for = action1;
            this.f34189new = action12;
            this.f34190try = action03;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            Completable.this.V(new Cdo(completableSubscriber));
        }
    }

    /* renamed from: rx.Completable$case, reason: invalid class name */
    public class Ccase implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f34195do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Throwable[] f34197if;

        public Ccase(CountDownLatch countDownLatch, Throwable[] thArr) {
            this.f34195do = countDownLatch;
            this.f34197if = thArr;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34195do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34197if[0] = th;
            this.f34195do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    /* renamed from: rx.Completable$catch, reason: invalid class name */
    public static class Ccatch implements OnSubscribe {
        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
            completableSubscriber.onCompleted();
        }
    }

    /* renamed from: rx.Completable$class, reason: invalid class name */
    public class Cclass implements Action1<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f34198do;

        public Cclass(Action0 action0) {
            this.f34198do = action0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            this.f34198do.call();
        }
    }

    /* renamed from: rx.Completable$const, reason: invalid class name */
    public class Cconst implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f34200do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Throwable[] f34202if;

        public Cconst(CountDownLatch countDownLatch, Throwable[] thArr) {
            this.f34200do = countDownLatch;
            this.f34202if = thArr;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34200do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34202if[0] = th;
            this.f34200do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    /* renamed from: rx.Completable$continue, reason: invalid class name */
    public static class Ccontinue implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34203do;

        public Ccontinue(Func0 func0) {
            this.f34203do = func0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            try {
                Completable completable = (Completable) this.f34203do.call();
                if (completable != null) {
                    completable.V(completableSubscriber);
                } else {
                    completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                    completableSubscriber.onError(new NullPointerException("The completable returned is null"));
                }
            } catch (Throwable th) {
                completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                completableSubscriber.onError(th);
            }
        }
    }

    /* renamed from: rx.Completable$default, reason: invalid class name */
    public class Cdefault implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34204do;

        /* renamed from: rx.Completable$default$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34206do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34208if;

            public Cdo(CompletableSubscriber completableSubscriber, Cif.Cdo cdo) {
                this.f34206do = completableSubscriber;
                this.f34208if = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                try {
                    Completable.this.V(this.f34206do);
                } finally {
                    this.f34208if.unsubscribe();
                }
            }
        }

        public Cdefault(rx.Cif cif) {
            this.f34204do = cif;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            Cif.Cdo cdoMo971do = this.f34204do.mo971do();
            cdoMo971do.mo38376if(new Cdo(completableSubscriber, cdoMo971do));
        }
    }

    /* renamed from: rx.Completable$do, reason: invalid class name */
    public static class Cdo implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f34209do;

        /* renamed from: rx.Completable$do$do, reason: invalid class name and collision with other inner class name */
        public class C0495do extends y22<Object> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34210do;

            public C0495do(CompletableSubscriber completableSubscriber) {
                this.f34210do = completableSubscriber;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f34210do.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f34210do.onError(th);
            }

            @Override // rx.Observer
            public void onNext(Object obj) {
            }
        }

        public Cdo(Observable observable) {
            this.f34209do = observable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            C0495do c0495do = new C0495do(completableSubscriber);
            completableSubscriber.onSubscribe(c0495do);
            this.f34209do.r5(c0495do);
        }
    }

    /* renamed from: rx.Completable$else, reason: invalid class name */
    public class Celse implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34212do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ TimeUnit f34213for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long f34214if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f34215new;

        /* renamed from: rx.Completable$else$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ dq f34217do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34218for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34219if;

            /* renamed from: rx.Completable$else$do$do, reason: invalid class name and collision with other inner class name */
            public class C0496do implements Action0 {
                public C0496do() {
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cdo.this.f34218for.onCompleted();
                    } finally {
                        Cdo.this.f34219if.unsubscribe();
                    }
                }
            }

            /* renamed from: rx.Completable$else$do$if, reason: invalid class name */
            public class Cif implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Throwable f34222do;

                public Cif(Throwable th) {
                    this.f34222do = th;
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cdo.this.f34218for.onError(this.f34222do);
                    } finally {
                        Cdo.this.f34219if.unsubscribe();
                    }
                }
            }

            public Cdo(dq dqVar, Cif.Cdo cdo, CompletableSubscriber completableSubscriber) {
                this.f34217do = dqVar;
                this.f34219if = cdo;
                this.f34218for = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                dq dqVar = this.f34217do;
                Cif.Cdo cdo = this.f34219if;
                C0496do c0496do = new C0496do();
                Celse celse = Celse.this;
                dqVar.m1488do(cdo.mo38375for(c0496do, celse.f34214if, celse.f34213for));
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                if (!Celse.this.f34215new) {
                    this.f34218for.onError(th);
                    return;
                }
                dq dqVar = this.f34217do;
                Cif.Cdo cdo = this.f34219if;
                Cif cif = new Cif(th);
                Celse celse = Celse.this;
                dqVar.m1488do(cdo.mo38375for(cif, celse.f34214if, celse.f34213for));
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34217do.m1488do(subscription);
                this.f34218for.onSubscribe(this.f34217do);
            }
        }

        public Celse(rx.Cif cif, long j, TimeUnit timeUnit, boolean z) {
            this.f34212do = cif;
            this.f34214if = j;
            this.f34213for = timeUnit;
            this.f34215new = z;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            dq dqVar = new dq();
            Cif.Cdo cdoMo971do = this.f34212do.mo971do();
            dqVar.m1488do(cdoMo971do);
            Completable.this.V(new Cdo(dqVar, cdoMo971do, completableSubscriber));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.Completable$extends, reason: invalid class name */
    public class Cextends<T> implements Observable.OnSubscribe<T> {
        public Cextends() {
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            Completable.this.T(y22Var);
        }
    }

    /* renamed from: rx.Completable$final, reason: invalid class name */
    public class Cfinal implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f34225do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Throwable[] f34227if;

        public Cfinal(CountDownLatch countDownLatch, Throwable[] thArr) {
            this.f34225do = countDownLatch;
            this.f34227if = thArr;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34225do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34227if[0] = th;
            this.f34225do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.Completable$finally, reason: invalid class name */
    public class Cfinally<T> implements Single.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34228do;

        /* renamed from: rx.Completable$finally$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ b02 f34230do;

            public Cdo(b02 b02Var) {
                this.f34230do = b02Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                try {
                    Object objCall = Cfinally.this.f34228do.call();
                    if (objCall == null) {
                        this.f34230do.onError(new NullPointerException("The value supplied is null"));
                    } else {
                        this.f34230do.mo416if(objCall);
                    }
                } catch (Throwable th) {
                    this.f34230do.onError(th);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                this.f34230do.onError(th);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34230do.m415do(subscription);
            }
        }

        public Cfinally(Func0 func0) {
            this.f34228do = func0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            Completable.this.V(new Cdo(b02Var));
        }
    }

    /* renamed from: rx.Completable$for, reason: invalid class name */
    public static class Cfor implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34232do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ TimeUnit f34233for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long f34234if;

        /* renamed from: rx.Completable$for$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34235do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34237if;

            public Cdo(CompletableSubscriber completableSubscriber, Cif.Cdo cdo) {
                this.f34235do = completableSubscriber;
                this.f34237if = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                try {
                    this.f34235do.onCompleted();
                } finally {
                    this.f34237if.unsubscribe();
                }
            }
        }

        public Cfor(rx.Cif cif, long j, TimeUnit timeUnit) {
            this.f34232do = cif;
            this.f34234if = j;
            this.f34233for = timeUnit;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            x01 x01Var = new x01();
            completableSubscriber.onSubscribe(x01Var);
            if (x01Var.isUnsubscribed()) {
                return;
            }
            Cif.Cdo cdoMo971do = this.f34232do.mo971do();
            x01Var.m9321if(cdoMo971do);
            cdoMo971do.mo38375for(new Cdo(completableSubscriber, cdoMo971do), this.f34234if, this.f34233for);
        }
    }

    /* renamed from: rx.Completable$goto, reason: invalid class name */
    public class Cgoto implements Action1<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34238do;

        public Cgoto(Action1 action1) {
            this.f34238do = action1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            this.f34238do.call(rx.Cdo.m38311new(th));
        }
    }

    /* renamed from: rx.Completable$if, reason: invalid class name */
    public static class Cif implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Single f34240do;

        /* renamed from: rx.Completable$if$do, reason: invalid class name */
        public class Cdo extends b02<Object> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34242if;

            public Cdo(CompletableSubscriber completableSubscriber) {
                this.f34242if = completableSubscriber;
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(Object obj) {
                this.f34242if.onCompleted();
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                this.f34242if.onError(th);
            }
        }

        public Cif(Single single) {
            this.f34240do = single;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            Cdo cdo = new Cdo(completableSubscriber);
            completableSubscriber.onSubscribe(cdo);
            this.f34240do.u(cdo);
        }
    }

    /* renamed from: rx.Completable$import, reason: invalid class name */
    public class Cimport implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f34243do;

        /* renamed from: rx.Completable$import$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34245do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ ww1 f34247if;

            /* renamed from: rx.Completable$import$do$do, reason: invalid class name and collision with other inner class name */
            public class C0497do implements CompletableSubscriber {
                public C0497do() {
                }

                @Override // rx.CompletableSubscriber
                public void onCompleted() {
                    Cdo.this.f34245do.onCompleted();
                }

                @Override // rx.CompletableSubscriber
                public void onError(Throwable th) {
                    Cdo.this.f34245do.onError(th);
                }

                @Override // rx.CompletableSubscriber
                public void onSubscribe(Subscription subscription) {
                    Cdo.this.f34247if.m9298if(subscription);
                }
            }

            public Cdo(CompletableSubscriber completableSubscriber, ww1 ww1Var) {
                this.f34245do = completableSubscriber;
                this.f34247if = ww1Var;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                this.f34245do.onCompleted();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                try {
                    Completable completable = (Completable) Cimport.this.f34243do.call(th);
                    if (completable == null) {
                        this.f34245do.onError(new rx.exceptions.Cdo(Arrays.asList(th, new NullPointerException("The completable returned is null"))));
                    } else {
                        completable.V(new C0497do());
                    }
                } catch (Throwable th2) {
                    this.f34245do.onError(new rx.exceptions.Cdo(Arrays.asList(th, th2)));
                }
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34247if.m9298if(subscription);
            }
        }

        public Cimport(Func1 func1) {
            this.f34243do = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            ww1 ww1Var = new ww1();
            completableSubscriber.onSubscribe(ww1Var);
            Completable.this.V(new Cdo(completableSubscriber, ww1Var));
        }
    }

    /* renamed from: rx.Completable$interface, reason: invalid class name */
    public static class Cinterface implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f34249do;

        public Cinterface(Action0 action0) {
            this.f34249do = action0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            rx.subscriptions.Cdo cdo = new rx.subscriptions.Cdo();
            completableSubscriber.onSubscribe(cdo);
            try {
                this.f34249do.call();
                if (cdo.isUnsubscribed()) {
                    return;
                }
                completableSubscriber.onCompleted();
            } catch (Throwable th) {
                if (cdo.isUnsubscribed()) {
                    return;
                }
                completableSubscriber.onError(th);
            }
        }
    }

    /* renamed from: rx.Completable$native, reason: invalid class name */
    public class Cnative implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ x01 f34250do;

        public Cnative(x01 x01Var) {
            this.f34250do = x01Var;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34250do.unsubscribe();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            rx.plugins.Cif.m39151protected(th);
            this.f34250do.unsubscribe();
            Completable.m38167return(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34250do.m9321if(subscription);
        }
    }

    /* renamed from: rx.Completable$new, reason: invalid class name */
    public static class Cnew implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34252do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f34253for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Func1 f34254if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f34255new;

        /* renamed from: rx.Completable$new$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public Subscription f34256do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Object f34257for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ AtomicBoolean f34258if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34259new;

            /* renamed from: rx.Completable$new$do$do, reason: invalid class name and collision with other inner class name */
            public class C0498do implements Action0 {
                public C0498do() {
                }

                @Override // rx.functions.Action0
                public void call() {
                    Cdo.this.m38211do();
                }
            }

            public Cdo(AtomicBoolean atomicBoolean, Object obj, CompletableSubscriber completableSubscriber) {
                this.f34258if = atomicBoolean;
                this.f34257for = obj;
                this.f34259new = completableSubscriber;
            }

            /* renamed from: do, reason: not valid java name */
            public void m38211do() {
                this.f34256do.unsubscribe();
                if (this.f34258if.compareAndSet(false, true)) {
                    try {
                        Cnew.this.f34253for.call(this.f34257for);
                    } catch (Throwable th) {
                        rx.plugins.Cif.m39151protected(th);
                    }
                }
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                if (Cnew.this.f34255new && this.f34258if.compareAndSet(false, true)) {
                    try {
                        Cnew.this.f34253for.call(this.f34257for);
                    } catch (Throwable th) {
                        this.f34259new.onError(th);
                        return;
                    }
                }
                this.f34259new.onCompleted();
                if (Cnew.this.f34255new) {
                    return;
                }
                m38211do();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                if (Cnew.this.f34255new && this.f34258if.compareAndSet(false, true)) {
                    try {
                        Cnew.this.f34253for.call(this.f34257for);
                    } catch (Throwable th2) {
                        th = new rx.exceptions.Cdo(Arrays.asList(th, th2));
                    }
                }
                this.f34259new.onError(th);
                if (Cnew.this.f34255new) {
                    return;
                }
                m38211do();
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34256do = subscription;
                this.f34259new.onSubscribe(rx.subscriptions.Cfor.m39225do(new C0498do()));
            }
        }

        public Cnew(Func0 func0, Func1 func1, Action1 action1, boolean z) {
            this.f34252do = func0;
            this.f34254if = func1;
            this.f34253for = action1;
            this.f34255new = z;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            try {
                Object objCall = this.f34252do.call();
                try {
                    Completable completable = (Completable) this.f34254if.call(objCall);
                    if (completable != null) {
                        completable.V(new Cdo(new AtomicBoolean(), objCall, completableSubscriber));
                        return;
                    }
                    try {
                        this.f34253for.call(objCall);
                        completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                        completableSubscriber.onError(new NullPointerException("The completable supplied is null"));
                    } catch (Throwable th) {
                        s80.m7301try(th);
                        completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                        completableSubscriber.onError(new rx.exceptions.Cdo(Arrays.asList(new NullPointerException("The completable supplied is null"), th)));
                    }
                } catch (Throwable th2) {
                    try {
                        this.f34253for.call(objCall);
                        s80.m7301try(th2);
                        completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                        completableSubscriber.onError(th2);
                    } catch (Throwable th3) {
                        s80.m7301try(th2);
                        s80.m7301try(th3);
                        completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                        completableSubscriber.onError(new rx.exceptions.Cdo(Arrays.asList(th2, th3)));
                    }
                }
            } catch (Throwable th4) {
                completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
                completableSubscriber.onError(th4);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.Completable$package, reason: invalid class name */
    public class Cpackage<T> implements Func0<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f34262do;

        public Cpackage(Object obj) {
            this.f34262do = obj;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        public T call() {
            return (T) this.f34262do;
        }
    }

    /* renamed from: rx.Completable$private, reason: invalid class name */
    public class Cprivate implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34264do;

        /* renamed from: rx.Completable$private$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34266do;

            /* renamed from: rx.Completable$private$do$do, reason: invalid class name and collision with other inner class name */
            public class C0499do implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Subscription f34268do;

                /* renamed from: rx.Completable$private$do$do$do, reason: invalid class name and collision with other inner class name */
                public class C0500do implements Action0 {

                    /* renamed from: do, reason: not valid java name */
                    public final /* synthetic */ Cif.Cdo f34270do;

                    public C0500do(Cif.Cdo cdo) {
                        this.f34270do = cdo;
                    }

                    @Override // rx.functions.Action0
                    public void call() {
                        try {
                            C0499do.this.f34268do.unsubscribe();
                        } finally {
                            this.f34270do.unsubscribe();
                        }
                    }
                }

                public C0499do(Subscription subscription) {
                    this.f34268do = subscription;
                }

                @Override // rx.functions.Action0
                public void call() {
                    Cif.Cdo cdoMo971do = Cprivate.this.f34264do.mo971do();
                    cdoMo971do.mo38376if(new C0500do(cdoMo971do));
                }
            }

            public Cdo(CompletableSubscriber completableSubscriber) {
                this.f34266do = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                this.f34266do.onCompleted();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                this.f34266do.onError(th);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34266do.onSubscribe(rx.subscriptions.Cfor.m39225do(new C0499do(subscription)));
            }
        }

        public Cprivate(rx.Cif cif) {
            this.f34264do = cif;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            Completable.this.V(new Cdo(completableSubscriber));
        }
    }

    /* renamed from: rx.Completable$protected, reason: invalid class name */
    public static class Cprotected implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Callable f34272do;

        public Cprotected(Callable callable) {
            this.f34272do = callable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            rx.subscriptions.Cdo cdo = new rx.subscriptions.Cdo();
            completableSubscriber.onSubscribe(cdo);
            try {
                this.f34272do.call();
                if (cdo.isUnsubscribed()) {
                    return;
                }
                completableSubscriber.onCompleted();
            } catch (Throwable th) {
                if (cdo.isUnsubscribed()) {
                    return;
                }
                completableSubscriber.onError(th);
            }
        }
    }

    /* renamed from: rx.Completable$public, reason: invalid class name */
    public class Cpublic implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public boolean f34273do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ x01 f34274for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action0 f34275if;

        public Cpublic(Action0 action0, x01 x01Var) {
            this.f34275if = action0;
            this.f34274for = x01Var;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            if (this.f34273do) {
                return;
            }
            this.f34273do = true;
            try {
                this.f34275if.call();
            } finally {
                try {
                } finally {
                }
            }
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            rx.plugins.Cif.m39151protected(th);
            this.f34274for.unsubscribe();
            Completable.m38167return(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34274for.m9321if(subscription);
        }
    }

    /* renamed from: rx.Completable$return, reason: invalid class name */
    public class Creturn implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public boolean f34277do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ x01 f34278for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action0 f34279if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Action1 f34280new;

        public Creturn(Action0 action0, x01 x01Var, Action1 action1) {
            this.f34279if = action0;
            this.f34278for = x01Var;
            this.f34280new = action1;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38214do(Throwable th) {
            try {
                this.f34280new.call(th);
            } finally {
                try {
                } finally {
                }
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            if (this.f34277do) {
                return;
            }
            this.f34277do = true;
            try {
                this.f34279if.call();
                this.f34278for.unsubscribe();
            } catch (Throwable th) {
                m38214do(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            if (this.f34277do) {
                rx.plugins.Cif.m39151protected(th);
                Completable.m38167return(th);
            } else {
                this.f34277do = true;
                m38214do(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34278for.m9321if(subscription);
        }
    }

    /* renamed from: rx.Completable$static, reason: invalid class name */
    public static class Cstatic implements OnSubscribe {
        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
        }
    }

    /* renamed from: rx.Completable$strictfp, reason: invalid class name */
    public static class Cstrictfp implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34282do;

        public Cstrictfp(Func0 func0) {
            this.f34282do = func0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
            try {
                th = (Throwable) this.f34282do.call();
            } catch (Throwable th) {
                th = th;
            }
            if (th == null) {
                th = new NullPointerException("The error supplied is null");
            }
            completableSubscriber.onError(th);
        }
    }

    /* renamed from: rx.Completable$super, reason: invalid class name */
    public class Csuper implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Operator f34283do;

        public Csuper(Operator operator) {
            this.f34283do = operator;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            try {
                Completable.this.V(rx.plugins.Cif.m39150private(this.f34283do).call(completableSubscriber));
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                throw Completable.P(th);
            }
        }
    }

    /* renamed from: rx.Completable$switch, reason: invalid class name */
    public static class Cswitch implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Completable[] f34285do;

        /* renamed from: rx.Completable$switch$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ AtomicBoolean f34286do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34287for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ dq f34288if;

            public Cdo(AtomicBoolean atomicBoolean, dq dqVar, CompletableSubscriber completableSubscriber) {
                this.f34286do = atomicBoolean;
                this.f34288if = dqVar;
                this.f34287for = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                if (this.f34286do.compareAndSet(false, true)) {
                    this.f34288if.unsubscribe();
                    this.f34287for.onCompleted();
                }
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                if (!this.f34286do.compareAndSet(false, true)) {
                    rx.plugins.Cif.m39151protected(th);
                } else {
                    this.f34288if.unsubscribe();
                    this.f34287for.onError(th);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34288if.m1488do(subscription);
            }
        }

        public Cswitch(Completable[] completableArr) {
            this.f34285do = completableArr;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            dq dqVar = new dq();
            completableSubscriber.onSubscribe(dqVar);
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            Cdo cdo = new Cdo(atomicBoolean, dqVar, completableSubscriber);
            for (Completable completable : this.f34285do) {
                if (dqVar.isUnsubscribed()) {
                    return;
                }
                if (completable == null) {
                    Throwable nullPointerException = new NullPointerException("One of the sources is null");
                    if (!atomicBoolean.compareAndSet(false, true)) {
                        rx.plugins.Cif.m39151protected(nullPointerException);
                        return;
                    } else {
                        dqVar.unsubscribe();
                        completableSubscriber.onError(nullPointerException);
                        return;
                    }
                }
                if (atomicBoolean.get() || dqVar.isUnsubscribed()) {
                    return;
                }
                completable.V(cdo);
            }
        }
    }

    /* renamed from: rx.Completable$this, reason: invalid class name */
    public class Cthis implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34290do;

        public Cthis(Action1 action1) {
            this.f34290do = action1;
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f34290do.call(rx.Cdo.m38310if());
        }
    }

    /* renamed from: rx.Completable$throw, reason: invalid class name */
    public class Cthrow implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34292do;

        /* renamed from: rx.Completable$throw$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34294do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ d32 f34295for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34296if;

            /* renamed from: rx.Completable$throw$do$do, reason: invalid class name and collision with other inner class name */
            public class C0501do implements Action0 {
                public C0501do() {
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cdo.this.f34296if.onCompleted();
                    } finally {
                        Cdo.this.f34295for.unsubscribe();
                    }
                }
            }

            /* renamed from: rx.Completable$throw$do$if, reason: invalid class name */
            public class Cif implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Throwable f34299do;

                public Cif(Throwable th) {
                    this.f34299do = th;
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cdo.this.f34296if.onError(this.f34299do);
                    } finally {
                        Cdo.this.f34295for.unsubscribe();
                    }
                }
            }

            public Cdo(Cif.Cdo cdo, CompletableSubscriber completableSubscriber, d32 d32Var) {
                this.f34294do = cdo;
                this.f34296if = completableSubscriber;
                this.f34295for = d32Var;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                this.f34294do.mo38376if(new C0501do());
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                this.f34294do.mo38376if(new Cif(th));
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34295for.m1132do(subscription);
            }
        }

        public Cthrow(rx.Cif cif) {
            this.f34292do = cif;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            d32 d32Var = new d32();
            Cif.Cdo cdoMo971do = this.f34292do.mo971do();
            d32Var.m1132do(cdoMo971do);
            completableSubscriber.onSubscribe(d32Var);
            Completable.this.V(new Cdo(cdoMo971do, completableSubscriber, d32Var));
        }
    }

    /* renamed from: rx.Completable$throws, reason: invalid class name */
    public class Cthrows implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34301do;

        public Cthrows(y22 y22Var) {
            this.f34301do = y22Var;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34301do.onCompleted();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34301do.onError(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34301do.add(subscription);
        }
    }

    /* renamed from: rx.Completable$try, reason: invalid class name */
    public class Ctry implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f34303do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Throwable[] f34305if;

        public Ctry(CountDownLatch countDownLatch, Throwable[] thArr) {
            this.f34303do = countDownLatch;
            this.f34305if = thArr;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34303do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34305if[0] = th;
            this.f34303do.countDown();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
        }
    }

    /* renamed from: rx.Completable$volatile, reason: invalid class name */
    public static class Cvolatile implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Throwable f34306do;

        public Cvolatile(Throwable th) {
            this.f34306do = th;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            completableSubscriber.onSubscribe(rx.subscriptions.Cfor.m39229try());
            completableSubscriber.onError(this.f34306do);
        }
    }

    /* renamed from: rx.Completable$while, reason: invalid class name */
    public class Cwhile implements OnSubscribe {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f34307do;

        /* renamed from: rx.Completable$while$do, reason: invalid class name */
        public class Cdo implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CompletableSubscriber f34309do;

            public Cdo(CompletableSubscriber completableSubscriber) {
                this.f34309do = completableSubscriber;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                this.f34309do.onCompleted();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                boolean zBooleanValue = false;
                try {
                    zBooleanValue = ((Boolean) Cwhile.this.f34307do.call(th)).booleanValue();
                } catch (Throwable th2) {
                    s80.m7301try(th2);
                    th = new rx.exceptions.Cdo(Arrays.asList(th, th2));
                }
                if (zBooleanValue) {
                    this.f34309do.onCompleted();
                } else {
                    this.f34309do.onError(th);
                }
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34309do.onSubscribe(subscription);
            }
        }

        public Cwhile(Func1 func1) {
            this.f34307do = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(CompletableSubscriber completableSubscriber) {
            Completable.this.V(new Cdo(completableSubscriber));
        }
    }

    public Completable(OnSubscribe onSubscribe) {
        this.f34179do = rx.plugins.Cif.m39155strictfp(onSubscribe);
    }

    public static Completable M(long j, TimeUnit timeUnit) {
        return N(j, timeUnit, ds1.m1517do());
    }

    public static Completable N(long j, TimeUnit timeUnit, rx.Cif cif) {
        t(timeUnit);
        t(cif);
        return m38170throw(new Cfor(cif, j, timeUnit));
    }

    public static NullPointerException P(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    private <T> void U(y22<T> y22Var, boolean z) {
        t(y22Var);
        if (z) {
            try {
                y22Var.onStart();
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                s80.m7301try(th);
                Throwable thM39145instanceof = rx.plugins.Cif.m39145instanceof(th);
                rx.plugins.Cif.m39151protected(thM39145instanceof);
                throw P(thM39145instanceof);
            }
        }
        V(new Cthrows(y22Var));
        rx.plugins.Cif.a(y22Var);
    }

    public static <R> Completable X(Func0<R> func0, Func1<? super R, ? extends Completable> func1, Action1<? super R> action1) {
        return Y(func0, func1, action1, true);
    }

    public static <R> Completable Y(Func0<R> func0, Func1<? super R, ? extends Completable> func1, Action1<? super R> action1, boolean z) {
        t(func0);
        t(func1);
        t(action1);
        return m38170throw(new Cnew(func0, func1, action1, z));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Completable m38156abstract(Throwable th) {
        t(th);
        return m38170throw(new Cvolatile(th));
    }

    public static Completable b(Iterable<? extends Completable> iterable) {
        t(iterable);
        return m38170throw(new rx.internal.operators.Cthrow(iterable));
    }

    public static Completable c(Observable<? extends Completable> observable) {
        return f(observable, Integer.MAX_VALUE, false);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Completable m38157catch(Iterable<? extends Completable> iterable) {
        t(iterable);
        return m38170throw(new rx.internal.operators.Ccatch(iterable));
    }

    /* renamed from: class, reason: not valid java name */
    public static Completable m38158class(Observable<? extends Completable> observable) {
        return m38159const(observable, 2);
    }

    /* renamed from: const, reason: not valid java name */
    public static Completable m38159const(Observable<? extends Completable> observable, int i) {
        t(observable);
        if (i >= 1) {
            return m38170throw(new rx.internal.operators.Cthis(observable, i));
        }
        throw new IllegalArgumentException("prefetch > 0 required but it was " + i);
    }

    /* renamed from: continue, reason: not valid java name */
    public static Completable m38160continue(Func0<? extends Throwable> func0) {
        t(func0);
        return m38170throw(new Cstrictfp(func0));
    }

    public static Completable d(Observable<? extends Completable> observable, int i) {
        return f(observable, i, false);
    }

    /* renamed from: do, reason: not valid java name */
    public static Completable m38161do(Iterable<? extends Completable> iterable) {
        t(iterable);
        return m38170throw(new Cabstract(iterable));
    }

    public static Completable e(Completable... completableArr) {
        t(completableArr);
        return completableArr.length == 0 ? m38169this() : completableArr.length == 1 ? completableArr[0] : m38170throw(new rx.internal.operators.Cconst(completableArr));
    }

    public static Completable f(Observable<? extends Completable> observable, int i, boolean z) {
        t(observable);
        if (i >= 1) {
            return m38170throw(new rx.internal.operators.Cclass(observable, i, z));
        }
        throw new IllegalArgumentException("maxConcurrency > 0 required but it was " + i);
    }

    /* renamed from: final, reason: not valid java name */
    public static Completable m38162final(Completable... completableArr) {
        t(completableArr);
        return completableArr.length == 0 ? m38169this() : completableArr.length == 1 ? completableArr[0] : m38170throw(new rx.internal.operators.Cbreak(completableArr));
    }

    public static Completable g(Iterable<? extends Completable> iterable) {
        t(iterable);
        return m38170throw(new rx.internal.operators.Csuper(iterable));
    }

    public static Completable h(Observable<? extends Completable> observable) {
        return f(observable, Integer.MAX_VALUE, true);
    }

    public static Completable i(Observable<? extends Completable> observable, int i) {
        return f(observable, i, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static Completable m38163if(Completable... completableArr) {
        t(completableArr);
        return completableArr.length == 0 ? m38169this() : completableArr.length == 1 ? completableArr[0] : m38170throw(new Cswitch(completableArr));
    }

    /* renamed from: implements, reason: not valid java name */
    public static Completable m38164implements(Single<?> single) {
        t(single);
        return m38170throw(new Cif(single));
    }

    /* renamed from: interface, reason: not valid java name */
    public static Completable m38165interface(Action1<CompletableEmitter> action1) {
        return m38170throw(new rx.internal.operators.Cgoto(action1));
    }

    public static Completable j(Completable... completableArr) {
        t(completableArr);
        return m38170throw(new rx.internal.operators.Cfinal(completableArr));
    }

    public static Completable l() {
        Completable completable = f34177for;
        OnSubscribe onSubscribeM39155strictfp = rx.plugins.Cif.m39155strictfp(completable.f34179do);
        return onSubscribeM39155strictfp == completable.f34179do ? completable : new Completable(onSubscribeM39155strictfp, false);
    }

    /* renamed from: protected, reason: not valid java name */
    public static Completable m38166protected(Future<?> future) {
        t(future);
        return m38171transient(Observable.e1(future));
    }

    /* renamed from: return, reason: not valid java name */
    public static void m38167return(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static Completable m38168strictfp(Action0 action0) {
        t(action0);
        return m38170throw(new Cinterface(action0));
    }

    public static <T> T t(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: this, reason: not valid java name */
    public static Completable m38169this() {
        Completable completable = f34178if;
        OnSubscribe onSubscribeM39155strictfp = rx.plugins.Cif.m39155strictfp(completable.f34179do);
        return onSubscribeM39155strictfp == completable.f34179do ? completable : new Completable(onSubscribeM39155strictfp, false);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Completable m38170throw(OnSubscribe onSubscribe) {
        t(onSubscribe);
        try {
            return new Completable(onSubscribe);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            rx.plugins.Cif.m39151protected(th);
            throw P(th);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static Completable m38171transient(Observable<?> observable) {
        t(observable);
        return m38170throw(new Cdo(observable));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Completable m38172volatile(Callable<?> callable) {
        t(callable);
        return m38170throw(new Cprotected(callable));
    }

    /* renamed from: while, reason: not valid java name */
    public static Completable m38173while(Func0<? extends Completable> func0) {
        t(func0);
        return m38170throw(new Ccontinue(func0));
    }

    public final Subscription A() {
        x01 x01Var = new x01();
        V(new Cnative(x01Var));
        return x01Var;
    }

    public final Subscription B(Action0 action0) {
        t(action0);
        x01 x01Var = new x01();
        V(new Cpublic(action0, x01Var));
        return x01Var;
    }

    public final Subscription C(Action0 action0, Action1<? super Throwable> action1) {
        t(action0);
        t(action1);
        x01 x01Var = new x01();
        V(new Creturn(action0, x01Var, action1));
        return x01Var;
    }

    public final <T> void D(y22<T> y22Var) {
        y22Var.onStart();
        if (!(y22Var instanceof sr1)) {
            y22Var = new sr1(y22Var);
        }
        U(y22Var, false);
    }

    public final void E(CompletableSubscriber completableSubscriber) {
        if (!(completableSubscriber instanceof pr1)) {
            completableSubscriber = new pr1(completableSubscriber);
        }
        V(completableSubscriber);
    }

    public final Completable F(rx.Cif cif) {
        t(cif);
        return m38170throw(new Cdefault(cif));
    }

    public final AssertableSubscriber<Void> G() {
        v3 v3VarM8727do = v3.m8727do(Long.MAX_VALUE);
        D(v3VarM8727do);
        return v3VarM8727do;
    }

    public final Completable H(long j, TimeUnit timeUnit) {
        return L(j, timeUnit, ds1.m1517do(), null);
    }

    public final Completable I(long j, TimeUnit timeUnit, Completable completable) {
        t(completable);
        return L(j, timeUnit, ds1.m1517do(), completable);
    }

    public final Completable J(long j, TimeUnit timeUnit, rx.Cif cif) {
        return L(j, timeUnit, cif, null);
    }

    public final Completable K(long j, TimeUnit timeUnit, rx.Cif cif, Completable completable) {
        t(completable);
        return L(j, timeUnit, cif, completable);
    }

    public final Completable L(long j, TimeUnit timeUnit, rx.Cif cif, Completable completable) {
        t(timeUnit);
        t(cif);
        return m38170throw(new rx.internal.operators.Cwhile(this, j, timeUnit, cif, completable));
    }

    public final <R> R O(Func1<? super Completable, R> func1) {
        return func1.call(this);
    }

    public final <T> Observable<T> Q() {
        return Observable.q5(new Cextends());
    }

    public final <T> Single<T> R(Func0<? extends T> func0) {
        t(func0);
        return Single.m38265const(new Cfinally(func0));
    }

    public final <T> Single<T> S(T t) {
        t(t);
        return R(new Cpackage(t));
    }

    public final <T> void T(y22<T> y22Var) {
        U(y22Var, true);
    }

    public final void V(CompletableSubscriber completableSubscriber) {
        t(completableSubscriber);
        try {
            rx.plugins.Cif.m39127abstract(this, this.f34179do).call(completableSubscriber);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            s80.m7301try(th);
            Throwable thM39149package = rx.plugins.Cif.m39149package(th);
            rx.plugins.Cif.m39151protected(thM39149package);
            throw P(thM39149package);
        }
    }

    public final Completable W(rx.Cif cif) {
        t(cif);
        return m38170throw(new Cprivate(cif));
    }

    public final Completable a(Operator operator) {
        t(operator);
        return m38170throw(new Csuper(operator));
    }

    /* renamed from: break, reason: not valid java name */
    public final Completable m38174break(Transformer transformer) {
        return (Completable) O(transformer);
    }

    /* renamed from: case, reason: not valid java name */
    public final <T> Single<T> m38175case(Single<T> single) {
        t(single);
        return single.m38299while(Q());
    }

    /* renamed from: default, reason: not valid java name */
    public final Completable m38176default(Action1<? super Throwable> action1) {
        return m38178extends(rx.functions.Cdo.m38335do(), action1, rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do());
    }

    /* renamed from: else, reason: not valid java name */
    public final void m38177else() throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Throwable[] thArr = new Throwable[1];
        V(new Ctry(countDownLatch, thArr));
        if (countDownLatch.getCount() == 0) {
            if (thArr[0] != null) {
                s80.m7296for(thArr[0]);
            }
        } else {
            try {
                countDownLatch.await();
                if (thArr[0] != null) {
                    s80.m7296for(thArr[0]);
                }
            } catch (InterruptedException e) {
                throw s80.m7296for(e);
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final Completable m38178extends(Action1<? super Subscription> action1, Action1<? super Throwable> action12, Action0 action0, Action0 action02, Action0 action03) {
        t(action1);
        t(action12);
        t(action0);
        t(action02);
        t(action03);
        return m38170throw(new Cbreak(action0, action02, action12, action1, action03));
    }

    /* renamed from: finally, reason: not valid java name */
    public final Completable m38179finally(Action1<? super Subscription> action1) {
        return m38178extends(action1, rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do());
    }

    /* renamed from: for, reason: not valid java name */
    public final Completable m38180for(Completable completable) {
        t(completable);
        return m38163if(this, completable);
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m38181goto(long j, TimeUnit timeUnit) throws InterruptedException {
        t(timeUnit);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Throwable[] thArr = new Throwable[1];
        V(new Ccase(countDownLatch, thArr));
        if (countDownLatch.getCount() == 0) {
            if (thArr[0] != null) {
                s80.m7296for(thArr[0]);
            }
            return true;
        }
        try {
            boolean zAwait = countDownLatch.await(j, timeUnit);
            if (zAwait && thArr[0] != null) {
                s80.m7296for(thArr[0]);
            }
            return zAwait;
        } catch (InterruptedException e) {
            throw s80.m7296for(e);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final Completable m38182import(long j, TimeUnit timeUnit) {
        return m38188public(j, timeUnit, ds1.m1517do(), false);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final Throwable m38183instanceof() throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Throwable[] thArr = new Throwable[1];
        V(new Cconst(countDownLatch, thArr));
        if (countDownLatch.getCount() == 0) {
            return thArr[0];
        }
        try {
            countDownLatch.await();
            return thArr[0];
        } catch (InterruptedException e) {
            throw s80.m7296for(e);
        }
    }

    public final Completable k(Completable completable) {
        t(completable);
        return e(this, completable);
    }

    public final Completable m(rx.Cif cif) {
        t(cif);
        return m38170throw(new Cthrow(cif));
    }

    public final Completable n() {
        return o(rx.internal.util.Cthis.m38930if());
    }

    /* renamed from: native, reason: not valid java name */
    public final Completable m38184native(long j, TimeUnit timeUnit, rx.Cif cif) {
        return m38188public(j, timeUnit, cif, false);
    }

    /* renamed from: new, reason: not valid java name */
    public final Completable m38185new(Completable completable) {
        return m38190super(completable);
    }

    public final Completable o(Func1<? super Throwable, Boolean> func1) {
        t(func1);
        return m38170throw(new Cwhile(func1));
    }

    public final Completable p(Func1<? super Throwable, ? extends Completable> func1) {
        t(func1);
        return m38170throw(new Cimport(func1));
    }

    /* renamed from: package, reason: not valid java name */
    public final Completable m38186package(Action0 action0) {
        return m38178extends(rx.functions.Cdo.m38335do(), new Cclass(action0), action0, rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do());
    }

    /* renamed from: private, reason: not valid java name */
    public final Completable m38187private(Action0 action0) {
        return m38178extends(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), action0);
    }

    /* renamed from: public, reason: not valid java name */
    public final Completable m38188public(long j, TimeUnit timeUnit, rx.Cif cif, boolean z) {
        t(timeUnit);
        t(cif);
        return m38170throw(new Celse(cif, j, timeUnit, z));
    }

    public final Completable q() {
        return m38171transient(Q().O2());
    }

    public final Completable r(long j) {
        return m38171transient(Q().P2(j));
    }

    public final Completable s(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
        t(func1);
        return m38171transient(Q().S2(func1));
    }

    /* renamed from: static, reason: not valid java name */
    public final Completable m38189static(Action0 action0) {
        return m38178extends(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), action0, rx.functions.Cdo.m38335do());
    }

    /* renamed from: super, reason: not valid java name */
    public final Completable m38190super(Completable completable) {
        t(completable);
        return m38162final(this, completable);
    }

    /* renamed from: switch, reason: not valid java name */
    public final Completable m38191switch(Action0 action0) {
        return m38178extends(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), action0, rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do());
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final Throwable m38192synchronized(long j, TimeUnit timeUnit) {
        t(timeUnit);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Throwable[] thArr = new Throwable[1];
        V(new Cfinal(countDownLatch, thArr));
        if (countDownLatch.getCount() == 0) {
            return thArr[0];
        }
        try {
            if (countDownLatch.await(j, timeUnit)) {
                return thArr[0];
            }
            s80.m7296for(new TimeoutException());
            return null;
        } catch (InterruptedException e) {
            throw s80.m7296for(e);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final Completable m38193throws(Action1<rx.Cdo<Object>> action1) {
        if (action1 != null) {
            return m38178extends(rx.functions.Cdo.m38335do(), new Cgoto(action1), new Cthis(action1), rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do());
        }
        throw new IllegalArgumentException("onNotification is null");
    }

    /* renamed from: try, reason: not valid java name */
    public final <T> Observable<T> m38194try(Observable<T> observable) {
        t(observable);
        return observable.h0(Q());
    }

    public final Completable u() {
        return m38171transient(Q().k3());
    }

    public final Completable v(long j) {
        return m38171transient(Q().l3(j));
    }

    public final Completable w(Func2<Integer, Throwable, Boolean> func2) {
        return m38171transient(Q().m3(func2));
    }

    public final Completable x(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return m38171transient(Q().n3(func1));
    }

    public final Completable y(Completable completable) {
        t(completable);
        return m38162final(completable, this);
    }

    public final <T> Observable<T> z(Observable<T> observable) {
        t(observable);
        return Q().W3(observable);
    }

    public Completable(OnSubscribe onSubscribe, boolean z) {
        this.f34179do = z ? rx.plugins.Cif.m39155strictfp(onSubscribe) : onSubscribe;
    }
}
