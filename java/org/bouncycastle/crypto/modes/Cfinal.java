package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal implements AEADBlockCipher {

    /* renamed from: import, reason: not valid java name */
    private static final int f30049import = 64;

    /* renamed from: super, reason: not valid java name */
    private static final int f30050super = 4;

    /* renamed from: throw, reason: not valid java name */
    private static final int f30051throw = 8;

    /* renamed from: while, reason: not valid java name */
    private static final int f30052while = 512;

    /* renamed from: break, reason: not valid java name */
    private byte[] f30053break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30054case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f30055catch;

    /* renamed from: class, reason: not valid java name */
    private Cdo f30056class;

    /* renamed from: const, reason: not valid java name */
    private Cdo f30057const;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f30058do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30059else;

    /* renamed from: final, reason: not valid java name */
    private int f30060final;

    /* renamed from: for, reason: not valid java name */
    private boolean f30061for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f30062goto;

    /* renamed from: if, reason: not valid java name */
    private int f30063if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30064new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30065this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30066try;

    /* renamed from: org.bouncycastle.crypto.modes.final$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m33743do() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public Cfinal(BlockCipher blockCipher) {
        this(blockCipher, 4);
    }

    public Cfinal(BlockCipher blockCipher, int i) {
        this.f30056class = new Cdo();
        this.f30057const = new Cdo();
        this.f30060final = 4;
        this.f30058do = blockCipher;
        this.f30063if = blockCipher.getBlockSize();
        this.f30059else = new byte[blockCipher.getBlockSize()];
        this.f30064new = new byte[blockCipher.getBlockSize()];
        this.f30066try = new byte[blockCipher.getBlockSize()];
        this.f30054case = new byte[blockCipher.getBlockSize()];
        this.f30062goto = new byte[blockCipher.getBlockSize()];
        this.f30065this = new byte[blockCipher.getBlockSize()];
        this.f30053break = new byte[blockCipher.getBlockSize()];
        this.f30055catch = new byte[blockCipher.getBlockSize()];
        m33737else(i);
    }

    /* renamed from: do, reason: not valid java name */
    private void m33736do(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        while (i2 > 0) {
            for (int i3 = 0; i3 < this.f30058do.getBlockSize(); i3++) {
                byte[] bArr2 = this.f30054case;
                bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i + i3]);
            }
            BlockCipher blockCipher = this.f30058do;
            byte[] bArr3 = this.f30054case;
            blockCipher.processBlock(bArr3, 0, bArr3, 0);
            i2 -= this.f30058do.getBlockSize();
            i += this.f30058do.getBlockSize();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m33737else(int i) {
        if (i != 4 && i != 6 && i != 8) {
            throw new IllegalArgumentException("Nb = 4 is recommended by DSTU7624 but can be changed to only 6 or 8 in this implementation");
        }
        this.f30060final = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047 A[LOOP:0: B:24:0x0040->B:26:0x0047, LOOP_END] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte m33738for(boolean z, int i) {
        String str;
        String binaryString;
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append("1");
        } else {
            stringBuffer.append("0");
        }
        if (i == 8) {
            str = "010";
        } else if (i == 16) {
            str = "011";
        } else if (i == 32) {
            str = "100";
        } else {
            if (i != 48) {
                if (i == 64) {
                    str = "110";
                }
                binaryString = Integer.toBinaryString(this.f30060final - 1);
                while (binaryString.length() < 4) {
                    binaryString = new StringBuffer(binaryString).insert(0, "0").toString();
                }
                stringBuffer.append(binaryString);
                return (byte) Integer.parseInt(stringBuffer.toString(), 2);
            }
            str = "101";
        }
        stringBuffer.append(str);
        binaryString = Integer.toBinaryString(this.f30060final - 1);
        while (binaryString.length() < 4) {
        }
        stringBuffer.append(binaryString);
        return (byte) Integer.parseInt(stringBuffer.toString(), 2);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33739if(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        int i4 = 0;
        while (true) {
            byte[] bArr3 = this.f30055catch;
            if (i4 >= bArr3.length) {
                break;
            }
            byte[] bArr4 = this.f30053break;
            bArr4[i4] = (byte) (bArr4[i4] + bArr3[i4]);
            i4++;
        }
        this.f30058do.processBlock(this.f30053break, 0, this.f30065this, 0);
        for (int i5 = 0; i5 < this.f30058do.getBlockSize(); i5++) {
            bArr2[i3 + i5] = (byte) (this.f30065this[i5] ^ bArr[i + i5]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m33740new(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >> 24);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2] = (byte) i;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33741try(byte[] bArr, int i, int i2, int i3) throws IllegalStateException, tw {
        if (i2 - i < this.f30058do.getBlockSize()) {
            throw new IllegalArgumentException("authText buffer too short");
        }
        if (i2 % this.f30058do.getBlockSize() != 0) {
            throw new IllegalArgumentException("padding not supported");
        }
        byte[] bArr2 = this.f30059else;
        System.arraycopy(bArr2, 0, this.f30062goto, 0, (bArr2.length - this.f30060final) - 1);
        m33740new(i3, this.f30065this, 0);
        System.arraycopy(this.f30065this, 0, this.f30062goto, (this.f30059else.length - this.f30060final) - 1, 4);
        byte[] bArr3 = this.f30062goto;
        bArr3[bArr3.length - 1] = m33738for(true, this.f30063if);
        this.f30058do.processBlock(this.f30062goto, 0, this.f30054case, 0);
        m33740new(i2, this.f30065this, 0);
        if (i2 <= this.f30058do.getBlockSize() - this.f30060final) {
            for (int i4 = 0; i4 < i2; i4++) {
                byte[] bArr4 = this.f30065this;
                int i5 = this.f30060final + i4;
                bArr4[i5] = (byte) (bArr4[i5] ^ bArr[i + i4]);
            }
            for (int i6 = 0; i6 < this.f30058do.getBlockSize(); i6++) {
                byte[] bArr5 = this.f30054case;
                bArr5[i6] = (byte) (bArr5[i6] ^ this.f30065this[i6]);
            }
            BlockCipher blockCipher = this.f30058do;
            byte[] bArr6 = this.f30054case;
            blockCipher.processBlock(bArr6, 0, bArr6, 0);
            return;
        }
        for (int i7 = 0; i7 < this.f30058do.getBlockSize(); i7++) {
            byte[] bArr7 = this.f30054case;
            bArr7[i7] = (byte) (bArr7[i7] ^ this.f30065this[i7]);
        }
        BlockCipher blockCipher2 = this.f30058do;
        byte[] bArr8 = this.f30054case;
        blockCipher2.processBlock(bArr8, 0, bArr8, 0);
        while (i2 != 0) {
            for (int i8 = 0; i8 < this.f30058do.getBlockSize(); i8++) {
                byte[] bArr9 = this.f30054case;
                bArr9[i8] = (byte) (bArr9[i8] ^ bArr[i8 + i]);
            }
            BlockCipher blockCipher3 = this.f30058do;
            byte[] bArr10 = this.f30054case;
            blockCipher3.processBlock(bArr10, 0, bArr10, 0);
            i += this.f30058do.getBlockSize();
            i2 -= this.f30058do.getBlockSize();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m33742case(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw, tn0 {
        int i4;
        if (bArr.length - i < i2) {
            throw new tw("input buffer too short");
        }
        if (bArr2.length - i3 < i2) {
            throw new f91("output buffer too short");
        }
        if (this.f30056class.size() > 0) {
            if (this.f30061for) {
                m33741try(this.f30056class.m33743do(), 0, this.f30056class.size(), this.f30057const.size());
            } else {
                m33741try(this.f30056class.m33743do(), 0, this.f30056class.size(), this.f30057const.size() - this.f30063if);
            }
        }
        if (!this.f30061for) {
            if ((i2 - this.f30063if) % this.f30058do.getBlockSize() != 0) {
                throw new tw("partial blocks not supported");
            }
            this.f30058do.processBlock(this.f30059else, 0, this.f30053break, 0);
            int blockSize = i2 / this.f30058do.getBlockSize();
            for (int i5 = 0; i5 < blockSize; i5++) {
                m33739if(bArr, i, i2, bArr2, i3);
                i += this.f30058do.getBlockSize();
                i3 += this.f30058do.getBlockSize();
            }
            if (i2 > i) {
                int i6 = 0;
                while (true) {
                    byte[] bArr3 = this.f30055catch;
                    if (i6 >= bArr3.length) {
                        break;
                    }
                    byte[] bArr4 = this.f30053break;
                    bArr4[i6] = (byte) (bArr4[i6] + bArr3[i6]);
                    i6++;
                }
                this.f30058do.processBlock(this.f30053break, 0, this.f30065this, 0);
                int i7 = 0;
                while (true) {
                    i4 = this.f30063if;
                    if (i7 >= i4) {
                        break;
                    }
                    bArr2[i3 + i7] = (byte) (this.f30065this[i7] ^ bArr[i + i7]);
                    i7++;
                }
                i3 += i4;
            }
            int i8 = 0;
            while (true) {
                byte[] bArr5 = this.f30055catch;
                if (i8 >= bArr5.length) {
                    break;
                }
                byte[] bArr6 = this.f30053break;
                bArr6[i8] = (byte) (bArr6[i8] + bArr5[i8]);
                i8++;
            }
            this.f30058do.processBlock(this.f30053break, 0, this.f30065this, 0);
            int i9 = this.f30063if;
            System.arraycopy(bArr2, i3 - i9, this.f30065this, 0, i9);
            m33736do(bArr2, 0, i3 - this.f30063if);
            System.arraycopy(this.f30054case, 0, this.f30066try, 0, this.f30063if);
            int i10 = this.f30063if;
            byte[] bArr7 = new byte[i10];
            System.arraycopy(this.f30065this, 0, bArr7, 0, i10);
            if (!q3.m6360abstract(this.f30066try, bArr7)) {
                throw new tn0("mac check failed");
            }
            reset();
            return i2 - this.f30063if;
        }
        if (i2 % this.f30058do.getBlockSize() != 0) {
            throw new tw("partial blocks not supported");
        }
        m33736do(bArr, i, i2);
        this.f30058do.processBlock(this.f30059else, 0, this.f30053break, 0);
        int blockSize2 = i2;
        while (blockSize2 > 0) {
            m33739if(bArr, i, i2, bArr2, i3);
            blockSize2 -= this.f30058do.getBlockSize();
            i += this.f30058do.getBlockSize();
            i3 += this.f30058do.getBlockSize();
        }
        int i11 = 0;
        while (true) {
            byte[] bArr8 = this.f30055catch;
            if (i11 >= bArr8.length) {
                break;
            }
            byte[] bArr9 = this.f30053break;
            bArr9[i11] = (byte) (bArr9[i11] + bArr8[i11]);
            i11++;
        }
        this.f30058do.processBlock(this.f30053break, 0, this.f30065this, 0);
        int i12 = 0;
        while (true) {
            int i13 = this.f30063if;
            if (i12 >= i13) {
                System.arraycopy(this.f30054case, 0, this.f30066try, 0, i13);
                reset();
                return i2 + this.f30063if;
            }
            bArr2[i3 + i12] = (byte) (this.f30065this[i12] ^ this.f30054case[i12]);
            i12++;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        int iM33742case = m33742case(this.f30057const.m33743do(), 0, this.f30057const.size(), bArr, i);
        reset();
        return iM33742case;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30058do.getAlgorithmName() + "/KCCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        return q3.m6371final(this.f30066try);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        return i + this.f30063if;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30058do;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        return i;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParametersM515if;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            if (cnew.m5195for() > 512 || cnew.m5195for() < 64 || cnew.m5195for() % 8 != 0) {
                throw new IllegalArgumentException("Invalid mac size specified");
            }
            this.f30059else = cnew.m5197new();
            this.f30063if = cnew.m5195for() / 8;
            this.f30064new = cnew.m5194do();
            cipherParametersM515if = cnew.m5196if();
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("Invalid parameters specified");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            this.f30059else = bc1Var.m514do();
            this.f30063if = this.f30058do.getBlockSize();
            this.f30064new = null;
            cipherParametersM515if = bc1Var.m515if();
        }
        this.f30066try = new byte[this.f30063if];
        this.f30061for = z;
        this.f30058do.init(true, cipherParametersM515if);
        this.f30055catch[0] = 1;
        byte[] bArr = this.f30064new;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) {
        this.f30056class.write(b);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        this.f30056class.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        this.f30057const.write(b);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (bArr.length < i + i2) {
            throw new tw("input buffer too short");
        }
        this.f30057const.write(bArr, i, i2);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        q3.c(this.f30062goto, (byte) 0);
        q3.c(this.f30065this, (byte) 0);
        q3.c(this.f30055catch, (byte) 0);
        q3.c(this.f30054case, (byte) 0);
        this.f30055catch[0] = 1;
        this.f30057const.reset();
        this.f30056class.reset();
        byte[] bArr = this.f30064new;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
