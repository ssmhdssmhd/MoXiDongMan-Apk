package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.fi2;
import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate extends fi2 implements XMSSStoreableObjectInterface {

    /* renamed from: else, reason: not valid java name */
    private final Cfinally f32453else;

    /* renamed from: goto, reason: not valid java name */
    private final byte[] f32454goto;

    /* renamed from: this, reason: not valid java name */
    private final byte[] f32455this;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.private$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cfinally f32456do;

        /* renamed from: if, reason: not valid java name */
        private byte[] f32458if = null;

        /* renamed from: for, reason: not valid java name */
        private byte[] f32457for = null;

        /* renamed from: new, reason: not valid java name */
        private byte[] f32459new = null;

        public Cif(Cfinally cfinally) {
            this.f32456do = cfinally;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m35947case(byte[] bArr) {
            this.f32459new = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m35948else(byte[] bArr) {
            this.f32457for = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m35949goto(byte[] bArr) {
            this.f32458if = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cprivate m35950try() {
            return new Cprivate(this);
        }
    }

    private Cprivate(Cif cif) {
        super(false, cif.f32456do.m35883if().getAlgorithmName());
        Cfinally cfinally = cif.f32456do;
        this.f32453else = cfinally;
        Objects.requireNonNull(cfinally, "params == null");
        int iM35882for = cfinally.m35882for();
        byte[] bArr = cif.f32459new;
        if (bArr != null) {
            if (bArr.length != iM35882for + iM35882for) {
                throw new IllegalArgumentException("public key has wrong size");
            }
            this.f32454goto = Cvolatile.m36080this(bArr, 0, iM35882for);
            this.f32455this = Cvolatile.m36080this(bArr, iM35882for + 0, iM35882for);
            return;
        }
        byte[] bArr2 = cif.f32458if;
        if (bArr2 == null) {
            this.f32454goto = new byte[iM35882for];
        } else {
            if (bArr2.length != iM35882for) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f32454goto = bArr2;
        }
        byte[] bArr3 = cif.f32457for;
        if (bArr3 == null) {
            this.f32455this = new byte[iM35882for];
        } else {
            if (bArr3.length != iM35882for) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.f32455this = bArr3;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinally m35940for() {
        return this.f32453else;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m35941new() {
        return Cvolatile.m36077new(this.f32455this);
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35882for = this.f32453else.m35882for();
        byte[] bArr = new byte[iM35882for + iM35882for];
        Cvolatile.m36065case(bArr, this.f32454goto, 0);
        Cvolatile.m36065case(bArr, this.f32455this, iM35882for + 0);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m35942try() {
        return Cvolatile.m36077new(this.f32454goto);
    }
}
