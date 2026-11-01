package org.bouncycastle.crypto.util;

import android.support.v4.u91;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;

/* renamed from: org.bouncycastle.crypto.util.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow extends u91 {

    /* renamed from: for, reason: not valid java name */
    private final int f30898for;

    /* renamed from: if, reason: not valid java name */
    private final int f30899if;

    /* renamed from: new, reason: not valid java name */
    private final int f30900new;

    /* renamed from: try, reason: not valid java name */
    private final int f30901try;

    /* renamed from: org.bouncycastle.crypto.util.throw$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final int f30902do;

        /* renamed from: for, reason: not valid java name */
        private final int f30903for;

        /* renamed from: if, reason: not valid java name */
        private final int f30904if;

        /* renamed from: new, reason: not valid java name */
        private int f30905new = 16;

        public Cif(int i, int i2, int i3) {
            if (i <= 1 || !m34513case(i)) {
                throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
            }
            this.f30902do = i;
            this.f30904if = i2;
            this.f30903for = i3;
        }

        /* renamed from: case, reason: not valid java name */
        private static boolean m34513case(int i) {
            return (i & (i + (-1))) == 0;
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m34518else(int i) {
            this.f30905new = i;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cthrow m34519try() {
            return new Cthrow(this);
        }
    }

    private Cthrow(Cif cif) {
        super(MiscObjectIdentifiers.id_scrypt);
        this.f30899if = cif.f30902do;
        this.f30898for = cif.f30904if;
        this.f30900new = cif.f30903for;
        this.f30901try = cif.f30905new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m34509for() {
        return this.f30899if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m34510if() {
        return this.f30898for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m34511new() {
        return this.f30900new;
    }

    /* renamed from: try, reason: not valid java name */
    public int m34512try() {
        return this.f30901try;
    }
}
