package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Observable;
import rx.Observer;
import rx.functions.Func0;
import rx.subjects.Celse;

/* loaded from: classes4.dex */
public final class e2<T, U> implements Observable.Operator<Observable<T>, T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f34702if = new Object();

    /* renamed from: do, reason: not valid java name */
    public final Func0<? extends Observable<? extends U>> f34703do;

    /* renamed from: rx.internal.operators.e2$do, reason: invalid class name */
    public static final class Cdo<T, U> extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T, U> f34704do;

        /* renamed from: if, reason: not valid java name */
        public boolean f34705if;

        public Cdo(Cif<T, U> cif) {
            this.f34704do = cif;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34705if) {
                return;
            }
            this.f34705if = true;
            this.f34704do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34704do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(U u) throws Throwable {
            if (this.f34705if) {
                return;
            }
            this.f34705if = true;
            this.f34704do.m38471else();
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.e2$if, reason: invalid class name */
    public static final class Cif<T, U> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public List<Object> f34706case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34707do;

        /* renamed from: else, reason: not valid java name */
        public final ww1 f34708else;

        /* renamed from: for, reason: not valid java name */
        public Observer<T> f34709for;

        /* renamed from: goto, reason: not valid java name */
        public final Func0<? extends Observable<? extends U>> f34710goto;

        /* renamed from: if, reason: not valid java name */
        public final Object f34711if = new Object();

        /* renamed from: new, reason: not valid java name */
        public Observable<T> f34712new;

        /* renamed from: try, reason: not valid java name */
        public boolean f34713try;

        public Cif(y22<? super Observable<T>> y22Var, Func0<? extends Observable<? extends U>> func0) {
            this.f34707do = new ax1(y22Var);
            ww1 ww1Var = new ww1();
            this.f34708else = ww1Var;
            this.f34710goto = func0;
            add(ww1Var);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38469case() {
            Observer<T> observer = this.f34709for;
            if (observer != null) {
                observer.onCompleted();
            }
            m38473if();
            this.f34707do.onNext(this.f34712new);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38470do() {
            Observer<T> observer = this.f34709for;
            this.f34709for = null;
            this.f34712new = null;
            if (observer != null) {
                observer.onCompleted();
            }
            this.f34707do.onCompleted();
            unsubscribe();
        }

        /* renamed from: else, reason: not valid java name */
        public void m38471else() throws Throwable {
            synchronized (this.f34711if) {
                if (this.f34713try) {
                    if (this.f34706case == null) {
                        this.f34706case = new ArrayList();
                    }
                    this.f34706case.add(e2.f34702if);
                    return;
                }
                List<Object> list = this.f34706case;
                this.f34706case = null;
                boolean z = true;
                this.f34713try = true;
                boolean z2 = true;
                while (true) {
                    try {
                        m38472for(list);
                        if (z2) {
                            m38469case();
                            z2 = false;
                        }
                        try {
                            synchronized (this.f34711if) {
                                try {
                                    List<Object> list2 = this.f34706case;
                                    this.f34706case = null;
                                    if (list2 == null) {
                                        this.f34713try = false;
                                        return;
                                    } else {
                                        if (this.f34707do.isUnsubscribed()) {
                                            synchronized (this.f34711if) {
                                                this.f34713try = false;
                                            }
                                            return;
                                        }
                                        list = list2;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    z = false;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (!z) {
                                            synchronized (this.f34711if) {
                                                this.f34713try = false;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        z = false;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: for, reason: not valid java name */
        public void m38472for(List<Object> list) {
            if (list == null) {
                return;
            }
            for (Object obj : list) {
                if (obj == e2.f34702if) {
                    m38469case();
                } else if (Creturn.m38685else(obj)) {
                    m38475try(Creturn.m38689new(obj));
                    return;
                } else {
                    if (Creturn.m38683case(obj)) {
                        m38470do();
                        return;
                    }
                    m38474new(obj);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38473if() {
            Celse celseG6 = Celse.g6();
            this.f34709for = celseG6;
            this.f34712new = celseG6;
            try {
                Observable<? extends U> observableCall = this.f34710goto.call();
                Cdo cdo = new Cdo(this);
                this.f34708else.m9298if(cdo);
                observableCall.r5(cdo);
            } catch (Throwable th) {
                this.f34707do.onError(th);
                unsubscribe();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m38474new(T t) {
            Observer<T> observer = this.f34709for;
            if (observer != null) {
                observer.onNext(t);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            synchronized (this.f34711if) {
                if (this.f34713try) {
                    if (this.f34706case == null) {
                        this.f34706case = new ArrayList();
                    }
                    this.f34706case.add(Creturn.m38688if());
                    return;
                }
                List<Object> list = this.f34706case;
                this.f34706case = null;
                this.f34713try = true;
                try {
                    m38472for(list);
                    m38470do();
                } catch (Throwable th) {
                    m38475try(th);
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this.f34711if) {
                if (this.f34713try) {
                    this.f34706case = Collections.singletonList(Creturn.m38686for(th));
                    return;
                }
                this.f34706case = null;
                this.f34713try = true;
                m38475try(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            synchronized (this.f34711if) {
                if (this.f34713try) {
                    if (this.f34706case == null) {
                        this.f34706case = new ArrayList();
                    }
                    this.f34706case.add(t);
                    return;
                }
                List<Object> list = this.f34706case;
                this.f34706case = null;
                boolean z = true;
                this.f34713try = true;
                boolean z2 = true;
                while (true) {
                    try {
                        m38472for(list);
                        if (z2) {
                            m38474new(t);
                            z2 = false;
                        }
                        try {
                            synchronized (this.f34711if) {
                                try {
                                    List<Object> list2 = this.f34706case;
                                    this.f34706case = null;
                                    if (list2 == null) {
                                        this.f34713try = false;
                                        return;
                                    } else {
                                        if (this.f34707do.isUnsubscribed()) {
                                            synchronized (this.f34711if) {
                                                this.f34713try = false;
                                            }
                                            return;
                                        }
                                        list = list2;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    z = false;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (!z) {
                                            synchronized (this.f34711if) {
                                                this.f34713try = false;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        z = false;
                    }
                }
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }

        /* renamed from: try, reason: not valid java name */
        public void m38475try(Throwable th) {
            Observer<T> observer = this.f34709for;
            this.f34709for = null;
            this.f34712new = null;
            if (observer != null) {
                observer.onError(th);
            }
            this.f34707do.onError(th);
            unsubscribe();
        }
    }

    public e2(Func0<? extends Observable<? extends U>> func0) {
        this.f34703do = func0;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<T>> y22Var) throws Throwable {
        Cif cif = new Cif(y22Var, this.f34703do);
        y22Var.add(cif);
        cif.m38471else();
        return cif;
    }
}
