package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Observable;
import rx.Observer;
import rx.subjects.Celse;

/* loaded from: classes4.dex */
public final class d2<T, U> implements Observable.Operator<Observable<T>, T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f34649if = new Object();

    /* renamed from: do, reason: not valid java name */
    public final Observable<U> f34650do;

    /* renamed from: rx.internal.operators.d2$do, reason: invalid class name */
    public static final class Cdo<T, U> extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T> f34651do;

        public Cdo(Cif<T> cif) {
            this.f34651do = cif;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34651do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34651do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(U u) throws Throwable {
            this.f34651do.m38448else();
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.d2$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public List<Object> f34652case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34653do;

        /* renamed from: for, reason: not valid java name */
        public Observer<T> f34654for;

        /* renamed from: if, reason: not valid java name */
        public final Object f34655if = new Object();

        /* renamed from: new, reason: not valid java name */
        public Observable<T> f34656new;

        /* renamed from: try, reason: not valid java name */
        public boolean f34657try;

        public Cif(y22<? super Observable<T>> y22Var) {
            this.f34653do = new ax1(y22Var);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38446case() {
            Observer<T> observer = this.f34654for;
            if (observer != null) {
                observer.onCompleted();
            }
            m38450if();
            this.f34653do.onNext(this.f34656new);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38447do() {
            Observer<T> observer = this.f34654for;
            this.f34654for = null;
            this.f34656new = null;
            if (observer != null) {
                observer.onCompleted();
            }
            this.f34653do.onCompleted();
            unsubscribe();
        }

        /* renamed from: else, reason: not valid java name */
        public void m38448else() throws Throwable {
            synchronized (this.f34655if) {
                if (this.f34657try) {
                    if (this.f34652case == null) {
                        this.f34652case = new ArrayList();
                    }
                    this.f34652case.add(d2.f34649if);
                    return;
                }
                List<Object> list = this.f34652case;
                this.f34652case = null;
                boolean z = true;
                this.f34657try = true;
                boolean z2 = true;
                while (true) {
                    try {
                        m38449for(list);
                        if (z2) {
                            m38446case();
                            z2 = false;
                        }
                        try {
                            synchronized (this.f34655if) {
                                try {
                                    List<Object> list2 = this.f34652case;
                                    this.f34652case = null;
                                    if (list2 == null) {
                                        this.f34657try = false;
                                        return;
                                    } else {
                                        if (this.f34653do.isUnsubscribed()) {
                                            synchronized (this.f34655if) {
                                                this.f34657try = false;
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
                                            synchronized (this.f34655if) {
                                                this.f34657try = false;
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
        public void m38449for(List<Object> list) {
            if (list == null) {
                return;
            }
            for (Object obj : list) {
                if (obj == d2.f34649if) {
                    m38446case();
                } else if (Creturn.m38685else(obj)) {
                    m38452try(Creturn.m38689new(obj));
                    return;
                } else {
                    if (Creturn.m38683case(obj)) {
                        m38447do();
                        return;
                    }
                    m38451new(obj);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38450if() {
            Celse celseG6 = Celse.g6();
            this.f34654for = celseG6;
            this.f34656new = celseG6;
        }

        /* renamed from: new, reason: not valid java name */
        public void m38451new(T t) {
            Observer<T> observer = this.f34654for;
            if (observer != null) {
                observer.onNext(t);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            synchronized (this.f34655if) {
                if (this.f34657try) {
                    if (this.f34652case == null) {
                        this.f34652case = new ArrayList();
                    }
                    this.f34652case.add(Creturn.m38688if());
                    return;
                }
                List<Object> list = this.f34652case;
                this.f34652case = null;
                this.f34657try = true;
                try {
                    m38449for(list);
                    m38447do();
                } catch (Throwable th) {
                    m38452try(th);
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this.f34655if) {
                if (this.f34657try) {
                    this.f34652case = Collections.singletonList(Creturn.m38686for(th));
                    return;
                }
                this.f34652case = null;
                this.f34657try = true;
                m38452try(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            synchronized (this.f34655if) {
                if (this.f34657try) {
                    if (this.f34652case == null) {
                        this.f34652case = new ArrayList();
                    }
                    this.f34652case.add(t);
                    return;
                }
                List<Object> list = this.f34652case;
                this.f34652case = null;
                boolean z = true;
                this.f34657try = true;
                boolean z2 = true;
                while (true) {
                    try {
                        m38449for(list);
                        if (z2) {
                            m38451new(t);
                            z2 = false;
                        }
                        try {
                            synchronized (this.f34655if) {
                                try {
                                    List<Object> list2 = this.f34652case;
                                    this.f34652case = null;
                                    if (list2 == null) {
                                        this.f34657try = false;
                                        return;
                                    } else {
                                        if (this.f34653do.isUnsubscribed()) {
                                            synchronized (this.f34655if) {
                                                this.f34657try = false;
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
                                            synchronized (this.f34655if) {
                                                this.f34657try = false;
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
        public void m38452try(Throwable th) {
            Observer<T> observer = this.f34654for;
            this.f34654for = null;
            this.f34656new = null;
            if (observer != null) {
                observer.onError(th);
            }
            this.f34653do.onError(th);
            unsubscribe();
        }
    }

    public d2(Observable<U> observable) {
        this.f34650do = observable;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<T>> y22Var) throws Throwable {
        Cif cif = new Cif(y22Var);
        Cdo cdo = new Cdo(cif);
        y22Var.add(cif);
        y22Var.add(cdo);
        cif.m38448else();
        this.f34650do.r5(cdo);
        return cif;
    }
}
