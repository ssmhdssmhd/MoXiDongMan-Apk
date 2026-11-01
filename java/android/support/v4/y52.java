package android.support.v4;

import com.uber.autodispose.ScopeProvider;
import io.reactivex.CompletableSource;
import io.reactivex.subjects.Cfor;

/* loaded from: classes2.dex */
public final class y52 implements ScopeProvider {

    /* renamed from: do, reason: not valid java name */
    private final Cfor f8140do;

    private y52(np npVar) {
        Cfor cforL0 = Cfor.l0();
        this.f8140do = cforL0;
        npVar.subscribe(cforL0);
    }

    /* renamed from: do, reason: not valid java name */
    public static y52 m9760do() {
        return m9761if(Cfor.l0());
    }

    /* renamed from: if, reason: not valid java name */
    public static y52 m9761if(np npVar) {
        return new y52(npVar);
    }

    /* renamed from: for, reason: not valid java name */
    public void m9762for() {
        this.f8140do.onComplete();
    }

    @Override // com.uber.autodispose.ScopeProvider
    public CompletableSource requestScope() {
        return this.f8140do;
    }
}
