package android.support.v4;

import org.chromium.base.Callback;

/* loaded from: classes3.dex */
public final /* synthetic */ class gf {
    /* renamed from: do, reason: not valid java name */
    public static Runnable m2653do(final Callback _this, final Object obj) {
        return new Runnable() { // from class: android.support.v4.ff
            @Override // java.lang.Runnable
            public final void run() {
                _this.onResult(obj);
            }
        };
    }
}
