package rx.observers;

import android.support.v4.s80;
import rx.Observer;
import rx.exceptions.Cif;
import rx.internal.operators.Creturn;

/* renamed from: rx.observers.for, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cfor<T> implements Observer<T> {

    /* renamed from: do, reason: not valid java name */
    private final Observer<? super T> f36095do;

    /* renamed from: for, reason: not valid java name */
    private volatile boolean f36096for;

    /* renamed from: if, reason: not valid java name */
    private boolean f36097if;

    /* renamed from: new, reason: not valid java name */
    private Cdo f36098new;

    /* renamed from: rx.observers.for$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Object[] f36099do;

        /* renamed from: if, reason: not valid java name */
        public int f36100if;

        /* renamed from: do, reason: not valid java name */
        public void m39107do(Object obj) {
            int i = this.f36100if;
            Object[] objArr = this.f36099do;
            if (objArr == null) {
                objArr = new Object[16];
                this.f36099do = objArr;
            } else if (i == objArr.length) {
                Object[] objArr2 = new Object[(i >> 2) + i];
                System.arraycopy(objArr, 0, objArr2, 0, i);
                this.f36099do = objArr2;
                objArr = objArr2;
            }
            objArr[i] = obj;
            this.f36100if = i + 1;
        }
    }

    public Cfor(Observer<? super T> observer) {
        this.f36095do = observer;
    }

    @Override // rx.Observer
    public void onCompleted() {
        if (this.f36096for) {
            return;
        }
        synchronized (this) {
            if (this.f36096for) {
                return;
            }
            this.f36096for = true;
            if (!this.f36097if) {
                this.f36097if = true;
                this.f36095do.onCompleted();
                return;
            }
            Cdo cdo = this.f36098new;
            if (cdo == null) {
                cdo = new Cdo();
                this.f36098new = cdo;
            }
            cdo.m39107do(Creturn.m38688if());
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        s80.m7301try(th);
        if (this.f36096for) {
            return;
        }
        synchronized (this) {
            if (this.f36096for) {
                return;
            }
            this.f36096for = true;
            if (!this.f36097if) {
                this.f36097if = true;
                this.f36095do.onError(th);
                return;
            }
            Cdo cdo = this.f36098new;
            if (cdo == null) {
                cdo = new Cdo();
                this.f36098new = cdo;
            }
            cdo.m39107do(Creturn.m38686for(th));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x002d, code lost:
    
        continue;
     */
    @Override // rx.Observer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onNext(T t) {
        if (this.f36096for) {
            return;
        }
        synchronized (this) {
            if (this.f36096for) {
                return;
            }
            if (this.f36097if) {
                Cdo cdo = this.f36098new;
                if (cdo == null) {
                    cdo = new Cdo();
                    this.f36098new = cdo;
                }
                cdo.m39107do(Creturn.m38682break(t));
                return;
            }
            this.f36097if = true;
            try {
                this.f36095do.onNext(t);
                while (true) {
                    synchronized (this) {
                        Cdo cdo2 = this.f36098new;
                        if (cdo2 == null) {
                            this.f36097if = false;
                            return;
                        }
                        this.f36098new = null;
                        for (Object obj : cdo2.f36099do) {
                            if (obj == null) {
                                break;
                            }
                            try {
                                if (Creturn.m38684do(this.f36095do, obj)) {
                                    this.f36096for = true;
                                    return;
                                }
                            } catch (Throwable th) {
                                this.f36096for = true;
                                s80.m7301try(th);
                                this.f36095do.onError(Cif.addValueAsLastCause(th, t));
                                return;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                this.f36096for = true;
                s80.m7300this(th2, this.f36095do, t);
            }
        }
    }
}
