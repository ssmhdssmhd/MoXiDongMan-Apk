package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.Observer;
import rx.functions.Action0;
import rx.subjects.Celse;

/* loaded from: classes4.dex */
public final class h2<T> implements Observable.Operator<Observable<T>, T> {

    /* renamed from: case, reason: not valid java name */
    public static final Object f34869case = new Object();

    /* renamed from: do, reason: not valid java name */
    public final long f34870do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f34871for;

    /* renamed from: if, reason: not valid java name */
    public final long f34872if;

    /* renamed from: new, reason: not valid java name */
    public final rx.Cif f34873new;

    /* renamed from: try, reason: not valid java name */
    public final int f34874try;

    /* renamed from: rx.internal.operators.h2$do, reason: invalid class name */
    public static final class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f34875do;

        /* renamed from: for, reason: not valid java name */
        public int f34876for;

        /* renamed from: if, reason: not valid java name */
        public final Observable<T> f34877if;

        public Cdo(Observer<T> observer, Observable<T> observable) {
            this.f34875do = new rx.observers.Cfor(observer);
            this.f34877if = observable;
        }
    }

    /* renamed from: rx.internal.operators.h2$for, reason: invalid class name */
    public final class Cfor extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34879do;

        /* renamed from: for, reason: not valid java name */
        public final Object f34880for;

        /* renamed from: if, reason: not valid java name */
        public final Cif.Cdo f34881if;

        /* renamed from: new, reason: not valid java name */
        public final List<Cdo<T>> f34882new;

        /* renamed from: try, reason: not valid java name */
        public boolean f34883try;

        /* renamed from: rx.internal.operators.h2$for$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cfor.this.m38539for();
            }
        }

        /* renamed from: rx.internal.operators.h2$for$if, reason: invalid class name */
        public class Cif implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cdo f34885do;

            public Cif(Cdo cdo) {
                this.f34885do = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cfor.this.m38541new(this.f34885do);
            }
        }

        public Cfor(y22<? super Observable<T>> y22Var, Cif.Cdo cdo) {
            super(y22Var);
            this.f34879do = y22Var;
            this.f34881if = cdo;
            this.f34880for = new Object();
            this.f34882new = new LinkedList();
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo<T> m38538do() {
            Celse celseG6 = Celse.g6();
            return new Cdo<>(celseG6, celseG6);
        }

        /* renamed from: for, reason: not valid java name */
        public void m38539for() {
            Cdo<T> cdoM38538do = m38538do();
            synchronized (this.f34880for) {
                if (this.f34883try) {
                    return;
                }
                this.f34882new.add(cdoM38538do);
                try {
                    this.f34879do.onNext(cdoM38538do.f34877if);
                    Cif.Cdo cdo = this.f34881if;
                    Cif cif = new Cif(cdoM38538do);
                    h2 h2Var = h2.this;
                    cdo.mo38375for(cif, h2Var.f34870do, h2Var.f34871for);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38540if() {
            Cif.Cdo cdo = this.f34881if;
            Cdo cdo2 = new Cdo();
            h2 h2Var = h2.this;
            long j = h2Var.f34872if;
            cdo.mo38377new(cdo2, j, j, h2Var.f34871for);
        }

        /* renamed from: new, reason: not valid java name */
        public void m38541new(Cdo<T> cdo) {
            boolean z;
            synchronized (this.f34880for) {
                if (this.f34883try) {
                    return;
                }
                Iterator<Cdo<T>> it = this.f34882new.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next() == cdo) {
                        z = true;
                        it.remove();
                        break;
                    }
                }
                if (z) {
                    cdo.f34875do.onCompleted();
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            synchronized (this.f34880for) {
                if (this.f34883try) {
                    return;
                }
                this.f34883try = true;
                ArrayList arrayList = new ArrayList(this.f34882new);
                this.f34882new.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Cdo) it.next()).f34875do.onCompleted();
                }
                this.f34879do.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this.f34880for) {
                if (this.f34883try) {
                    return;
                }
                this.f34883try = true;
                ArrayList arrayList = new ArrayList(this.f34882new);
                this.f34882new.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Cdo) it.next()).f34875do.onError(th);
                }
                this.f34879do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this.f34880for) {
                if (this.f34883try) {
                    return;
                }
                ArrayList<Cdo> arrayList = new ArrayList(this.f34882new);
                Iterator<Cdo<T>> it = this.f34882new.iterator();
                while (it.hasNext()) {
                    Cdo<T> next = it.next();
                    int i = next.f34876for + 1;
                    next.f34876for = i;
                    if (i == h2.this.f34874try) {
                        it.remove();
                    }
                }
                for (Cdo cdo : arrayList) {
                    cdo.f34875do.onNext(t);
                    if (cdo.f34876for == h2.this.f34874try) {
                        cdo.f34875do.onCompleted();
                    }
                }
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.h2$if, reason: invalid class name */
    public final class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34888do;

        /* renamed from: if, reason: not valid java name */
        public final Cif.Cdo f34891if;

        /* renamed from: new, reason: not valid java name */
        public List<Object> f34892new;

        /* renamed from: try, reason: not valid java name */
        public boolean f34893try;

        /* renamed from: for, reason: not valid java name */
        public final Object f34890for = new Object();

        /* renamed from: case, reason: not valid java name */
        public volatile Cnew<T> f34887case = Cnew.m38549for();

        /* renamed from: rx.internal.operators.h2$if$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ h2 f34894do;

            public Cdo(h2 h2Var) {
                this.f34894do = h2Var;
            }

            @Override // rx.functions.Action0
            public void call() {
                if (Cif.this.f34887case.f34898do == null) {
                    Cif.this.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.h2$if$if, reason: invalid class name and collision with other inner class name */
        public class C0526if implements Action0 {
            public C0526if() {
            }

            @Override // rx.functions.Action0
            public void call() throws Throwable {
                Cif.this.m38548try();
            }
        }

        public Cif(y22<? super Observable<T>> y22Var, Cif.Cdo cdo) {
            this.f34888do = new ax1(y22Var);
            this.f34891if = cdo;
            y22Var.add(rx.subscriptions.Cfor.m39225do(new Cdo(h2.this)));
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m38542case() {
            Observer<T> observer = this.f34887case.f34898do;
            if (observer != null) {
                observer.onCompleted();
            }
            if (this.f34888do.isUnsubscribed()) {
                this.f34887case = this.f34887case.m38550do();
                unsubscribe();
                return false;
            }
            Celse celseG6 = Celse.g6();
            this.f34887case = this.f34887case.m38551if(celseG6, celseG6);
            this.f34888do.onNext(celseG6);
            return true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38543do() {
            Observer<T> observer = this.f34887case.f34898do;
            this.f34887case = this.f34887case.m38550do();
            if (observer != null) {
                observer.onCompleted();
            }
            this.f34888do.onCompleted();
            unsubscribe();
        }

        /* renamed from: else, reason: not valid java name */
        public void m38544else() {
            Cif.Cdo cdo = this.f34891if;
            C0526if c0526if = new C0526if();
            h2 h2Var = h2.this;
            cdo.mo38377new(c0526if, 0L, h2Var.f34870do, h2Var.f34871for);
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m38545for(T t) {
            Cnew<T> cnewM38552new;
            Cnew<T> cnew = this.f34887case;
            if (cnew.f34898do == null) {
                if (!m38542case()) {
                    return false;
                }
                cnew = this.f34887case;
            }
            cnew.f34898do.onNext(t);
            if (cnew.f34899for == h2.this.f34874try - 1) {
                cnew.f34898do.onCompleted();
                cnewM38552new = cnew.m38550do();
            } else {
                cnewM38552new = cnew.m38552new();
            }
            this.f34887case = cnewM38552new;
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
        
            return true;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean m38546if(List<Object> list) {
            if (list == null) {
                return true;
            }
            Iterator<Object> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (next == h2.f34869case) {
                    if (!m38542case()) {
                        return false;
                    }
                } else {
                    if (Creturn.m38685else(next)) {
                        m38547new(Creturn.m38689new(next));
                        break;
                    }
                    if (Creturn.m38683case(next)) {
                        m38543do();
                        break;
                    }
                    if (!m38545for(next)) {
                        return false;
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m38547new(Throwable th) {
            Observer<T> observer = this.f34887case.f34898do;
            this.f34887case = this.f34887case.m38550do();
            if (observer != null) {
                observer.onError(th);
            }
            this.f34888do.onError(th);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onCompleted() {
            synchronized (this.f34890for) {
                if (this.f34893try) {
                    if (this.f34892new == null) {
                        this.f34892new = new ArrayList();
                    }
                    this.f34892new.add(Creturn.m38688if());
                    return;
                }
                List<Object> list = this.f34892new;
                this.f34892new = null;
                this.f34893try = true;
                try {
                    m38546if(list);
                    m38543do();
                } catch (Throwable th) {
                    m38547new(th);
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this.f34890for) {
                if (this.f34893try) {
                    this.f34892new = Collections.singletonList(Creturn.m38686for(th));
                    return;
                }
                this.f34892new = null;
                this.f34893try = true;
                m38547new(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            List<Object> list;
            synchronized (this.f34890for) {
                if (this.f34893try) {
                    if (this.f34892new == null) {
                        this.f34892new = new ArrayList();
                    }
                    this.f34892new.add(t);
                    return;
                }
                boolean z = true;
                this.f34893try = true;
                try {
                    if (!m38545for(t)) {
                        synchronized (this.f34890for) {
                            this.f34893try = false;
                        }
                        return;
                    }
                    do {
                        try {
                            synchronized (this.f34890for) {
                                try {
                                    list = this.f34892new;
                                    if (list == null) {
                                        this.f34893try = false;
                                        return;
                                    }
                                    this.f34892new = null;
                                } catch (Throwable th) {
                                    th = th;
                                    z = false;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (!z) {
                                            synchronized (this.f34890for) {
                                                this.f34893try = false;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } while (m38546if(list));
                    synchronized (this.f34890for) {
                        this.f34893try = false;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z = false;
                }
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }

        /* renamed from: try, reason: not valid java name */
        public void m38548try() throws Throwable {
            boolean z;
            List<Object> list;
            synchronized (this.f34890for) {
                if (this.f34893try) {
                    if (this.f34892new == null) {
                        this.f34892new = new ArrayList();
                    }
                    this.f34892new.add(h2.f34869case);
                    return;
                }
                boolean z2 = true;
                this.f34893try = true;
                try {
                    if (!m38542case()) {
                        synchronized (this.f34890for) {
                            this.f34893try = false;
                        }
                        return;
                    }
                    do {
                        try {
                            synchronized (this.f34890for) {
                                try {
                                    list = this.f34892new;
                                    if (list == null) {
                                        this.f34893try = false;
                                        return;
                                    }
                                    this.f34892new = null;
                                } catch (Throwable th) {
                                    th = th;
                                    z2 = false;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        z = z2;
                                        th = th2;
                                        if (!z) {
                                            synchronized (this.f34890for) {
                                                this.f34893try = false;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } while (m38546if(list));
                    synchronized (this.f34890for) {
                        this.f34893try = false;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z = false;
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.h2$new, reason: invalid class name */
    public static final class Cnew<T> {

        /* renamed from: new, reason: not valid java name */
        public static final Cnew<Object> f34897new = new Cnew<>(null, null, 0);

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f34898do;

        /* renamed from: for, reason: not valid java name */
        public final int f34899for;

        /* renamed from: if, reason: not valid java name */
        public final Observable<T> f34900if;

        public Cnew(Observer<T> observer, Observable<T> observable, int i) {
            this.f34898do = observer;
            this.f34900if = observable;
            this.f34899for = i;
        }

        /* renamed from: for, reason: not valid java name */
        public static <T> Cnew<T> m38549for() {
            return (Cnew<T>) f34897new;
        }

        /* renamed from: do, reason: not valid java name */
        public Cnew<T> m38550do() {
            return m38549for();
        }

        /* renamed from: if, reason: not valid java name */
        public Cnew<T> m38551if(Observer<T> observer, Observable<T> observable) {
            return new Cnew<>(observer, observable, 0);
        }

        /* renamed from: new, reason: not valid java name */
        public Cnew<T> m38552new() {
            return new Cnew<>(this.f34898do, this.f34900if, this.f34899for + 1);
        }
    }

    public h2(long j, long j2, TimeUnit timeUnit, int i, rx.Cif cif) {
        this.f34870do = j;
        this.f34872if = j2;
        this.f34871for = timeUnit;
        this.f34874try = i;
        this.f34873new = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<T>> y22Var) {
        Cif.Cdo cdoMo971do = this.f34873new.mo971do();
        if (this.f34870do == this.f34872if) {
            Cif cif = new Cif(y22Var, cdoMo971do);
            cif.add(cdoMo971do);
            cif.m38544else();
            return cif;
        }
        Cfor cfor = new Cfor(y22Var, cdoMo971do);
        cfor.add(cdoMo971do);
        cfor.m38539for();
        cfor.m38540if();
        return cfor;
    }
}
