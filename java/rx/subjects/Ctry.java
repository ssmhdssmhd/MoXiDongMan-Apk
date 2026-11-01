package rx.subjects;

import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.internal.operators.Creturn;

/* renamed from: rx.subjects.try, reason: invalid class name */
/* loaded from: classes4.dex */
final class Ctry<T> extends AtomicReference<Cif<T>> implements Observable.OnSubscribe<T> {
    private static final long serialVersionUID = 6035251036011671568L;
    public boolean active;
    public volatile Object latest;
    public Action1<Cfor<T>> onAdded;
    public Action1<Cfor<T>> onStart;
    public Action1<Cfor<T>> onTerminated;

    /* renamed from: rx.subjects.try$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f36213do;

        public Cdo(Cfor cfor) {
            this.f36213do = cfor;
        }

        @Override // rx.functions.Action0
        public void call() {
            Ctry.this.remove(this.f36213do);
        }
    }

    /* renamed from: rx.subjects.try$for, reason: invalid class name */
    public static final class Cfor<T> implements Observer<T> {

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f36215case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f36216do;

        /* renamed from: else, reason: not valid java name */
        private volatile Object f36217else;

        /* renamed from: for, reason: not valid java name */
        public boolean f36218for;

        /* renamed from: if, reason: not valid java name */
        public boolean f36219if = true;

        /* renamed from: new, reason: not valid java name */
        public List<Object> f36220new;

        /* renamed from: try, reason: not valid java name */
        public boolean f36221try;

        public Cfor(y22<? super T> y22Var) {
            this.f36216do = y22Var;
        }

        /* renamed from: case, reason: not valid java name */
        public <I> I m39214case() {
            return (I) this.f36217else;
        }

