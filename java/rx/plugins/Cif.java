package rx.plugins;

import android.support.v4.lp1;
import java.util.concurrent.ScheduledExecutorService;
import rx.Completable;
import rx.Observable;
import rx.Single;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.operators.b;
import rx.internal.operators.c;
import rx.internal.operators.d;
import rx.internal.operators.d3;
import rx.internal.operators.q2;

/* renamed from: rx.plugins.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif {

    /* renamed from: break, reason: not valid java name */
    public static volatile Func1<rx.Cif, rx.Cif> f36123break;

    /* renamed from: case, reason: not valid java name */
    public static volatile Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> f36124case;

    /* renamed from: catch, reason: not valid java name */
    public static volatile Func1<rx.Cif, rx.Cif> f36125catch;

    /* renamed from: class, reason: not valid java name */
    public static volatile Func1<Action0, Action0> f36126class;

    /* renamed from: const, reason: not valid java name */
    public static volatile Func1<Subscription, Subscription> f36127const;

    /* renamed from: do, reason: not valid java name */
    public static volatile boolean f36128do;

    /* renamed from: else, reason: not valid java name */
    public static volatile Func2<Single, Single.OnSubscribe, Single.OnSubscribe> f36129else;

    /* renamed from: final, reason: not valid java name */
    public static volatile Func1<Subscription, Subscription> f36130final;

    /* renamed from: for, reason: not valid java name */
    public static volatile Func1<Observable.OnSubscribe, Observable.OnSubscribe> f36131for;

    /* renamed from: goto, reason: not valid java name */
    public static volatile Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe> f36132goto;

    /* renamed from: if, reason: not valid java name */
    public static volatile Action1<Throwable> f36133if;

    /* renamed from: import, reason: not valid java name */
    public static volatile Func1<Throwable, Throwable> f36134import;

    /* renamed from: native, reason: not valid java name */
    public static volatile Func1<Observable.Operator, Observable.Operator> f36135native;

    /* renamed from: new, reason: not valid java name */
    public static volatile Func1<Single.OnSubscribe, Single.OnSubscribe> f36136new;

    /* renamed from: public, reason: not valid java name */
    public static volatile Func1<Observable.Operator, Observable.Operator> f36137public;

    /* renamed from: return, reason: not valid java name */
    public static volatile Func1<Completable.Operator, Completable.Operator> f36138return;

    /* renamed from: super, reason: not valid java name */
    public static volatile Func0<? extends ScheduledExecutorService> f36139super;

    /* renamed from: this, reason: not valid java name */
    public static volatile Func1<rx.Cif, rx.Cif> f36140this;

    /* renamed from: throw, reason: not valid java name */
    public static volatile Func1<Throwable, Throwable> f36141throw;

    /* renamed from: try, reason: not valid java name */
    public static volatile Func1<Completable.OnSubscribe, Completable.OnSubscribe> f36142try;

    /* renamed from: while, reason: not valid java name */
    public static volatile Func1<Throwable, Throwable> f36143while;

    /* renamed from: rx.plugins.if$break, reason: invalid class name */
    public static class Cbreak implements Func1<Completable.OnSubscribe, Completable.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Completable.OnSubscribe call(Completable.OnSubscribe onSubscribe) {
            return new c(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$case, reason: invalid class name */
    public static class Ccase implements Func1<Single.OnSubscribe, Single.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Single.OnSubscribe call(Single.OnSubscribe onSubscribe) {
            return rx.plugins.Cnew.m39185for().m39193else().m4727do(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$catch, reason: invalid class name */
    public static class Ccatch implements Action1<Throwable> {
        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            rx.plugins.Cnew.m39185for().m39195if().m39123do(th);
        }
    }

    /* renamed from: rx.plugins.if$class, reason: invalid class name */
    public static class Cclass implements Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable.OnSubscribe call(Observable observable, Observable.OnSubscribe onSubscribe) {
            return rx.plugins.Cnew.m39185for().m39196new().m3540try(observable, onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$const, reason: invalid class name */
    public static class Cconst implements Func1<Subscription, Subscription> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(Subscription subscription) {
            return rx.plugins.Cnew.m39185for().m39196new().m3539new(subscription);
        }
    }

    /* renamed from: rx.plugins.if$do, reason: invalid class name */
    public static class Cdo implements Func1<Throwable, Throwable> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Throwable call(Throwable th) {
            return rx.plugins.Cnew.m39185for().m39193else().m4728for(th);
        }
    }

    /* renamed from: rx.plugins.if$else, reason: invalid class name */
    public static class Celse implements Func1<Completable.OnSubscribe, Completable.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Completable.OnSubscribe call(Completable.OnSubscribe onSubscribe) {
            return rx.plugins.Cnew.m39185for().m39192do().m3081do(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$final, reason: invalid class name */
    public static class Cfinal implements Func2<Single, Single.OnSubscribe, Single.OnSubscribe> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Single.OnSubscribe call(Single single, Single.OnSubscribe onSubscribe) {
            lp1 lp1VarM39193else = rx.plugins.Cnew.m39185for().m39193else();
            return lp1VarM39193else == rx.plugins.Ctry.m39198case() ? onSubscribe : new q2(lp1VarM39193else.m4731try(single, new d3(onSubscribe)));
        }
    }

    /* renamed from: rx.plugins.if$for, reason: invalid class name */
    public static class Cfor implements Func1<Throwable, Throwable> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Throwable call(Throwable th) {
            return rx.plugins.Cnew.m39185for().m39192do().m3082for(th);
        }
    }

    /* renamed from: rx.plugins.if$goto, reason: invalid class name */
    public static class Cgoto implements Func1<Observable.OnSubscribe, Observable.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable.OnSubscribe call(Observable.OnSubscribe onSubscribe) {
            return new b(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0566if implements Func1<Observable.Operator, Observable.Operator> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable.Operator call(Observable.Operator operator) {
            return rx.plugins.Cnew.m39185for().m39193else().m4729if(operator);
        }
    }

    /* renamed from: rx.plugins.if$import, reason: invalid class name */
    public static class Cimport implements Func1<Throwable, Throwable> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Throwable call(Throwable th) {
            return rx.plugins.Cnew.m39185for().m39196new().m3537for(th);
        }
    }

    /* renamed from: rx.plugins.if$native, reason: invalid class name */
    public static class Cnative implements Func1<Observable.Operator, Observable.Operator> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable.Operator call(Observable.Operator operator) {
            return rx.plugins.Cnew.m39185for().m39196new().m3538if(operator);
        }
    }

    /* renamed from: rx.plugins.if$new, reason: invalid class name */
    public static class Cnew implements Func1<Completable.Operator, Completable.Operator> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Completable.Operator call(Completable.Operator operator) {
            return rx.plugins.Cnew.m39185for().m39192do().m3083if(operator);
        }
    }

    /* renamed from: rx.plugins.if$super, reason: invalid class name */
    public static class Csuper implements Func1<Subscription, Subscription> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(Subscription subscription) {
            return rx.plugins.Cnew.m39185for().m39193else().m4730new(subscription);
        }
    }

    /* renamed from: rx.plugins.if$this, reason: invalid class name */
    public static class Cthis implements Func1<Single.OnSubscribe, Single.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Single.OnSubscribe call(Single.OnSubscribe onSubscribe) {
            return new d(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$throw, reason: invalid class name */
    public static class Cthrow implements Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe> {
        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Completable.OnSubscribe call(Completable completable, Completable.OnSubscribe onSubscribe) {
            return rx.plugins.Cnew.m39185for().m39192do().m3084new(completable, onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$try, reason: invalid class name */
    public static class Ctry implements Func1<Observable.OnSubscribe, Observable.OnSubscribe> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable.OnSubscribe call(Observable.OnSubscribe onSubscribe) {
            return rx.plugins.Cnew.m39185for().m39196new().m3536do(onSubscribe);
        }
    }

    /* renamed from: rx.plugins.if$while, reason: invalid class name */
    public static class Cwhile implements Func1<Action0, Action0> {
        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Action0 call(Action0 action0) {
            return rx.plugins.Cnew.m39185for().m39188case().m4468catch(action0);
        }
    }

    static {
        m39161throws();
    }

    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    public static void A(Func1<Subscription, Subscription> func1) {
        if (f36128do) {
            return;
        }
        f36130final = func1;
    }

    public static void B(Func2<Single, Single.OnSubscribe, Single.OnSubscribe> func2) {
        if (f36128do) {
            return;
        }
        f36129else = func2;
    }

    public static void C(Func1<Throwable, Throwable> func1) {
        if (f36128do) {
            return;
        }
        f36143while = func1;
    }

    public static void D(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static Subscription a(Subscription subscription) {
        Func1<Subscription, Subscription> func1 = f36127const;
        return func1 != null ? func1.call(subscription) : subscription;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T> Completable.OnSubscribe m39127abstract(Completable completable, Completable.OnSubscribe onSubscribe) {
        Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe> func2 = f36132goto;
        return func2 != null ? func2.call(completable, onSubscribe) : onSubscribe;
    }

    public static <T> Observable.OnSubscribe<T> b(Observable<T> observable, Observable.OnSubscribe<T> onSubscribe) {
        Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> func2 = f36124case;
        return func2 != null ? func2.call(observable, onSubscribe) : onSubscribe;
    }

    /* renamed from: break, reason: not valid java name */
    public static Func0<? extends ScheduledExecutorService> m39128break() {
        return f36139super;
    }

    public static Action0 c(Action0 action0) {
        Func1<Action0, Action0> func1 = f36126class;
        return func1 != null ? func1.call(action0) : action0;
    }

    /* renamed from: case, reason: not valid java name */
    public static Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe> m39129case() {
        return f36132goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Func1<rx.Cif, rx.Cif> m39130catch() {
        return f36123break;
    }

    /* renamed from: class, reason: not valid java name */
    public static Func1<rx.Cif, rx.Cif> m39131class() {
        return f36125catch;
    }

    /* renamed from: const, reason: not valid java name */
    public static Func1<Observable.OnSubscribe, Observable.OnSubscribe> m39132const() {
        return f36131for;
    }

    /* renamed from: continue, reason: not valid java name */
    public static rx.Cif m39133continue(rx.Cif cif) {
        Func1<rx.Cif, rx.Cif> func1 = f36140this;
        return func1 != null ? func1.call(cif) : cif;
    }

    public static Throwable d(Throwable th) {
        Func1<Throwable, Throwable> func1 = f36143while;
        return func1 != null ? func1.call(th) : th;
    }

    /* renamed from: default, reason: not valid java name */
    public static void m39134default() {
        f36131for = new Ctry();
        f36136new = new Ccase();
        f36142try = new Celse();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m39135do() {
        if (f36128do) {
            return;
        }
        f36133if = null;
        f36131for = null;
        f36124case = null;
        f36127const = null;
        f36141throw = null;
        f36135native = null;
        f36136new = null;
        f36129else = null;
        f36130final = null;
        f36143while = null;
        f36137public = null;
        f36142try = null;
        f36132goto = null;
        f36134import = null;
        f36138return = null;
        f36140this = null;
        f36123break = null;
        f36125catch = null;
        f36126class = null;
        f36139super = null;
    }

    public static <T, R> Observable.Operator<R, T> e(Observable.Operator<R, T> operator) {
        Func1<Observable.Operator, Observable.Operator> func1 = f36137public;
        return func1 != null ? func1.call(operator) : operator;
    }

    /* renamed from: else, reason: not valid java name */
    public static Func1<Throwable, Throwable> m39136else() {
        return f36134import;
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m39137extends() {
        return f36128do;
    }

    public static Subscription f(Subscription subscription) {
        Func1<Subscription, Subscription> func1 = f36130final;
        return func1 != null ? func1.call(subscription) : subscription;
    }

    /* renamed from: final, reason: not valid java name */
    public static Func1<Observable.Operator, Observable.Operator> m39138final() {
        return f36135native;
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m39139finally() {
        f36128do = true;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m39140for() {
        if (f36128do) {
            return;
        }
        f36131for = new Cgoto();
        f36136new = new Cthis();
        f36142try = new Cbreak();
    }

    public static <T> Single.OnSubscribe<T> g(Single<T> single, Single.OnSubscribe<T> onSubscribe) {
        Func2<Single, Single.OnSubscribe, Single.OnSubscribe> func2 = f36129else;
        return func2 != null ? func2.call(single, onSubscribe) : onSubscribe;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Func1<rx.Cif, rx.Cif> m39141goto() {
        return f36140this;
    }

    public static void h() {
        if (f36128do) {
            return;
        }
        m39161throws();
        f36140this = null;
        f36123break = null;
        f36125catch = null;
        f36139super = null;
    }

    public static void i() {
        if (f36128do) {
            return;
        }
        m39134default();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m39142if() {
        if (f36128do) {
            return;
        }
        f36131for = null;
        f36136new = null;
        f36142try = null;
    }

    /* renamed from: implements, reason: not valid java name */
    public static rx.Cif m39143implements(rx.Cif cif) {
        Func1<rx.Cif, rx.Cif> func1 = f36125catch;
        return func1 != null ? func1.call(cif) : cif;
    }

    /* renamed from: import, reason: not valid java name */
    public static Func1<Action0, Action0> m39144import() {
        return f36126class;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Throwable m39145instanceof(Throwable th) {
        Func1<Throwable, Throwable> func1 = f36141throw;
        return func1 != null ? func1.call(th) : th;
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T> Single.OnSubscribe<T> m39146interface(Single.OnSubscribe<T> onSubscribe) {
        Func1<Single.OnSubscribe, Single.OnSubscribe> func1 = f36136new;
        return func1 != null ? func1.call(onSubscribe) : onSubscribe;
    }

    public static void j(Func1<Completable.OnSubscribe, Completable.OnSubscribe> func1) {
        if (f36128do) {
            return;
        }
        f36142try = func1;
    }

    public static void k(Func1<Completable.Operator, Completable.Operator> func1) {
        if (f36128do) {
            return;
        }
        f36138return = func1;
    }

    public static void l(Func2<Completable, Completable.OnSubscribe, Completable.OnSubscribe> func2) {
        if (f36128do) {
            return;
        }
        f36132goto = func2;
    }

    public static void m(Func1<Throwable, Throwable> func1) {
        if (f36128do) {
            return;
        }
        f36134import = func1;
    }

    public static void n(Func1<rx.Cif, rx.Cif> func1) {
        if (f36128do) {
            return;
        }
        f36140this = func1;
    }

    /* renamed from: native, reason: not valid java name */
    public static Func1<Single.OnSubscribe, Single.OnSubscribe> m39147native() {
        return f36136new;
    }

    /* renamed from: new, reason: not valid java name */
    public static Func1<Completable.OnSubscribe, Completable.OnSubscribe> m39148new() {
        return f36142try;
    }

    public static void o(Action1<Throwable> action1) {
        if (f36128do) {
            return;
        }
        f36133if = action1;
    }

    public static void p(Func0<? extends ScheduledExecutorService> func0) {
        if (f36128do) {
            return;
        }
        f36139super = func0;
    }

    /* renamed from: package, reason: not valid java name */
    public static Throwable m39149package(Throwable th) {
        Func1<Throwable, Throwable> func1 = f36134import;
        return func1 != null ? func1.call(th) : th;
    }

    /* renamed from: private, reason: not valid java name */
    public static <T, R> Completable.Operator m39150private(Completable.Operator operator) {
        Func1<Completable.Operator, Completable.Operator> func1 = f36138return;
        return func1 != null ? func1.call(operator) : operator;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m39151protected(Throwable th) {
        Action1<Throwable> action1 = f36133if;
        if (action1 != null) {
            try {
                action1.call(th);
                return;
            } catch (Throwable th2) {
                System.err.println("The onError handler threw an Exception. It shouldn't. => " + th2.getMessage());
                th2.printStackTrace();
                D(th2);
            }
        }
        D(th);
    }

    /* renamed from: public, reason: not valid java name */
    public static Func1<Observable.Operator, Observable.Operator> m39152public() {
        return f36137public;
    }

    public static void q(Func1<rx.Cif, rx.Cif> func1) {
        if (f36128do) {
            return;
        }
        f36123break = func1;
    }

    public static void r(Func1<rx.Cif, rx.Cif> func1) {
        if (f36128do) {
            return;
        }
        f36125catch = func1;
    }

    /* renamed from: return, reason: not valid java name */
    public static Func1<Subscription, Subscription> m39153return() {
        return f36130final;
    }

    public static void s(Func1<Observable.OnSubscribe, Observable.OnSubscribe> func1) {
        if (f36128do) {
            return;
        }
        f36131for = func1;
    }

    /* renamed from: static, reason: not valid java name */
    public static Func2<Single, Single.OnSubscribe, Single.OnSubscribe> m39154static() {
        return f36129else;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static Completable.OnSubscribe m39155strictfp(Completable.OnSubscribe onSubscribe) {
        Func1<Completable.OnSubscribe, Completable.OnSubscribe> func1 = f36142try;
        return func1 != null ? func1.call(onSubscribe) : onSubscribe;
    }

    /* renamed from: super, reason: not valid java name */
    public static Func1<Subscription, Subscription> m39156super() {
        return f36127const;
    }

    /* renamed from: switch, reason: not valid java name */
    public static Func1<Throwable, Throwable> m39157switch() {
        return f36143while;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T, R> Observable.Operator<R, T> m39158synchronized(Observable.Operator<R, T> operator) {
        Func1<Observable.Operator, Observable.Operator> func1 = f36135native;
        return func1 != null ? func1.call(operator) : operator;
    }

    public static void t(Func1<Observable.Operator, Observable.Operator> func1) {
        if (f36128do) {
            return;
        }
        f36135native = func1;
    }

    /* renamed from: this, reason: not valid java name */
    public static Action1<Throwable> m39159this() {
        return f36133if;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> m39160throw() {
        return f36124case;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m39161throws() {
        f36133if = new Ccatch();
        f36124case = new Cclass();
        f36127const = new Cconst();
        f36129else = new Cfinal();
        f36130final = new Csuper();
        f36132goto = new Cthrow();
        f36126class = new Cwhile();
        f36141throw = new Cimport();
        f36135native = new Cnative();
        f36143while = new Cdo();
        f36137public = new C0566if();
        f36134import = new Cfor();
        f36138return = new Cnew();
        m39134default();
    }

    /* renamed from: transient, reason: not valid java name */
    public static rx.Cif m39162transient(rx.Cif cif) {
        Func1<rx.Cif, rx.Cif> func1 = f36123break;
        return func1 != null ? func1.call(cif) : cif;
    }

    /* renamed from: try, reason: not valid java name */
    public static Func1<Completable.Operator, Completable.Operator> m39163try() {
        return f36138return;
    }

    public static void u(Func1<Subscription, Subscription> func1) {
        if (f36128do) {
            return;
        }
        f36127const = func1;
    }

    public static void v(Func2<Observable, Observable.OnSubscribe, Observable.OnSubscribe> func2) {
        if (f36128do) {
            return;
        }
        f36124case = func2;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m39164volatile(Observable.OnSubscribe<T> onSubscribe) {
        Func1<Observable.OnSubscribe, Observable.OnSubscribe> func1 = f36131for;
        return func1 != null ? func1.call(onSubscribe) : onSubscribe;
    }

    public static void w(Func1<Throwable, Throwable> func1) {
        if (f36128do) {
            return;
        }
        f36141throw = func1;
    }

    /* renamed from: while, reason: not valid java name */
    public static Func1<Throwable, Throwable> m39165while() {
        return f36141throw;
    }

    public static void x(Func1<Action0, Action0> func1) {
        if (f36128do) {
            return;
        }
        f36126class = func1;
    }

    public static void y(Func1<Single.OnSubscribe, Single.OnSubscribe> func1) {
        if (f36128do) {
            return;
        }
        f36136new = func1;
    }

    public static void z(Func1<Observable.Operator, Observable.Operator> func1) {
        if (f36128do) {
            return;
        }
        f36137public = func1;
    }
}
