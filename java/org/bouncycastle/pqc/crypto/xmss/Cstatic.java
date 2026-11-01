package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ii2;
import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic extends ii2 implements XMSSStoreableObjectInterface {

    /* renamed from: for, reason: not valid java name */
    private final Cpublic f32480for;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f32481new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f32482try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.static$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cpublic f32483do;

        /* renamed from: if, reason: not valid java name */
        private byte[] f32485if = null;

        /* renamed from: for, reason: not valid java name */
        private byte[] f32484for = null;

        /* renamed from: new, reason: not valid java name */
        private byte[] f32486new = null;

        public Cif(Cpublic cpublic) {
            this.f32483do = cpublic;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m35993case(byte[] bArr) {
            this.f32486new = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m35994else(byte[] bArr) {
            this.f32484for = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m35995goto(byte[] bArr) {
            this.f32485if = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cstatic m35996try() {
            return new Cstatic(this);
        }
    }

    private Cstatic(Cif cif) {
        super(false, cif.f32483do.m35953do().getAlgorithmName());
        Cpublic cpublic = cif.f32483do;
        this.f32480for = cpublic;
        Objects.requireNonNull(cpublic, "params == null");
        int iM35957if = cpublic.m35957if();
        byte[] bArr = cif.f32486new;
        if (bArr != null) {
            if (bArr.length != iM35957if + iM35957if) {
                throw new IllegalArgumentException("public key has wrong size");
            }
            this.f32481new = Cvolatile.m36080this(bArr, 0, iM35957if);
            this.f32482try = Cvolatile.m36080this(bArr, iM35957if + 0, iM35957if);
            return;
        }
        byte[] bArr2 = cif.f32485if;
        if (bArr2 == null) {
            this.f32481new = new byte[iM35957if];
        } else {
            if (bArr2.length != iM35957if) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f32481new = bArr2;
        }
        byte[] bArr3 = cif.f32484for;
        if (bArr3 == null) {
            this.f32482try = new byte[iM35957if];
        } else {
            if (bArr3.length != iM35957if) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.f32482try = bArr3;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Cpublic m35986for() {
        return this.f32480for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m35987new() {
        return Cvolatile.m36077new(this.f32482try);
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35957if = this.f32480for.m35957if();
        byte[] bArr = new byte[iM35957if + iM35957if];
        Cvolatile.m36065case(bArr, this.f32481new, 0);
        Cvolatile.m36065case(bArr, this.f32482try, iM35957if + 0);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m35988try() {
        return Cvolatile.m36077new(this.f32481new);
    }
}