        /* renamed from: do, reason: not valid java name */
        public void m39215do(Object obj) {
            if (obj != null) {
                Creturn.m38684do(this.f36216do, obj);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m39216else(Object obj) {
            this.f36217else = obj;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x001c A[Catch: all -> 0x0017, TryCatch #2 {all -> 0x0017, blocks: (B:5:0x0005, B:6:0x0009, B:8:0x000f, B:12:0x001c, B:13:0x0020), top: B:43:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: for, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m39217for(List<Object> list, Object obj) throws Throwable {
            boolean z = true;
            boolean z2 = true;
            while (true) {
                if (list == null) {
                    if (z2) {
                    }
                    synchronized (this) {
                    }
                    throw th;
                }
                try {
                    Iterator<Object> it = list.iterator();
                    while (it.hasNext()) {
                        m39215do(it.next());
                    }
                    if (z2) {
                        m39215do(obj);
                        z2 = false;
                    }
                    try {
                        synchronized (this) {
                            try {
                                list = this.f36220new;
                                this.f36220new = null;
                                if (list == null) {
                                    this.f36218for = false;
                                    return;
                                }
                            } catch (Throwable th) {
                                th = th;
                                z = false;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z = false;
                }
                if (!z) {
                    synchronized (this) {
                        this.f36218for = false;
                    }
                }
                throw th;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m39218if(Object obj) throws Throwable {
            synchronized (this) {
                if (this.f36219if && !this.f36218for) {
                    this.f36219if = false;
                    this.f36218for = obj != null;
                    if (obj != null) {
                        m39217for(null, obj);
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m39219new(Object obj) {
            if (!this.f36221try) {
                synchronized (this) {
                    this.f36219if = false;
                    if (this.f36218for) {
                        if (this.f36220new == null) {
                            this.f36220new = new ArrayList();
                        }
                        this.f36220new.add(obj);
                        return;
                    }
                    this.f36221try = true;
                }
            }
            Creturn.m38684do(this.f36216do, obj);
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36216do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36216do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36216do.onNext(t);
        }

        /* renamed from: try, reason: not valid java name */
        public Observer<? super T> m39220try() {
            return this.f36216do;
        }
    }

    /* renamed from: rx.subjects.try$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: for, reason: not valid java name */
        public static final Cfor[] f36222for;

        /* renamed from: new, reason: not valid java name */
        public static final Cif f36223new;

        /* renamed from: try, reason: not valid java name */
        public static final Cif f36224try;

        /* renamed from: do, reason: not valid java name */
        public final boolean f36225do;

        /* renamed from: if, reason: not valid java name */
        public final Cfor[] f36226if;

        static {
            Cfor[] cforArr = new Cfor[0];
            f36222for = cforArr;
            f36223new = new Cif(true, cforArr);
            f36224try = new Cif(false, cforArr);
        }

        public Cif(boolean z, Cfor[] cforArr) {
            this.f36225do = z;
            this.f36226if = cforArr;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m39221do(Cfor cfor) {
            Cfor[] cforArr = this.f36226if;
            int length = cforArr.length;
            Cfor[] cforArr2 = new Cfor[length + 1];
            System.arraycopy(cforArr, 0, cforArr2, 0, length);
            cforArr2[length] = cfor;
            return new Cif(this.f36225do, cforArr2);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m39222if(Cfor cfor) {
            Cfor[] cforArr = this.f36226if;
            int length = cforArr.length;
            if (length == 1 && cforArr[0] == cfor) {
                return f36224try;
            }
            if (length == 0) {
                return this;
            }
            int i = length - 1;
            Cfor[] cforArr2 = new Cfor[i];
            int i2 = 0;
            for (Cfor cfor2 : cforArr) {
                if (cfor2 != cfor) {
                    if (i2 == i) {
                        return this;
                    }
                    cforArr2[i2] = cfor2;
                    i2++;
                }
            }
            if (i2 == 0) {
                return f36224try;
            }
            if (i2 < i) {
                Cfor[] cforArr3 = new Cfor[i2];
                System.arraycopy(cforArr2, 0, cforArr3, 0, i2);
                cforArr2 = cforArr3;
            }
            return new Cif(this.f36225do, cforArr2);
        }
    }

    public Ctry() {
        super(Cif.f36224try);
        this.active = true;
        this.onStart = rx.functions.Cdo.m38335do();
        this.onAdded = rx.functions.Cdo.m38335do();
        this.onTerminated = rx.functions.Cdo.m38335do();
    }

    public boolean add(Cfor<T> cfor) {
        Cif<T> cif;
        do {
            cif = get();
            if (cif.f36225do) {
                this.onTerminated.call(cfor);
                return false;
            }
        } while (!compareAndSet(cif, cif.m39221do(cfor)));
        this.onAdded.call(cfor);
        return true;
    }

    public void addUnsubscriber(y22<? super T> y22Var, Cfor<T> cfor) {
        y22Var.add(rx.subscriptions.Cfor.m39225do(new Cdo(cfor)));
    }

    public Object getLatest() {
        return this.latest;
    }

    public Cfor<T>[] next(Object obj) {
        setLatest(obj);
        return get().f36226if;
    }

    public Cfor<T>[] observers() {
        return get().f36226if;
    }

    public void remove(Cfor<T> cfor) {
        Cif<T> cif;
        Cif<T> cifM39222if;
        do {
            cif = get();
            if (cif.f36225do || (cifM39222if = cif.m39222if(cfor)) == cif) {
                return;
            }
        } while (!compareAndSet(cif, cifM39222if));
    }

    public void setLatest(Object obj) {
        this.latest = obj;
    }

    public Cfor<T>[] terminate(Object obj) {
        setLatest(obj);
        this.active = false;
        return get().f36225do ? Cif.f36222for : getAndSet(Cif.f36223new).f36226if;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super T> y22Var) {
        Cfor<T> cfor = new Cfor<>(y22Var);
        addUnsubscriber(y22Var, cfor);
        this.onStart.call(cfor);
        if (!y22Var.isUnsubscribed() && add(cfor) && y22Var.isUnsubscribed()) {
            remove(cfor);
        }
    }
}
