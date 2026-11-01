package android.support.v4;

import org.chromium.base.Callback;
import org.chromium.base.Promise;

/* loaded from: classes.dex */
public final /* synthetic */ class yf1 implements Callback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Promise f8203do;

    @Override // org.chromium.base.Callback
    public /* synthetic */ Runnable bind(Object obj) {
        return gf.m2653do(this, obj);
    }

    @Override // org.chromium.base.Callback
    public final void onResult(Object obj) {
        this.f8203do.m36926while((Exception) obj);
    }
}
