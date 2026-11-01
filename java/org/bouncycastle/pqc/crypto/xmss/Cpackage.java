package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.fi2;
import android.support.v4.ib1;
import android.support.v4.q3;
import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage extends fi2 implements XMSSStoreableObjectInterface {

    /* renamed from: break, reason: not valid java name */
    private final byte[] f32438break;

    /* renamed from: catch, reason: not valid java name */
    private final byte[] f32439catch;

    /* renamed from: class, reason: not valid java name */
    private final org.bouncycastle.pqc.crypto.xmss.Cdo f32440class;

    /* renamed from: else, reason: not valid java name */
    private final Cfinally f32441else;

    /* renamed from: goto, reason: not valid java name */
    private final byte[] f32442goto;

    /* renamed from: this, reason: not valid java name */
    private final byte[] f32443this;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.package$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cfinally f32445do;

        /* renamed from: if, reason: not valid java name */
        private int f32449if = 0;

        /* renamed from: for, reason: not valid java name */
        private byte[] f32447for = null;

        /* renamed from: new, reason: not valid java name */
        private byte[] f32450new = null;

        /* renamed from: try, reason: not valid java name */
        private byte[] f32452try = null;

        /* renamed from: case, reason: not valid java name */
        private byte[] f32444case = null;

        /* renamed from: else, reason: not valid java name */
        private org.bouncycastle.pqc.crypto.xmss.Cdo f32446else = null;

        /* renamed from: goto, reason: not valid java name */
        private byte[] f32448goto = null;

        /* renamed from: this, reason: not valid java name */
        private Cfinally f32451this = null;

        public Cif(Cfinally cfinally) {
            this.f32445do = cfinally;
        }

        /* renamed from: break, reason: not valid java name */
        public Cpackage m35932break() {
            return new Cpackage(this);
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m35933catch(org.bouncycastle.pqc.crypto.xmss.Cdo cdo) {
            this.f32446else = cdo;
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m35934class(int i) {
            this.f32449if = i;
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m35935const(byte[] bArr, Cfinally cfinally) {
            this.f32448goto = Cvolatile.m36077new(bArr);
            this.f32451this = cfinally;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m35936final(byte[] bArr) {
            this.f32452try = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m35937super(byte[] bArr) {
            this.f32444case = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m35938throw(byte[] bArr) {
            this.f32450new = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m35939while(byte[] bArr) {
            this.f32447for = Cvolatile.m36077new(bArr);
            return this;
        }
    }

    private Cpackage(Cif cif) {
        super(true, cif.f32445do.m35883if().getAlgorithmName());
        Cfinally cfinally = cif.f32445do;
        this.f32441else = cfinally;
        Objects.requireNonNull(cfinally, "params == null");
        int iM35882for = cfinally.m35882for();
        byte[] bArr = cif.f32448goto;
        if (bArr != null) {
            Objects.requireNonNull(cif.f32451this, "xmss == null");
            int iM35884new = cfinally.m35884new();
            int iM3354do = ib1.m3354do(bArr, 0);
            if (!Cvolatile.m36071final(iM35884new, iM3354do)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.f32442goto = Cvolatile.m36080this(bArr, 4, iM35882for);
            int i = 4 + iM35882for;
            this.f32443this = Cvolatile.m36080this(bArr, i, iM35882for);
            int i2 = i + iM35882for;
            this.f32438break = Cvolatile.m36080this(bArr, i2, iM35882for);
            int i3 = i2 + iM35882for;
            this.f32439catch = Cvolatile.m36080this(bArr, i3, iM35882for);
            int i4 = i3 + iM35882for;
            try {
                org.bouncycastle.pqc.crypto.xmss.Cdo cdo = (org.bouncycastle.pqc.crypto.xmss.Cdo) Cvolatile.m36070else(Cvolatile.m36080this(bArr, i4, bArr.length - i4), org.bouncycastle.pqc.crypto.xmss.Cdo.class);
                if (cdo.getIndex() != iM3354do) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.f32440class = cdo.withWOTSDigest(Cnew.m35913if(cif.f32451this.m35883if().getAlgorithmName()));
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        byte[] bArr2 = cif.f32447for;
        if (bArr2 == null) {
            this.f32442goto = new byte[iM35882for];
        } else {
            if (bArr2.length != iM35882for) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.f32442goto = bArr2;
        }
        byte[] bArr3 = cif.f32450new;
        if (bArr3 == null) {
            this.f32443this = new byte[iM35882for];
        } else {
            if (bArr3.length != iM35882for) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f32443this = bArr3;
        }
        byte[] bArr4 = cif.f32452try;
        if (bArr4 == null) {
            this.f32438break = new byte[iM35882for];
        } else {
            if (bArr4.length != iM35882for) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.f32438break = bArr4;
        }
        byte[] bArr5 = cif.f32444case;
        if (bArr5 == null) {
            this.f32439catch = new byte[iM35882for];
        } else {
            if (bArr5.length != iM35882for) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.f32439catch = bArr5;
        }
        org.bouncycastle.pqc.crypto.xmss.Cdo cdo2 = cif.f32446else;
        this.f32440class = cdo2 == null ? (cif.f32449if >= (1 << cfinally.m35884new()) + (-2) || bArr4 == null || bArr2 == null) ? new org.bouncycastle.pqc.crypto.xmss.Cdo(cfinally, cif.f32449if) : new org.bouncycastle.pqc.crypto.xmss.Cdo(cfinally, bArr4, bArr2, (Cgoto) new Cgoto.Cif().mo35875try(), cif.f32449if) : cdo2;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m35914break() {
        return Cvolatile.m36077new(this.f32442goto);
    }

    /* renamed from: case, reason: not valid java name */
    public Cfinally m35915case() {
        return this.f32441else;
    }

    /* renamed from: catch, reason: not valid java name */
    public long m35916catch() {
        return (1 << m35915case().m35884new()) - m35920new();
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m35917else() {
        return Cvolatile.m36077new(this.f32438break);
    }

    /* renamed from: for, reason: not valid java name */
    public org.bouncycastle.pqc.crypto.xmss.Cdo m35918for() {
        return this.f32440class;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m35919goto() {
        return Cvolatile.m36077new(this.f32439catch);
    }

    /* renamed from: new, reason: not valid java name */
    public int m35920new() {
        return this.f32440class.getIndex();
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m35921this() {
        return Cvolatile.m36077new(this.f32443this);
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35882for = this.f32441else.m35882for();
        byte[] bArr = new byte[iM35882for + 4 + iM35882for + iM35882for + iM35882for];
        ib1.m3348case(this.f32440class.getIndex(), bArr, 0);
        Cvolatile.m36065case(bArr, this.f32442goto, 4);
        int i = 4 + iM35882for;
        Cvolatile.m36065case(bArr, this.f32443this, i);
        int i2 = i + iM35882for;
        Cvolatile.m36065case(bArr, this.f32438break, i2);
        Cvolatile.m36065case(bArr, this.f32439catch, i2 + iM35882for);
        try {
            return q3.m6367default(bArr, Cvolatile.m36076native(this.f32440class));
        } catch (IOException e) {
            throw new RuntimeException("error serializing bds state: " + e.getMessage());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Cpackage m35922try() {
        Cif cifM35937super;
        org.bouncycastle.pqc.crypto.xmss.Cdo cdo;
        if (m35920new() < (1 << this.f32441else.m35884new()) - 1) {
            cifM35937super = new Cif(this.f32441else).m35939while(this.f32442goto).m35938throw(this.f32443this).m35936final(this.f32438break).m35937super(this.f32439catch);
            cdo = this.f32440class.getNextState(this.f32438break, this.f32442goto, (Cgoto) new Cgoto.Cif().mo35875try());
        } else {
            cifM35937super = new Cif(this.f32441else).m35939while(this.f32442goto).m35938throw(this.f32443this).m35936final(this.f32438break).m35937super(this.f32439catch);
            cdo = new org.bouncycastle.pqc.crypto.xmss.Cdo(this.f32441else, m35920new() + 1);
        }
        return cifM35937super.m35933catch(cdo).m35932break();
    }
}
