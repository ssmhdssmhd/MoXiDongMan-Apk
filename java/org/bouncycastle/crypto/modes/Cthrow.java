package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.d42;
import android.support.v4.f91;
import android.support.v4.g42;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.j42;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* renamed from: org.bouncycastle.crypto.modes.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow implements AEADBlockCipher {

    /* renamed from: const, reason: not valid java name */
    private static final int f30156const = 64;

    /* renamed from: break, reason: not valid java name */
    private final int f30157break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30158case;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f30161do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30162else;

    /* renamed from: goto, reason: not valid java name */
    private KGCMMultiplier f30164goto;

    /* renamed from: if, reason: not valid java name */
    private Cif f30165if;

    /* renamed from: new, reason: not valid java name */
    private boolean f30166new;

    /* renamed from: this, reason: not valid java name */
    private long[] f30167this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30168try;

    /* renamed from: catch, reason: not valid java name */
    private Cdo f30159catch = new Cdo();

    /* renamed from: class, reason: not valid java name */
    private Cdo f30160class = new Cdo();

    /* renamed from: for, reason: not valid java name */
    private int f30163for = -1;

    /* renamed from: org.bouncycastle.crypto.modes.throw$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m33790do() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public Cthrow(BlockCipher blockCipher) {
        this.f30161do = blockCipher;
        this.f30165if = new Cif(new Csuper(blockCipher));
        int blockSize = this.f30161do.getBlockSize();
        this.f30157break = blockSize;
        this.f30168try = new byte[blockSize];
        this.f30162else = new byte[blockSize];
        this.f30164goto = m33788if(blockSize);
        this.f30167this = new long[blockSize >>> 3];
        this.f30158case = null;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33786do(byte[] bArr, int i, int i2, int i3) throws IllegalStateException, tw {
        int i4 = i + i2;
        while (i < i4) {
            m33789new(this.f30167this, bArr, i);
            this.f30164goto.multiplyH(this.f30167this);
            i += this.f30157break;
        }
        long[] jArr = this.f30167this;
        jArr[0] = ((i3 & 4294967295L) << 3) ^ jArr[0];
        int i5 = this.f30157break >>> 4;
        jArr[i5] = ((4294967295L & i2) << 3) ^ jArr[i5];
        byte[] bArrM3346abstract = ib1.m3346abstract(jArr);
        this.f30158case = bArrM3346abstract;
        this.f30161do.processBlock(bArrM3346abstract, 0, bArrM3346abstract, 0);
    }

    /* renamed from: for, reason: not valid java name */
    private void m33787for(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            m33789new(this.f30167this, bArr, i);
            this.f30164goto.multiplyH(this.f30167this);
            i += this.f30157break;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static KGCMMultiplier m33788if(int i) {
        if (i == 16) {
            return new g42();
        }
        if (i == 32) {
            return new j42();
        }
        if (i == 64) {
            return new d42();
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    /* renamed from: new, reason: not valid java name */
    private static void m33789new(long[] jArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = jArr[i2] ^ ib1.m3362import(bArr, i);
            i += 8;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        int iMo7551do;
        int size = this.f30160class.size();
        if (!this.f30166new && size < this.f30163for) {
            throw new tn0("data too short");
        }
        byte[] bArr2 = new byte[this.f30157break];
        this.f30161do.processBlock(bArr2, 0, bArr2, 0);
        long[] jArr = new long[this.f30157break >>> 3];
        ib1.m3363native(bArr2, 0, jArr);
        this.f30164goto.init(jArr);
        q3.c(bArr2, (byte) 0);
        q3.j(jArr, 0L);
        int size2 = this.f30159catch.size();
        if (size2 > 0) {
            m33787for(this.f30159catch.m33790do(), 0, size2);
        }
        if (!this.f30166new) {
            int i2 = size - this.f30163for;
            if (bArr.length - i < i2) {
                throw new f91("Output buffer too short");
            }
            m33786do(this.f30160class.m33790do(), 0, i2, size2);
            int iMo7554goto = this.f30165if.mo7554goto(this.f30160class.m33790do(), 0, i2, bArr, i);
            iMo7551do = iMo7554goto + this.f30165if.mo7551do(bArr, i + iMo7554goto);
        } else {
            if ((bArr.length - i) - this.f30163for < size) {
                throw new f91("Output buffer too short");
            }
            int iMo7554goto2 = this.f30165if.mo7554goto(this.f30160class.m33790do(), 0, size, bArr, i);
            iMo7551do = iMo7554goto2 + this.f30165if.mo7551do(bArr, i + iMo7554goto2);
            m33786do(bArr, i, size, size2);
        }
        byte[] bArr3 = this.f30158case;
        if (bArr3 == null) {
            throw new IllegalStateException("mac is not calculated");
        }
        if (this.f30166new) {
            System.arraycopy(bArr3, 0, bArr, i + iMo7551do, this.f30163for);
            reset();
            return iMo7551do + this.f30163for;
        }
        byte[] bArr4 = new byte[this.f30163for];
        byte[] bArrM33790do = this.f30160class.m33790do();
        int i3 = this.f30163for;
        System.arraycopy(bArrM33790do, size - i3, bArr4, 0, i3);
        int i4 = this.f30163for;
        byte[] bArr5 = new byte[i4];
        System.arraycopy(this.f30158case, 0, bArr5, 0, i4);
        if (!q3.m6360abstract(bArr4, bArr5)) {
            throw new tn0("mac verification failed");
        }
        reset();
        return iMo7551do;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30161do.getAlgorithmName() + "/KGCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        int i = this.f30163for;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f30158case, 0, bArr, 0, i);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int size = i + this.f30160class.size();
        if (this.f30166new) {
            return size + this.f30163for;
        }
        int i2 = this.f30163for;
        if (size < i2) {
            return 0;
        }
        return size - i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30161do;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        gr0 gr0VarM5196if;
        this.f30166new = z;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            byte[] bArrM5197new = cnew.m5197new();
            byte[] bArr = this.f30162else;
            int length = bArr.length - bArrM5197new.length;
            q3.c(bArr, (byte) 0);
            System.arraycopy(bArrM5197new, 0, this.f30162else, length, bArrM5197new.length);
            this.f30168try = cnew.m5194do();
            int iM5195for = cnew.m5195for();
            if (iM5195for < 64 || iM5195for > (this.f30157break << 3) || (iM5195for & 7) != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + iM5195for);
            }
            this.f30163for = iM5195for >>> 3;
            gr0VarM5196if = cnew.m5196if();
            byte[] bArr2 = this.f30168try;
            if (bArr2 != null) {
                processAADBytes(bArr2, 0, bArr2.length);
            }
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("Invalid parameter passed");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            byte[] bArrM514do = bc1Var.m514do();
            byte[] bArr3 = this.f30162else;
            int length2 = bArr3.length - bArrM514do.length;
            q3.c(bArr3, (byte) 0);
            System.arraycopy(bArrM514do, 0, this.f30162else, length2, bArrM514do.length);
            this.f30168try = null;
            this.f30163for = this.f30157break;
            gr0VarM5196if = (gr0) bc1Var.m515if();
        }
        this.f30158case = new byte[this.f30157break];
        this.f30165if.mo7550case(true, new bc1(gr0VarM5196if, this.f30162else));
        this.f30161do.init(true, gr0VarM5196if);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) {
        this.f30159catch.write(b);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        this.f30159catch.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        this.f30160class.write(b);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (bArr.length < i + i2) {
            throw new tw("input buffer too short");
        }
        this.f30160class.write(bArr, i, i2);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        q3.j(this.f30167this, 0L);
        this.f30161do.reset();
        this.f30160class.reset();
        this.f30159catch.reset();
        byte[] bArr = this.f30168try;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
