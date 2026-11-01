package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.ue;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.modes.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements AEADBlockCipher {

    /* renamed from: const, reason: not valid java name */
    private static final byte f30176const = 0;

    /* renamed from: final, reason: not valid java name */
    private static final byte f30177final = 1;

    /* renamed from: super, reason: not valid java name */
    private static final byte f30178super = 2;

    /* renamed from: break, reason: not valid java name */
    private int f30179break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30180case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f30181catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f30182class;

    /* renamed from: do, reason: not valid java name */
    private Cthrows f30183do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30184else;

    /* renamed from: for, reason: not valid java name */
    private int f30185for;

    /* renamed from: goto, reason: not valid java name */
    private int f30186goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f30187if;

    /* renamed from: new, reason: not valid java name */
    private Mac f30188new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30189this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30190try;

    public Ctry(BlockCipher blockCipher) {
        this.f30185for = blockCipher.getBlockSize();
        ue ueVar = new ue(blockCipher);
        this.f30188new = ueVar;
        this.f30184else = new byte[this.f30185for];
        this.f30180case = new byte[ueVar.getMacSize()];
        this.f30190try = new byte[this.f30188new.getMacSize()];
        this.f30183do = new Cthrows(blockCipher);
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m33796case(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f30186goto; i3++) {
            i2 |= this.f30184else[i3] ^ bArr[i + i3];
        }
        return i2 == 0;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33797do() throws IllegalStateException, tw {
        byte[] bArr = new byte[this.f30185for];
        int i = 0;
        this.f30188new.doFinal(bArr, 0);
        while (true) {
            byte[] bArr2 = this.f30184else;
            if (i >= bArr2.length) {
                return;
            }
            bArr2[i] = (byte) ((this.f30190try[i] ^ this.f30180case[i]) ^ bArr[i]);
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m33798for() throws IllegalStateException, tw {
        if (this.f30181catch) {
            return;
        }
        this.f30181catch = true;
        this.f30188new.doFinal(this.f30180case, 0);
        int i = this.f30185for;
        byte[] bArr = new byte[i];
        bArr[i - 1] = 2;
        this.f30188new.update(bArr, 0, i);
    }

    /* renamed from: new, reason: not valid java name */
    private int m33799new(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        int iProcessBlock;
        byte[] bArr2 = this.f30189this;
        int i2 = this.f30179break;
        int i3 = i2 + 1;
        this.f30179break = i3;
        bArr2[i2] = b;
        if (i3 != bArr2.length) {
            return 0;
        }
        int length = bArr.length;
        int i4 = this.f30185for;
        if (length < i + i4) {
            throw new f91("Output buffer is too short");
        }
        if (this.f30187if) {
            iProcessBlock = this.f30183do.processBlock(bArr2, 0, bArr, i);
            this.f30188new.update(bArr, i, this.f30185for);
        } else {
            this.f30188new.update(bArr2, 0, i4);
            iProcessBlock = this.f30183do.processBlock(this.f30189this, 0, bArr, i);
        }
        this.f30179break = 0;
        if (!this.f30187if) {
            byte[] bArr3 = this.f30189this;
            System.arraycopy(bArr3, this.f30185for, bArr3, 0, this.f30186goto);
            this.f30179break = this.f30186goto;
        }
        return iProcessBlock;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33800try(boolean z) throws IllegalStateException, tw {
        this.f30183do.reset();
        this.f30188new.reset();
        this.f30179break = 0;
        q3.c(this.f30189this, (byte) 0);
        if (z) {
            q3.c(this.f30184else, (byte) 0);
        }
        int i = this.f30185for;
        byte[] bArr = new byte[i];
        bArr[i - 1] = 1;
        this.f30188new.update(bArr, 0, i);
        this.f30181catch = false;
        byte[] bArr2 = this.f30182class;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        m33798for();
        int i2 = this.f30179break;
        byte[] bArr2 = this.f30189this;
        byte[] bArr3 = new byte[bArr2.length];
        this.f30179break = 0;
        if (this.f30187if) {
            int i3 = i + i2;
            if (bArr.length < this.f30186goto + i3) {
                throw new f91("Output buffer too short");
            }
            this.f30183do.processBlock(bArr2, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, i, i2);
            this.f30188new.update(bArr3, 0, i2);
            m33797do();
            System.arraycopy(this.f30184else, 0, bArr, i3, this.f30186goto);
            m33800try(false);
            return i2 + this.f30186goto;
        }
        int i4 = this.f30186goto;
        if (i2 < i4) {
            throw new tn0("data too short");
        }
        if (bArr.length < (i + i2) - i4) {
            throw new f91("Output buffer too short");
        }
        if (i2 > i4) {
            this.f30188new.update(bArr2, 0, i2 - i4);
            this.f30183do.processBlock(this.f30189this, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, i, i2 - this.f30186goto);
        }
        m33797do();
        if (!m33796case(this.f30189this, i2 - this.f30186goto)) {
            throw new tn0("mac check in EAX failed");
        }
        m33800try(false);
        return i2 - this.f30186goto;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30183do.m34452if().getAlgorithmName() + "/EAX";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        int i = this.f30186goto;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f30184else, 0, bArr, 0, i);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int i2 = i + this.f30179break;
        if (this.f30187if) {
            return i2 + this.f30186goto;
        }
        int i3 = this.f30186goto;
        if (i2 < i3) {
            return 0;
        }
        return i2 - i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30183do.m34452if();
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.f30179break;
        if (!this.f30187if) {
            int i3 = this.f30186goto;
            if (i2 < i3) {
                return 0;
            }
            i2 -= i3;
        }
        return i2 - (i2 % this.f30185for);
    }

    /* renamed from: if, reason: not valid java name */
    public int m33801if() {
        return this.f30183do.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM514do;
        CipherParameters cipherParametersM515if;
        this.f30187if = z;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            bArrM514do = cnew.m5197new();
            this.f30182class = cnew.m5194do();
            this.f30186goto = cnew.m5195for() / 8;
            cipherParametersM515if = cnew.m5196if();
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("invalid parameters passed to EAX");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            bArrM514do = bc1Var.m514do();
            this.f30182class = null;
            this.f30186goto = this.f30188new.getMacSize() / 2;
            cipherParametersM515if = bc1Var.m515if();
        }
        this.f30189this = new byte[z ? this.f30185for : this.f30185for + this.f30186goto];
        byte[] bArr = new byte[this.f30185for];
        this.f30188new.init(cipherParametersM515if);
        int i = this.f30185for;
        bArr[i - 1] = 0;
        this.f30188new.update(bArr, 0, i);
        this.f30188new.update(bArrM514do, 0, bArrM514do.length);
        this.f30188new.doFinal(this.f30190try, 0);
        this.f30183do.init(true, new bc1(null, this.f30190try));
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) throws IllegalStateException {
        if (this.f30181catch) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.f30188new.update(b);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (this.f30181catch) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.f30188new.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        m33798for();
        return m33799new(b, bArr, i);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        m33798for();
        if (bArr.length < i + i2) {
            throw new tw("Input buffer too short");
        }
        int iM33799new = 0;
        for (int i4 = 0; i4 != i2; i4++) {
            iM33799new += m33799new(bArr[i + i4], bArr2, i3 + iM33799new);
        }
        return iM33799new;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() throws IllegalStateException, tw {
        m33800try(true);
    }
}
