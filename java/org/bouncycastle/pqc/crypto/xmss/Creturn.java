package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ii2;
import android.support.v4.q3;
import java.io.IOException;
import java.util.Objects;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn extends ii2 implements XMSSStoreableObjectInterface {

    /* renamed from: case, reason: not valid java name */
    private final byte[] f32464case;

    /* renamed from: else, reason: not valid java name */
    private final byte[] f32465else;

    /* renamed from: for, reason: not valid java name */
    private final Cpublic f32466for;

    /* renamed from: goto, reason: not valid java name */
    private final byte[] f32467goto;

    /* renamed from: new, reason: not valid java name */
    private final long f32468new;

    /* renamed from: this, reason: not valid java name */
    private final org.bouncycastle.pqc.crypto.xmss.Cif f32469this;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f32470try;

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.return$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Cpublic f32472do;

        /* renamed from: if, reason: not valid java name */
        private long f32476if = 0;

        /* renamed from: for, reason: not valid java name */
        private byte[] f32474for = null;

        /* renamed from: new, reason: not valid java name */
        private byte[] f32477new = null;

        /* renamed from: try, reason: not valid java name */
        private byte[] f32479try = null;

        /* renamed from: case, reason: not valid java name */
        private byte[] f32471case = null;

        /* renamed from: else, reason: not valid java name */
        private org.bouncycastle.pqc.crypto.xmss.Cif f32473else = null;

        /* renamed from: goto, reason: not valid java name */
        private byte[] f32475goto = null;

        /* renamed from: this, reason: not valid java name */
        private Cfinally f32478this = null;

        public Cif(Cpublic cpublic) {
            this.f32472do = cpublic;
        }

        /* renamed from: break, reason: not valid java name */
        public Creturn m35978break() {
            return new Creturn(this);
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m35979catch(org.bouncycastle.pqc.crypto.xmss.Cif cif) {
            this.f32473else = cif;
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m35980class(long j) {
            this.f32476if = j;
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m35981const(byte[] bArr, Cfinally cfinally) {
            this.f32475goto = Cvolatile.m36077new(bArr);
            this.f32478this = cfinally;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m35982final(byte[] bArr) {
            this.f32479try = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m35983super(byte[] bArr) {
            this.f32471case = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m35984throw(byte[] bArr) {
            this.f32477new = Cvolatile.m36077new(bArr);
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m35985while(byte[] bArr) {
            this.f32474for = Cvolatile.m36077new(bArr);
            return this;
        }
    }

    private Creturn(Cif cif) {
        super(true, cif.f32472do.m35953do().getAlgorithmName());
        Cpublic cpublic = cif.f32472do;
        this.f32466for = cpublic;
        Objects.requireNonNull(cpublic, "params == null");
        int iM35957if = cpublic.m35957if();
        byte[] bArr = cif.f32475goto;
        if (bArr != null) {
            Objects.requireNonNull(cif.f32478this, "xmss == null");
            int iM35955for = cpublic.m35955for();
            int i = (iM35955for + 7) / 8;
            long jM36074if = Cvolatile.m36074if(bArr, 0, i);
            this.f32468new = jM36074if;
            if (!Cvolatile.m36071final(iM35955for, jM36074if)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            int i2 = i + 0;
            this.f32470try = Cvolatile.m36080this(bArr, i2, iM35957if);
            int i3 = i2 + iM35957if;
            this.f32464case = Cvolatile.m36080this(bArr, i3, iM35957if);
            int i4 = i3 + iM35957if;
            this.f32465else = Cvolatile.m36080this(bArr, i4, iM35957if);
            int i5 = i4 + iM35957if;
            this.f32467goto = Cvolatile.m36080this(bArr, i5, iM35957if);
            int i6 = i5 + iM35957if;
            try {
                this.f32469this = ((org.bouncycastle.pqc.crypto.xmss.Cif) Cvolatile.m36070else(Cvolatile.m36080this(bArr, i6, bArr.length - i6), org.bouncycastle.pqc.crypto.xmss.Cif.class)).withWOTSDigest(Cnew.m35913if(cif.f32478this.m35883if().getAlgorithmName()));
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        this.f32468new = cif.f32476if;
        byte[] bArr2 = cif.f32474for;
        if (bArr2 == null) {
            this.f32470try = new byte[iM35957if];
        } else {
            if (bArr2.length != iM35957if) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.f32470try = bArr2;
        }
        byte[] bArr3 = cif.f32477new;
        if (bArr3 == null) {
            this.f32464case = new byte[iM35957if];
        } else {
            if (bArr3.length != iM35957if) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f32464case = bArr3;
        }
        byte[] bArr4 = cif.f32479try;
        if (bArr4 == null) {
            this.f32465else = new byte[iM35957if];
        } else {
            if (bArr4.length != iM35957if) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.f32465else = bArr4;
        }
        byte[] bArr5 = cif.f32471case;
        if (bArr5 == null) {
            this.f32467goto = new byte[iM35957if];
        } else {
            if (bArr5.length != iM35957if) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.f32467goto = bArr5;
        }
        org.bouncycastle.pqc.crypto.xmss.Cif cif2 = cif.f32473else;
        if (cif2 == null) {
            if (!Cvolatile.m36071final(cpublic.m35955for(), cif.f32476if) || bArr4 == null || bArr2 == null) {
                this.f32469this = new org.bouncycastle.pqc.crypto.xmss.Cif();
                return;
            }
            cif2 = new org.bouncycastle.pqc.crypto.xmss.Cif(cpublic, cif.f32476if, bArr4, bArr2);
        }
        this.f32469this = cif2;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m35960break() {
        return Cvolatile.m36077new(this.f32470try);
    }

    /* renamed from: case, reason: not valid java name */
    public Cpublic m35961case() {
        return this.f32466for;
    }

    /* renamed from: catch, reason: not valid java name */
    public long m35962catch() {
        return (1 << m35961case().m35955for()) - m35966new();
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m35963else() {
        return Cvolatile.m36077new(this.f32465else);
    }

    /* renamed from: for, reason: not valid java name */
    public org.bouncycastle.pqc.crypto.xmss.Cif m35964for() {
        return this.f32469this;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m35965goto() {
        return Cvolatile.m36077new(this.f32467goto);
    }

    /* renamed from: new, reason: not valid java name */
    public long m35966new() {
        return this.f32468new;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m35967this() {
        return Cvolatile.m36077new(this.f32464case);
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int iM35957if = this.f32466for.m35957if();
        int iM35955for = (this.f32466for.m35955for() + 7) / 8;
        byte[] bArr = new byte[iM35955for + iM35957if + iM35957if + iM35957if + iM35957if];
        Cvolatile.m36065case(bArr, Cvolatile.m36078public(this.f32468new, iM35955for), 0);
        int i = iM35955for + 0;
        Cvolatile.m36065case(bArr, this.f32470try, i);
        int i2 = i + iM35957if;
        Cvolatile.m36065case(bArr, this.f32464case, i2);
        int i3 = i2 + iM35957if;
        Cvolatile.m36065case(bArr, this.f32465else, i3);
        Cvolatile.m36065case(bArr, this.f32467goto, i3 + iM35957if);
        try {
            return q3.m6367default(bArr, Cvolatile.m36076native(this.f32469this));
        } catch (IOException e) {
            throw new IllegalStateException("error serializing bds state: " + e.getMessage(), e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Creturn m35968try() {
        return new Cif(this.f32466for).m35980class(this.f32468new + 1).m35985while(this.f32470try).m35984throw(this.f32464case).m35982final(this.f32465else).m35983super(this.f32467goto).m35979catch(new org.bouncycastle.pqc.crypto.xmss.Cif(this.f32469this, this.f32466for, m35966new(), this.f32465else, this.f32470try)).m35978break();
    }
}
