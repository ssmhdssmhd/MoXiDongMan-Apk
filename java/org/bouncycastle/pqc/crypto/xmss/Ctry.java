package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ib1;
import org.bouncycastle.pqc.crypto.xmss.Cthrow;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private static final int f32528goto = 2;

    /* renamed from: this, reason: not valid java name */
    private static final int f32529this = 0;

    /* renamed from: case, reason: not valid java name */
    private final int f32530case;

    /* renamed from: else, reason: not valid java name */
    private final int f32531else;

    /* renamed from: try, reason: not valid java name */
    private final int f32532try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.try$if, reason: invalid class name */
    public static class Cif extends Cthrow.Cdo<Cif> {

        /* renamed from: case, reason: not valid java name */
        private int f32533case;

        /* renamed from: try, reason: not valid java name */
        private int f32534try;

        public Cif() {
            super(2);
            this.f32534try = 0;
            this.f32533case = 0;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo35870case() {
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m36062const(int i) {
            this.f32534try = i;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m36063final(int i) {
            this.f32533case = i;
            return this;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: try */
        public Cthrow mo35875try() {
            return new Ctry(this);
        }
    }

    private Ctry(Cif cif) {
        super(cif);
        this.f32532try = 0;
        this.f32530case = cif.f32534try;
        this.f32531else = cif.f32533case;
    }

    /* renamed from: case, reason: not valid java name */
    public int m36056case() {
        return this.f32532try;
    }

    /* renamed from: else, reason: not valid java name */
    public int m36057else() {
        return this.f32530case;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m36058goto() {
        return this.f32531else;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow
    /* renamed from: try */
    public byte[] mo35866try() {
        byte[] bArrMo35866try = super.mo35866try();
        ib1.m3348case(this.f32532try, bArrMo35866try, 16);
        ib1.m3348case(this.f32530case, bArrMo35866try, 20);
        ib1.m3348case(this.f32531else, bArrMo35866try, 24);
        return bArrMo35866try;
    }
}
