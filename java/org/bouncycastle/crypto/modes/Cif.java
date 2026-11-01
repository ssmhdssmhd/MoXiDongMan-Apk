package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.ke;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import com.google.common.primitives.Cfinal;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements AEADBlockCipher {

    /* renamed from: case, reason: not valid java name */
    private int f30085case;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f30086do;

    /* renamed from: else, reason: not valid java name */
    private CipherParameters f30087else;

    /* renamed from: for, reason: not valid java name */
    private boolean f30088for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f30089goto;

    /* renamed from: if, reason: not valid java name */
    private int f30090if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30091new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30093try;

    /* renamed from: this, reason: not valid java name */
    private Cdo f30092this = new Cdo();

    /* renamed from: break, reason: not valid java name */
    private Cdo f30084break = new Cdo();

    /* renamed from: org.bouncycastle.crypto.modes.if$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m33757do() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public Cif(BlockCipher blockCipher) {
        this.f30086do = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30090if = blockSize;
        this.f30089goto = new byte[blockSize];
        if (blockSize != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m33752do(byte[] bArr, int i, int i2, byte[] bArr2) throws IllegalStateException, tw, IllegalArgumentException {
        ke keVar = new ke(this.f30086do, this.f30085case * 8);
        keVar.init(this.f30087else);
        byte[] bArr3 = new byte[16];
        if (m33753for()) {
            bArr3[0] = (byte) (bArr3[0] | Cfinal.f15506do);
        }
        int i3 = 2;
        bArr3[0] = (byte) (bArr3[0] | ((((keVar.getMacSize() - 2) / 2) & 7) << 3));
        byte b = bArr3[0];
        byte[] bArr4 = this.f30091new;
        bArr3[0] = (byte) (b | (((15 - bArr4.length) - 1) & 7));
        System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
        int i4 = i2;
        int i5 = 1;
        while (i4 > 0) {
            bArr3[16 - i5] = (byte) (i4 & 255);
            i4 >>>= 8;
            i5++;
        }
        keVar.update(bArr3, 0, 16);
        if (m33753for()) {
            int iM33754if = m33754if();
            if (iM33754if < 65280) {
                keVar.update((byte) (iM33754if >> 8));
                keVar.update((byte) iM33754if);
            } else {
                keVar.update((byte) -1);
                keVar.update((byte) -2);
                keVar.update((byte) (iM33754if >> 24));
                keVar.update((byte) (iM33754if >> 16));
                keVar.update((byte) (iM33754if >> 8));
                keVar.update((byte) iM33754if);
                i3 = 6;
            }
            byte[] bArr5 = this.f30093try;
            if (bArr5 != null) {
                keVar.update(bArr5, 0, bArr5.length);
            }
            if (this.f30092this.size() > 0) {
                keVar.update(this.f30092this.m33757do(), 0, this.f30092this.size());
            }
            int i6 = (i3 + iM33754if) % 16;
            if (i6 != 0) {
                while (i6 != 16) {
                    keVar.update((byte) 0);
                    i6++;
                }
            }
        }
        keVar.update(bArr, i, i2);
        return keVar.doFinal(bArr2, 0);
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m33753for() {
        return m33754if() > 0;
    }

    /* renamed from: if, reason: not valid java name */
    private int m33754if() {
        int size = this.f30092this.size();
        byte[] bArr = this.f30093try;
        return size + (bArr == null ? 0 : bArr.length);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        int iM33755new = m33755new(this.f30084break.m33757do(), 0, this.f30084break.size(), bArr, i);
        reset();
        return iM33755new;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30086do.getAlgorithmName() + "/CCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        int i = this.f30085case;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f30089goto, 0, bArr, 0, i);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int size = i + this.f30084break.size();
        if (this.f30088for) {
            return size + this.f30085case;
        }
        int i2 = this.f30085case;
        if (size < i2) {
            return 0;
        }
        return size - i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30086do;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParametersM515if;
        this.f30088for = z;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            this.f30091new = cnew.m5197new();
            this.f30093try = cnew.m5194do();
            this.f30085case = cnew.m5195for() / 8;
            cipherParametersM515if = cnew.m5196if();
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("invalid parameters passed to CCM: " + cipherParameters.getClass().getName());
            }
            bc1 bc1Var = (bc1) cipherParameters;
            this.f30091new = bc1Var.m514do();
            this.f30093try = null;
            this.f30085case = this.f30089goto.length / 2;
            cipherParametersM515if = bc1Var.m515if();
        }
        if (cipherParametersM515if != null) {
            this.f30087else = cipherParametersM515if;
        }
        byte[] bArr = this.f30091new;
        if (bArr == null || bArr.length < 7 || bArr.length > 13) {
            throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
        }
        reset();
    }

    /* renamed from: new, reason: not valid java name */
    public int m33755new(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        int i4;
        if (this.f30087else == null) {
            throw new IllegalStateException("CCM cipher unitialized.");
        }
        byte[] bArr3 = this.f30091new;
        int length = 15 - bArr3.length;
        if (length < 4 && i2 >= (1 << (length * 8))) {
            throw new IllegalStateException("CCM packet too large for choice of q.");
        }
        byte[] bArr4 = new byte[this.f30090if];
        bArr4[0] = (byte) ((length - 1) & 7);
        System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
        Cthrows cthrows = new Cthrows(this.f30086do);
        cthrows.init(this.f30088for, new bc1(this.f30087else, bArr4));
        if (!this.f30088for) {
            int i5 = this.f30085case;
            if (i2 < i5) {
                throw new tn0("data too short");
            }
            int i6 = i2 - i5;
            if (bArr2.length < i6 + i3) {
                throw new f91("Output buffer too short.");
            }
            int i7 = i + i6;
            System.arraycopy(bArr, i7, this.f30089goto, 0, i5);
            byte[] bArr5 = this.f30089goto;
            cthrows.processBlock(bArr5, 0, bArr5, 0);
            int i8 = this.f30085case;
            while (true) {
                byte[] bArr6 = this.f30089goto;
                if (i8 == bArr6.length) {
                    break;
                }
                bArr6[i8] = 0;
                i8++;
            }
            int i9 = i;
            int i10 = i3;
            while (true) {
                i4 = this.f30090if;
                if (i9 >= i7 - i4) {
                    break;
                }
                cthrows.processBlock(bArr, i9, bArr2, i10);
                int i11 = this.f30090if;
                i10 += i11;
                i9 += i11;
            }
            byte[] bArr7 = new byte[i4];
            int i12 = i6 - (i9 - i);
            System.arraycopy(bArr, i9, bArr7, 0, i12);
            cthrows.processBlock(bArr7, 0, bArr7, 0);
            System.arraycopy(bArr7, 0, bArr2, i10, i12);
            byte[] bArr8 = new byte[this.f30090if];
            m33752do(bArr2, i3, i6, bArr8);
            if (q3.m6360abstract(this.f30089goto, bArr8)) {
                return i6;
            }
            throw new tn0("mac check in CCM failed");
        }
        int i13 = this.f30085case + i2;
        if (bArr2.length < i13 + i3) {
            throw new f91("Output buffer too short.");
        }
        m33752do(bArr, i, i2, this.f30089goto);
        byte[] bArr9 = new byte[this.f30090if];
        cthrows.processBlock(this.f30089goto, 0, bArr9, 0);
        int i14 = i;
        int i15 = i3;
        while (true) {
            int i16 = i + i2;
            int i17 = this.f30090if;
            if (i14 >= i16 - i17) {
                byte[] bArr10 = new byte[i17];
                int i18 = i16 - i14;
                System.arraycopy(bArr, i14, bArr10, 0, i18);
                cthrows.processBlock(bArr10, 0, bArr10, 0);
                System.arraycopy(bArr10, 0, bArr2, i15, i18);
                System.arraycopy(bArr9, 0, bArr2, i3 + i2, this.f30085case);
                return i13;
            }
            cthrows.processBlock(bArr, i14, bArr2, i15);
            int i19 = this.f30090if;
            i15 += i19;
            i14 += i19;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) {
        this.f30092this.write(b);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        this.f30092this.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        this.f30084break.write(b);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (bArr.length < i + i2) {
            throw new tw("Input buffer too short");
        }
        this.f30084break.write(bArr, i, i2);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        this.f30086do.reset();
        this.f30092this.reset();
        this.f30084break.reset();
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m33756try(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0, IllegalArgumentException {
        int i3;
        if (this.f30088for) {
            i3 = this.f30085case + i2;
        } else {
            int i4 = this.f30085case;
            if (i2 < i4) {
                throw new tn0("data too short");
            }
            i3 = i2 - i4;
        }
        byte[] bArr2 = new byte[i3];
        m33755new(bArr, i, i2, bArr2, 0);
        return bArr2;
    }
}
