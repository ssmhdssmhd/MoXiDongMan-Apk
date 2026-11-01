package rx.subscriptions;

import com.umeng.analytics.pro.ak;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;

/* renamed from: rx.subscriptions.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif implements Subscription {

    /* renamed from: for, reason: not valid java name */
    public static final C0573if f36231for = new C0573if(false, 0);

    /* renamed from: do, reason: not valid java name */
    private final Subscription f36232do;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<C0573if> f36233if = new AtomicReference<>(f36231for);

    /* renamed from: rx.subscriptions.if$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 7005765588239987643L;
        public final Cif parent;

        public Cdo(Cif cif) {
            this.parent = cif;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() != 0;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(0, 1)) {
                this.parent.m39232if();
            }
        }
    }

    /* renamed from: rx.subscriptions.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0573if {

        /* renamed from: do, reason: not valid java name */
        public final boolean f36234do;

        /* renamed from: if, reason: not valid java name */
        public final int f36235if;

        public C0573if(boolean z, int i) {
            this.f36234do = z;
            this.f36235if = i;
        }

        /* renamed from: do, reason: not valid java name */
        public C0573if m39233do() {
            return new C0573if(this.f36234do, this.f36235if + 1);
        }

        /* renamed from: for, reason: not valid java name */
        public C0573if m39234for() {
            return new C0573if(true, this.f36235if);
        }

        /* renamed from: if, reason: not valid java name */
        public C0573if m39235if() {
            return new C0573if(this.f36234do, this.f36235if - 1);
        }
    }

    public Cif(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException(ak.aB);
        }
        this.f36232do = subscription;
    }

    /* renamed from: for, reason: not valid java name */
    private void m39230for(C0573if c0573if) {
        if (c0573if.f36234do && c0573if.f36235if == 0) {
            this.f36232do.unsubscribe();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Subscription m39231do() {
        C0573if c0573if;
        AtomicReference<C0573if> atomicReference = this.f36233if;
        do {
            c0573if = atomicReference.get();
            if (c0573if.f36234do) {
                return Cfor.m39229try();
            }
        } while (!atomicReference.compareAndSet(c0573if, c0573if.m39233do()));
        return new Cdo(this);
    }

    /* renamed from: if, reason: not valid java name */
    public void m39232if() {
        C0573if c0573if;
        C0573if c0573ifM39235if;
        AtomicReference<C0573if> atomicReference = this.f36233if;
        do {
            c0573if = atomicReference.get();
            c0573ifM39235if = c0573if.m39235if();
        } while (!atomicReference.compareAndSet(c0573if, c0573ifM39235if));
        m39230for(c0573ifM39235if);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f36233if.get().f36234do;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        C0573if c0573if;
        C0573if c0573ifM39234for;
        AtomicReference<C0573if> atomicReference = this.f36233if;
        do {
            c0573if = atomicReference.get();
            if (c0573if.f36234do) {
                return;
            } else {
                c0573ifM39234for = c0573if.m39234for();
            }
        } while (!atomicReference.compareAndSet(c0573if, c0573ifM39234for));
        m39230for(c0573ifM39234for);
    }
}
