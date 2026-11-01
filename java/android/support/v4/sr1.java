package android.support.v4;

import java.util.Arrays;
import rx.exceptions.Cdo;
import rx.plugins.Cif;
import rx.plugins.Cnew;

/* loaded from: classes4.dex */
public class sr1<T> extends y22<T> {

    /* renamed from: do, reason: not valid java name */
    private final y22<? super T> f6240do;

    /* renamed from: if, reason: not valid java name */
    public boolean f6241if;

    public sr1(y22<? super T> y22Var) {
        super(y22Var);
        this.f6240do = y22Var;
    }

    /* renamed from: do, reason: not valid java name */
    public void m7574do(Throwable th) {
        Cnew.m39185for().m39195if().m39123do(th);
        try {
            this.f6240do.onError(th);
            try {
                unsubscribe();
            } catch (Throwable th2) {
                Cif.m39151protected(th2);
                throw new x61(th2);
            }
        } catch (y61 e) {
            try {
                unsubscribe();
                throw e;
            } catch (Throwable th3) {
                Cif.m39151protected(th3);
                throw new y61("Observer.onError not implemented and error while unsubscribing.", new Cdo(Arrays.asList(th, th3)));
            }
        } catch (Throwable th4) {
            Cif.m39151protected(th4);
            try {
                unsubscribe();
                throw new x61("Error occurred when trying to propagate error to Observer.onError", new Cdo(Arrays.asList(th, th4)));
            } catch (Throwable th5) {
                Cif.m39151protected(th5);
                throw new x61("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new Cdo(Arrays.asList(th, th4, th5)));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public y22<? super T> m7575if() {
        return this.f6240do;
    }

    @Override // rx.Observer
    public void onCompleted() {
        qc2 qc2Var;
        if (this.f6241if) {
            return;
        }
        this.f6241if = true;
        try {
            this.f6240do.onCompleted();
            try {
                unsubscribe();
            } finally {
            }
        } catch (Throwable th) {
            try {
                s80.m7301try(th);
                Cif.m39151protected(th);
                throw new w61(th.getMessage(), th);
            } catch (Throwable th2) {
                try {
                    unsubscribe();
                    throw th2;
                } finally {
                }
            }
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        s80.m7301try(th);
        if (this.f6241if) {
            return;
        }
        this.f6241if = true;
        m7574do(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        try {
            if (this.f6241if) {
                return;
            }
            this.f6240do.onNext(t);
        } catch (Throwable th) {
            s80.m7297goto(th, this);
        }
    }
}
