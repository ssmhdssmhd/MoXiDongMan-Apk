package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableOperator;
import io.reactivex.CompletableSource;

/* loaded from: classes3.dex */
public final class wp extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f7584do;

    /* renamed from: if, reason: not valid java name */
    public final CompletableOperator f7585if;

    public wp(CompletableSource completableSource, CompletableOperator completableOperator) {
        this.f7584do = completableSource;
        this.f7585if = completableOperator;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        try {
            this.f7584do.subscribe(this.f7585if.apply(completableObserver));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }
}
