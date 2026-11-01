package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ib1;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Cabstract;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue extends Cabstract implements XMSSStoreableObjectInterface {

    /* renamed from: new, reason: not valid java name */
    private final int f32404new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f32405try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.continue$if, reason: invalid class name */
    public static class Cif extends Cabstract.Cdo {

        /* renamed from: case, reason: not valid java name */
        private int f32406case;

        /* renamed from: else, reason: not valid java name */
        private byte[] f32407else;

        /* renamed from: try, reason: not valid java name */
        private final Cfinally f32408try;

        public Cif(Cfinally cfinally) {
            super(cfinally);
            this.f32406case = 0;
            this.f32407else = null;
            this.f32408try = cfinally;
        }

        @Override // org.bouncycastle.pqc.crypto.xmss.Cabstract.Cdo
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccontinue mo35833try() {
            return new Ccontinue(this);
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m35855class(int i) {
            this.f32406case = i;
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m35856const(byte[] bArr) {
            this.f32407else = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m35857final(byte[] bArr) {
            Objects.requireNonNull(bArr, "signature == null");
            int iM35882for = this.f32408try.m35882for();
            int iM35844for = this.f32408try.m35880case().m36042try().m35844for();
            int iM35884new = this.f32408try.m35884new() * iM35882for;
            this.f32406case = ib1.m3354do(bArr, 0);
            this.f32407else = Cvolatile.m36080this(bArr, 4, iM35882for);
            m35831else(Cvolatile.m36080this(bArr, 4 + iM35882for, (iM35844for * iM35882for) + iM35884new));
            return this;
        }
    }

    private Ccontinue(Cif cif) {
        super(cif);
        this.f32404new = cif.f32406case;
        int iM35882for = m35825if().m35882for();
        byte[] bArr = cif.f32407else;
        if (bArr == null) {
            this.f32405try = new byte[iM35882for];
        } else {
            if (bArr.length != iM35882for) {
                throw new IllegalArgumentException("size of random needs to be equal to size of digest");
            }
            this.f32405try = bArr;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public int m35850new() {
        return this.f32404new;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.Cabstract, org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35882for = m35825if().m35882for();
        byte[] bArr = new byte[iM35882for + 4 + (m35825if().m35880case().m36042try().m35844for() * iM35882for) + (m35825if().m35884new() * iM35882for)];
        ib1.m3348case(this.f32404new, bArr, 0);
        Cvolatile.m36065case(bArr, this.f32405try, 4);
        int i = 4 + iM35882for;
        for (byte[] bArr2 : m35824for().m35878do()) {
            Cvolatile.m36065case(bArr, bArr2, i);
            i += iM35882for;
        }
        for (int i2 = 0; i2 < m35823do().size(); i2++) {
            Cvolatile.m36065case(bArr, m35823do().get(i2).getValue(), i);
            i += iM35882for;
        }
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m35851try() {
        return Cvolatile.m36077new(this.f32405try);
    }
}
