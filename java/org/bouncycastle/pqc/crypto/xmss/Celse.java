package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ib1;
import org.bouncycastle.pqc.crypto.xmss.Cthrow;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private static final int f32410goto = 1;

    /* renamed from: case, reason: not valid java name */
    private final int f32411case;

    /* renamed from: else, reason: not valid java name */
    private final int f32412else;

    /* renamed from: try, reason: not valid java name */
    private final int f32413try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.else$if, reason: invalid class name */
    public static class Cif extends Cthrow.Cdo<Cif> {

        /* renamed from: case, reason: not valid java name */
        private int f32414case;

        /* renamed from: else, reason: not valid java name */
        private int f32415else;

        /* renamed from: try, reason: not valid java name */
        private int f32416try;

        public Cif() {
            super(1);
            this.f32416try = 0;
            this.f32414case = 0;
            this.f32415else = 0;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo35870case() {
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m35872final(int i) {
            this.f32416try = i;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m35873super(int i) {
            this.f32414case = i;
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m35874throw(int i) {
            this.f32415else = i;
            return this;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow.Cdo
        /* renamed from: try, reason: not valid java name */
        public Cthrow mo35875try() {
            return new Celse(this);
        }
    }

    private Celse(Cif cif) {
        super(cif);
        this.f32413try = cif.f32416try;
        this.f32411case = cif.f32414case;
        this.f32412else = cif.f32415else;
    }

    /* renamed from: case, reason: not valid java name */
    public int m35863case() {
        return this.f32413try;
    }

    /* renamed from: else, reason: not valid java name */
    public int m35864else() {
        return this.f32411case;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m35865goto() {
        return this.f32412else;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.Cthrow
    /* renamed from: try, reason: not valid java name */
    public byte[] mo35866try() {
        byte[] bArrMo35866try = super.mo35866try();
        ib1.m3348case(this.f32413try, bArrMo35866try, 16);
        ib1.m3348case(this.f32411case, bArrMo35866try, 20);
        ib1.m3348case(this.f32412else, bArrMo35866try, 24);
        return bArrMo35866try;
    }
}
