package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.f42;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.ne0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.w7;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;

/* renamed from: org.bouncycastle.crypto.modes.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements AEADBlockCipher {

    /* renamed from: default, reason: not valid java name */
    private static final int f29996default = 16;

    /* renamed from: break, reason: not valid java name */
    private byte[] f29997break;

    /* renamed from: case, reason: not valid java name */
    private int f29998case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f29999catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f30000class;

    /* renamed from: const, reason: not valid java name */
    private byte[] f30001const;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f30002do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30003else;

    /* renamed from: final, reason: not valid java name */
    private byte[] f30004final;

    /* renamed from: for, reason: not valid java name */
    private GCMExponentiator f30005for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f30006goto;

    /* renamed from: if, reason: not valid java name */
    private GCMMultiplier f30007if;

    /* renamed from: import, reason: not valid java name */
    private int f30008import;

    /* renamed from: native, reason: not valid java name */
    private int f30009native;

    /* renamed from: new, reason: not valid java name */
    private boolean f30010new;

    /* renamed from: public, reason: not valid java name */
    private long f30011public;

    /* renamed from: return, reason: not valid java name */
    private byte[] f30012return;

    /* renamed from: static, reason: not valid java name */
    private int f30013static;

    /* renamed from: super, reason: not valid java name */
    private byte[] f30014super;

    /* renamed from: switch, reason: not valid java name */
    private long f30015switch;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30016this;

    /* renamed from: throw, reason: not valid java name */
    private byte[] f30017throw;

    /* renamed from: throws, reason: not valid java name */
    private long f30018throws;

    /* renamed from: try, reason: not valid java name */
    private boolean f30019try;

    /* renamed from: while, reason: not valid java name */
    private byte[] f30020while;

    public Ccatch(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    public Ccatch(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
        gCMMultiplier = gCMMultiplier == null ? new f42() : gCMMultiplier;
        this.f30002do = blockCipher;
        this.f30007if = gCMMultiplier;
    }

    /* renamed from: break, reason: not valid java name */
    private void m33713break(boolean z) {
        this.f30002do.reset();
        this.f30004final = new byte[16];
        this.f30014super = new byte[16];
        this.f30017throw = new byte[16];
        this.f30012return = new byte[16];
        this.f30013static = 0;
        this.f30015switch = 0L;
        this.f30018throws = 0L;
        this.f30020while = q3.m6371final(this.f29999catch);
        this.f30008import = -2;
        this.f30009native = 0;
        this.f30011public = 0L;
        byte[] bArr = this.f30000class;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
        if (z) {
            this.f30001const = null;
        }
        if (this.f30010new) {
            this.f30019try = false;
            return;
        }
        byte[] bArr2 = this.f30016this;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m33714case(byte[] bArr) throws IllegalStateException, tw {
        int i = this.f30008import;
        if (i == 0) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.f30008import = i - 1;
        byte[] bArr2 = this.f30020while;
        int i2 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) i2;
        int i3 = (i2 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) i3;
        int i4 = (i3 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) i4;
        bArr2[12] = (byte) ((i4 >>> 8) + (bArr2[12] & 255));
        this.f30002do.processBlock(bArr2, 0, bArr, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m33715do() {
        if (this.f30019try) {
            return;
        }
        if (!this.f30010new) {
            throw new IllegalStateException("GCM cipher needs to be initialised");
        }
        throw new IllegalStateException("GCM cipher cannot be reused for encryption");
    }

    /* renamed from: else, reason: not valid java name */
    private void m33716else() {
        if (this.f30015switch > 0) {
            System.arraycopy(this.f30014super, 0, this.f30017throw, 0, 16);
            this.f30018throws = this.f30015switch;
        }
        int i = this.f30013static;
        if (i > 0) {
            m33722try(this.f30017throw, this.f30012return, 0, i);
            this.f30018throws += this.f30013static;
        }
        if (this.f30018throws > 0) {
            System.arraycopy(this.f30017throw, 0, this.f30004final, 0, 16);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m33717for(byte[] bArr, byte[] bArr2) {
        ne0.m5192volatile(bArr, bArr2);
        this.f30007if.multiplyH(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m33718goto(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (bArr2.length - i2 < 16) {
            throw new f91("Output buffer too short");
        }
        if (this.f30011public == 0) {
            m33716else();
        }
        byte[] bArr3 = new byte[16];
        m33714case(bArr3);
        if (this.f30010new) {
            ne0.m5174interface(bArr3, bArr, i);
            m33717for(this.f30004final, bArr3);
            System.arraycopy(bArr3, 0, bArr2, i2, 16);
        } else {
            m33720new(this.f30004final, bArr, i);
            ne0.m5183strictfp(bArr3, 0, bArr, i, bArr2, i2);
        }
        this.f30011public += 16;
    }

    /* renamed from: if, reason: not valid java name */
    private void m33719if(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2 += 16) {
            m33722try(bArr, bArr2, i2, Math.min(i - i2, 16));
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m33720new(byte[] bArr, byte[] bArr2, int i) {
        ne0.m5174interface(bArr, bArr2, i);
        this.f30007if.multiplyH(bArr);
    }

    /* renamed from: this, reason: not valid java name */
    private void m33721this(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        byte[] bArr3 = new byte[16];
        m33714case(bArr3);
        if (this.f30010new) {
            ne0.m5161continue(bArr, i, bArr3, 0, i2);
            m33722try(this.f30004final, bArr, i, i2);
        } else {
            m33722try(this.f30004final, bArr, i, i2);
            ne0.m5161continue(bArr, i, bArr3, 0, i2);
        }
        System.arraycopy(bArr, i, bArr2, i3, i2);
        this.f30011public += i2;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33722try(byte[] bArr, byte[] bArr2, int i, int i2) {
        ne0.m5179protected(bArr, bArr2, i, i2);
        this.f30007if.multiplyH(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        m33715do();
        if (this.f30011public == 0) {
            m33716else();
        }
        int i2 = this.f30009native;
        if (!this.f30010new) {
            int i3 = this.f29998case;
            if (i2 < i3) {
                throw new tn0("data too short");
            }
            i2 -= i3;
            if (bArr.length - i < i2) {
                throw new f91("Output buffer too short");
            }
        } else if (bArr.length - i < this.f29998case + i2) {
            throw new f91("Output buffer too short");
        }
        if (i2 > 0) {
            m33721this(this.f30000class, 0, i2, bArr, i);
        }
        long j = this.f30015switch;
        int i4 = this.f30013static;
        long j2 = j + i4;
        this.f30015switch = j2;
        if (j2 > this.f30018throws) {
            if (i4 > 0) {
                m33722try(this.f30014super, this.f30012return, 0, i4);
            }
            if (this.f30018throws > 0) {
                ne0.m5192volatile(this.f30014super, this.f30017throw);
            }
            long j3 = ((this.f30011public * 8) + 127) >>> 7;
            byte[] bArr2 = new byte[16];
            if (this.f30005for == null) {
                w7 w7Var = new w7();
                this.f30005for = w7Var;
                w7Var.init(this.f29997break);
            }
            this.f30005for.exponentiateX(j3, bArr2);
            ne0.m5159class(this.f30014super, bArr2);
            ne0.m5192volatile(this.f30004final, this.f30014super);
        }
        byte[] bArr3 = new byte[16];
        ib1.m3369static(this.f30015switch * 8, bArr3, 0);
        ib1.m3369static(this.f30011public * 8, bArr3, 8);
        m33717for(this.f30004final, bArr3);
        byte[] bArr4 = new byte[16];
        this.f30002do.processBlock(this.f29999catch, 0, bArr4, 0);
        ne0.m5192volatile(bArr4, this.f30004final);
        int i5 = this.f29998case;
        byte[] bArr5 = new byte[i5];
        this.f30001const = bArr5;
        System.arraycopy(bArr4, 0, bArr5, 0, i5);
        if (this.f30010new) {
            System.arraycopy(this.f30001const, 0, bArr, i + this.f30009native, this.f29998case);
            i2 += this.f29998case;
        } else {
            int i6 = this.f29998case;
            byte[] bArr6 = new byte[i6];
            System.arraycopy(this.f30000class, i2, bArr6, 0, i6);
            if (!q3.m6360abstract(this.f30001const, bArr6)) {
                throw new tn0("mac check in GCM failed");
            }
        }
        m33713break(false);
        return i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30002do.getAlgorithmName() + "/GCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        byte[] bArr = this.f30001const;
        return bArr == null ? new byte[this.f29998case] : q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int i2 = i + this.f30009native;
        if (this.f30010new) {
            return i2 + this.f29998case;
        }
        int i3 = this.f29998case;
        if (i2 < i3) {
            return 0;
        }
        return i2 - i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30002do;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.f30009native;
        if (!this.f30010new) {
            int i3 = this.f29998case;
            if (i2 < i3) {
                return 0;
            }
            i2 -= i3;
        }
        return i2 - (i2 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM514do;
        gr0 gr0VarM5196if;
        byte[] bArr;
        this.f30010new = z;
        this.f30001const = null;
        this.f30019try = true;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            bArrM514do = cnew.m5197new();
            this.f30016this = cnew.m5194do();
            int iM5195for = cnew.m5195for();
            if (iM5195for < 32 || iM5195for > 128 || iM5195for % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + iM5195for);
            }
            this.f29998case = iM5195for / 8;
            gr0VarM5196if = cnew.m5196if();
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("invalid parameters passed to GCM");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            bArrM514do = bc1Var.m514do();
            this.f30016this = null;
            this.f29998case = 16;
            gr0VarM5196if = (gr0) bc1Var.m515if();
        }
        this.f30000class = new byte[z ? 16 : this.f29998case + 16];
        if (bArrM514do == null || bArrM514do.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (z && (bArr = this.f30006goto) != null && q3.m6362case(bArr, bArrM514do)) {
            if (gr0VarM5196if == null) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
            byte[] bArr2 = this.f30003else;
            if (bArr2 != null && q3.m6362case(bArr2, gr0VarM5196if.m2770do())) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
        }
        this.f30006goto = bArrM514do;
        if (gr0VarM5196if != null) {
            this.f30003else = gr0VarM5196if.m2770do();
        }
        if (gr0VarM5196if != null) {
            this.f30002do.init(true, gr0VarM5196if);
            byte[] bArr3 = new byte[16];
            this.f29997break = bArr3;
            this.f30002do.processBlock(bArr3, 0, bArr3, 0);
            this.f30007if.init(this.f29997break);
            this.f30005for = null;
        } else if (this.f29997break == null) {
            throw new IllegalArgumentException("Key must be specified in initial init");
        }
        byte[] bArr4 = new byte[16];
        this.f29999catch = bArr4;
        byte[] bArr5 = this.f30006goto;
        if (bArr5.length == 12) {
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            this.f29999catch[15] = 1;
        } else {
            m33719if(bArr4, bArr5, bArr5.length);
            byte[] bArr6 = new byte[16];
            ib1.m3369static(this.f30006goto.length * 8, bArr6, 8);
            m33717for(this.f29999catch, bArr6);
        }
        this.f30004final = new byte[16];
        this.f30014super = new byte[16];
        this.f30017throw = new byte[16];
        this.f30012return = new byte[16];
        this.f30013static = 0;
        this.f30015switch = 0L;
        this.f30018throws = 0L;
        this.f30020while = q3.m6371final(this.f29999catch);
        this.f30008import = -2;
        this.f30009native = 0;
        this.f30011public = 0L;
        byte[] bArr7 = this.f30016this;
        if (bArr7 != null) {
            processAADBytes(bArr7, 0, bArr7.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) {
        m33715do();
        byte[] bArr = this.f30012return;
        int i = this.f30013static;
        bArr[i] = b;
        int i2 = i + 1;
        this.f30013static = i2;
        if (i2 == 16) {
            m33717for(this.f30014super, bArr);
            this.f30013static = 0;
            this.f30015switch += 16;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        m33715do();
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.f30012return;
            int i4 = this.f30013static;
            bArr2[i4] = bArr[i + i3];
            int i5 = i4 + 1;
            this.f30013static = i5;
            if (i5 == 16) {
                m33717for(this.f30014super, bArr2);
                this.f30013static = 0;
                this.f30015switch += 16;
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        m33715do();
        byte[] bArr2 = this.f30000class;
        int i2 = this.f30009native;
        bArr2[i2] = b;
        int i3 = i2 + 1;
        this.f30009native = i3;
        if (i3 != bArr2.length) {
            return 0;
        }
        m33718goto(bArr2, 0, bArr, i);
        if (this.f30010new) {
            this.f30009native = 0;
        } else {
            byte[] bArr3 = this.f30000class;
            System.arraycopy(bArr3, 16, bArr3, 0, this.f29998case);
            this.f30009native = this.f29998case;
        }
        return 16;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034 A[LOOP:1: B:14:0x0032->B:15:0x0034, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        int i4;
        m33715do();
        if (bArr.length - i < i2) {
            throw new tw("Input buffer too short");
        }
        if (!this.f30010new) {
            i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                byte[] bArr3 = this.f30000class;
                int i6 = this.f30009native;
                bArr3[i6] = bArr[i + i5];
                int i7 = i6 + 1;
                this.f30009native = i7;
                if (i7 == bArr3.length) {
                    m33718goto(bArr3, 0, bArr2, i3 + i4);
                    byte[] bArr4 = this.f30000class;
                    System.arraycopy(bArr4, 16, bArr4, 0, this.f29998case);
                    this.f30009native = this.f29998case;
                    i4 += 16;
                }
            }
        } else if (this.f30009native != 0) {
            while (i2 > 0) {
                i2--;
                byte[] bArr5 = this.f30000class;
                int i8 = this.f30009native;
                int i9 = i + 1;
                bArr5[i8] = bArr[i];
                int i10 = i8 + 1;
                this.f30009native = i10;
                if (i10 == 16) {
                    m33718goto(bArr5, 0, bArr2, i3);
                    this.f30009native = 0;
                    i = i9;
                    i4 = 16;
                    break;
                }
                i = i9;
            }
            i4 = 0;
            while (i2 >= 16) {
                m33718goto(bArr, i, bArr2, i3 + i4);
                i += 16;
                i2 -= 16;
                i4 += 16;
            }
            if (i2 > 0) {
                System.arraycopy(bArr, i, this.f30000class, 0, i2);
                this.f30009native = i2;
            }
        } else {
            i4 = 0;
            while (i2 >= 16) {
            }
            if (i2 > 0) {
            }
        }
        return i4;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        m33713break(true);
    }
}
