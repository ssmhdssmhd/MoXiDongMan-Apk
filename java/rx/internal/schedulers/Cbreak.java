package rx.internal.schedulers;

import android.support.v4.s80;
import rx.Cif;
import rx.functions.Action0;

/* renamed from: rx.internal.schedulers.break, reason: invalid class name */
/* loaded from: classes4.dex */
class Cbreak implements Action0 {

    /* renamed from: do, reason: not valid java name */
    private final Action0 f35690do;

    /* renamed from: for, reason: not valid java name */
    private final long f35691for;

    /* renamed from: if, reason: not valid java name */
    private final Cif.Cdo f35692if;

    public Cbreak(Action0 action0, Cif.Cdo cdo, long j) {
        this.f35690do = action0;
        this.f35692if = cdo;
        this.f35691for = j;
    }

    @Override // rx.functions.Action0
    public void call() throws InterruptedException {
        if (this.f35692if.isUnsubscribed()) {
            return;
        }
        long jMo38374do = this.f35691for - this.f35692if.mo38374do();
        if (jMo38374do > 0) {
            try {
                Thread.sleep(jMo38374do);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                s80.m7296for(e);
            }
        }
        if (this.f35692if.isUnsubscribed()) {
            return;
        }
        this.f35690do.call();
    }
}
