package android.support.v4;

import androidx.annotation.VisibleForTesting;

/* loaded from: classes3.dex */
public class e41 {

    /* renamed from: do, reason: not valid java name */
    private Long f1253do;

    public e41() {
        m1651for();
    }

    /* renamed from: for, reason: not valid java name */
    private void m1651for() {
        if (this.f1253do == null) {
            this.f1253do = Long.valueOf(Thread.currentThread().getId());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized boolean m1652do() {
        m1651for();
        return this.f1253do.equals(Long.valueOf(Thread.currentThread().getId()));
    }

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public synchronized void m1653if() {
        this.f1253do = null;
    }
}
