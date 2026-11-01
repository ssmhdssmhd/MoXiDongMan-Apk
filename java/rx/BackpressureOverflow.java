package rx;

import android.support.v4.zz0;

/* loaded from: classes4.dex */
public final class BackpressureOverflow {

    /* renamed from: do, reason: not valid java name */
    public static final Strategy f34170do;

    /* renamed from: for, reason: not valid java name */
    public static final Strategy f34171for;

    /* renamed from: if, reason: not valid java name */
    public static final Strategy f34172if;

    /* renamed from: new, reason: not valid java name */
    public static final Strategy f34173new;

    public interface Strategy {
        boolean mayAttemptDrop() throws zz0;
    }

    /* renamed from: rx.BackpressureOverflow$do, reason: invalid class name */
    public static final class Cdo implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f34174do = new Cdo();

        private Cdo() {
        }

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() {
            return false;
        }
    }

    /* renamed from: rx.BackpressureOverflow$for, reason: invalid class name */
    public static final class Cfor implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public static final Cfor f34175do = new Cfor();

        private Cfor() {
        }

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() throws zz0 {
            throw new zz0("Overflowed buffer");
        }
    }

    /* renamed from: rx.BackpressureOverflow$if, reason: invalid class name */
    public static final class Cif implements Strategy {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f34176do = new Cif();

        private Cif() {
        }

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() {
            return true;
        }
    }

    static {
        Cfor cfor = Cfor.f34175do;
        f34170do = cfor;
        f34172if = cfor;
        f34171for = Cif.f34176do;
        f34173new = Cdo.f34174do;
    }

    private BackpressureOverflow() {
        throw new IllegalStateException("No instances!");
    }
}
