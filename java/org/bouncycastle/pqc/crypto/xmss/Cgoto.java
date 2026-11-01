package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ib1;
import org.bouncycastle.pqc.crypto.xmss.Cthrow;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private static final int f32422goto = 0;

    /* renamed from: case, reason: not valid java name */
    private final int f32423case;

    /* renamed from: else, reason: not valid java name */
    private final int f32424else;

    /* renamed from: try, reason: not valid java name */
    private final int f32425try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.goto$if, reason: invalid class name */
    public static class Cif extends Cthrow.Cdo<Cif> {

        /* renamed from: case, reason: not valid java name */
        private int f32426case;

        /* renamed from: else, reason: not valid java name */
        private int f32427else;

        /* renamed from: try, reason: not valid java name */
        private int f32428try;

        public Cif() {
            super(0);
            this.f32428try = 0;
            this.f32426case = 0;
            this.f32427else = 0;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo35870case() {
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m35893final(int i) {
            this.f32426case = i;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m35894super(int i) {
            this.f32427else = i;
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m35895throw(int i) {
            this.f32428try = i;
            return this;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: try */
        public Cthrow mo35875try() {
            return new Cgoto(this);
        }
    }

    private Cgoto(Cif cif) {
        super(cif);
        this.f32425try = cif.f32428try;
        this.f32423case = cif.f32426case;
        this.f32424else = cif.f32427else;
    }

    /* renamed from: case, reason: not valid java name */
    public int m35886case() {
        return this.f32423case;
    }

    /* renamed from: else, reason: not valid java name */
    public int m35887else() {
        return this.f32424else;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m35888goto() {
        return this.f32425try;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow
    /* renamed from: try */
    public byte[] mo35866try() {
        byte[] bArrMo35866try = super.mo35866try();
        ib1.m3348case(this.f32425try, bArrMo35866try, 16);
        ib1.m3348case(this.f32423case, bArrMo35866try, 20);
        ib1.m3348case(this.f32424else, bArrMo35866try, 24);
        return bArrMo35866try;
    }
}
