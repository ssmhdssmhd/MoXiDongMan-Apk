package android.support.v4;

import android.support.v4.rj2;
import android.support.v4.uf1;
import java.io.IOException;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public abstract class f4<T> {

    /* renamed from: do, reason: not valid java name */
    private uf1 f1681do;

    /* renamed from: if, reason: not valid java name */
    private boolean f1682if;

    public f4(uf1 uf1Var, boolean z) {
        this.f1681do = uf1Var;
        this.f1682if = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m2132case(Object obj) {
        try {
            m2134else(obj, this.f1681do);
        } catch (rj2 unused) {
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m2134else(T t, uf1 uf1Var) throws rj2 {
        try {
            mo494new(t, uf1Var);
            uf1Var.m8412do();
        } catch (rj2 e) {
            uf1Var.m8416if(e);
            throw e;
        } catch (Exception e2) {
            uf1Var.m8416if(e2);
            throw new rj2(e2);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m2135for(final T t) throws rj2 {
        this.f1681do.m8414for();
        this.f1681do.m8422static(uf1.Cif.BUSY);
        this.f1681do.m8426throw(mo173try());
        if (!this.f1682if) {
            m2134else(t, this.f1681do);
            return;
        }
        this.f1681do.m8424switch(mo493if(t));
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: android.support.v4.e4
            @Override // java.lang.Runnable
            public final void run() {
                this.f1245do.m2132case(t);
            }
        });
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2136goto() throws rj2 {
        if (this.f1681do.m8410class()) {
            this.f1681do.m8421return(uf1.Cdo.CANCELLED);
            this.f1681do.m8422static(uf1.Cif.READY);
            throw new rj2("Task cancelled", rj2.Cdo.TASK_CANCELLED_EXCEPTION);
        }
    }

    /* renamed from: if */
    public abstract long mo493if(T t) throws rj2;

    /* renamed from: new */
    public abstract void mo494new(T t, uf1 uf1Var) throws IOException;

    /* renamed from: try */
    public abstract uf1.Cfor mo173try();
}
