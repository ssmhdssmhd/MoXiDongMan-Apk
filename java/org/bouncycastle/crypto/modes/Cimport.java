package org.bouncycastle.crypto.modes;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import java.util.Vector;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport implements AEADBlockCipher {

    /* renamed from: switch, reason: not valid java name */
    private static final int f30095switch = 16;

    /* renamed from: case, reason: not valid java name */
    private Vector f30097case;

    /* renamed from: class, reason: not valid java name */
    private byte[] f30099class;

    /* renamed from: const, reason: not valid java name */
    private byte[] f30100const;

    /* renamed from: do, reason: not valid java name */
    private BlockCipher f30101do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30102else;

    /* renamed from: final, reason: not valid java name */
    private int f30103final;

    /* renamed from: for, reason: not valid java name */
    private boolean f30104for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f30105goto;

    /* renamed from: if, reason: not valid java name */
    private BlockCipher f30106if;

    /* renamed from: import, reason: not valid java name */
    private byte[] f30107import;

    /* renamed from: native, reason: not valid java name */
    private byte[] f30108native;

    /* renamed from: new, reason: not valid java name */
    private int f30109new;

    /* renamed from: return, reason: not valid java name */
    private byte[] f30111return;

    /* renamed from: static, reason: not valid java name */
    private byte[] f30112static;

    /* renamed from: super, reason: not valid java name */
    private int f30113super;

    /* renamed from: throw, reason: not valid java name */
    private long f30115throw;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30116try;

    /* renamed from: while, reason: not valid java name */
    private long f30117while;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30114this = null;

    /* renamed from: break, reason: not valid java name */
    private byte[] f30096break = new byte[24];

    /* renamed from: catch, reason: not valid java name */
    private byte[] f30098catch = new byte[16];

    /* renamed from: public, reason: not valid java name */
    private byte[] f30110public = new byte[16];

    public Cimport(BlockCipher blockCipher, BlockCipher blockCipher2) {
        if (blockCipher == null) {
            throw new IllegalArgumentException("'hashCipher' cannot be null");
        }
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
        }
        if (blockCipher2 == null) {
            throw new IllegalArgumentException("'mainCipher' cannot be null");
        }
        if (blockCipher2.getBlockSize() != 16) {
            throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
        }
        if (!blockCipher.getAlgorithmName().equals(blockCipher2.getAlgorithmName())) {
            throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
        }
        this.f30101do = blockCipher;
        this.f30106if = blockCipher2;
    }

    /* renamed from: break, reason: not valid java name */
    public static int m33758break(byte[] bArr, byte[] bArr2) {
        int i = 16;
        int i2 = 0;
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int i3 = bArr[i] & 255;
            bArr2[i] = (byte) (i2 | (i3 << 1));
            i2 = (i3 >>> 7) & 1;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m33759class(byte[] bArr, byte[] bArr2) {
        for (int i = 15; i >= 0; i--) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m33760do(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) ((135 >>> ((1 - m33758break(bArr, bArr2)) << 3)) ^ bArr2[15]);
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m33761for(long j) {
        if (j == 0) {
            return 64;
        }
        int i = 0;
        while ((1 & j) == 0) {
            i++;
            j >>>= 1;
        }
        return i;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m33762if(byte[] bArr, int i) {
        bArr[i] = Byte.MIN_VALUE;
        while (true) {
            i++;
            if (i >= 16) {
                return;
            } else {
                bArr[i] = 0;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m33763case() throws IllegalStateException, tw {
        long j = this.f30115throw + 1;
        this.f30115throw = j;
        m33764catch(m33769try(m33761for(j)));
        this.f30103final = 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m33764catch(byte[] bArr) throws IllegalStateException, tw {
        m33759class(this.f30107import, bArr);
        m33759class(this.f30099class, this.f30107import);
        BlockCipher blockCipher = this.f30101do;
        byte[] bArr2 = this.f30099class;
        blockCipher.processBlock(bArr2, 0, bArr2, 0);
        m33759class(this.f30108native, this.f30099class);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, tn0 {
        byte[] bArr2;
        if (this.f30104for) {
            bArr2 = null;
        } else {
            int i2 = this.f30113super;
            int i3 = this.f30109new;
            if (i2 < i3) {
                throw new tn0("data too short");
            }
            int i4 = i2 - i3;
            this.f30113super = i4;
            bArr2 = new byte[i3];
            System.arraycopy(this.f30100const, i4, bArr2, 0, i3);
        }
        int i5 = this.f30103final;
        if (i5 > 0) {
            m33762if(this.f30099class, i5);
            m33764catch(this.f30102else);
        }
        int i6 = this.f30113super;
        if (i6 > 0) {
            if (this.f30104for) {
                m33762if(this.f30100const, i6);
                m33759class(this.f30111return, this.f30100const);
            }
            m33759class(this.f30110public, this.f30102else);
            byte[] bArr3 = new byte[16];
            this.f30101do.processBlock(this.f30110public, 0, bArr3, 0);
            m33759class(this.f30100const, bArr3);
            int length = bArr.length;
            int i7 = this.f30113super;
            if (length < i + i7) {
                throw new f91("Output buffer too short");
            }
            System.arraycopy(this.f30100const, 0, bArr, i, i7);
            if (!this.f30104for) {
                m33762if(this.f30100const, this.f30113super);
                m33759class(this.f30111return, this.f30100const);
            }
        }
        m33759class(this.f30111return, this.f30110public);
        m33759class(this.f30111return, this.f30105goto);
        BlockCipher blockCipher = this.f30101do;
        byte[] bArr4 = this.f30111return;
        blockCipher.processBlock(bArr4, 0, bArr4, 0);
        m33759class(this.f30111return, this.f30108native);
        int i8 = this.f30109new;
        byte[] bArr5 = new byte[i8];
        this.f30112static = bArr5;
        System.arraycopy(this.f30111return, 0, bArr5, 0, i8);
        int i9 = this.f30113super;
        if (this.f30104for) {
            int length2 = bArr.length;
            int i10 = i + i9;
            int i11 = this.f30109new;
            if (length2 < i10 + i11) {
                throw new f91("Output buffer too short");
            }
            System.arraycopy(this.f30112static, 0, bArr, i10, i11);
            i9 += this.f30109new;
        } else if (!q3.m6360abstract(this.f30112static, bArr2)) {
            throw new tn0("mac check in OCB failed");
        }
        m33768this(false);
        return i9;
    }

    /* renamed from: else, reason: not valid java name */
    public void m33765else(byte[] bArr, int i) throws IllegalStateException, tw {
        if (bArr.length < i + 16) {
            throw new f91("Output buffer too short");
        }
        if (this.f30104for) {
            m33759class(this.f30111return, this.f30100const);
            this.f30113super = 0;
        }
        byte[] bArr2 = this.f30110public;
        long j = this.f30117while + 1;
        this.f30117while = j;
        m33759class(bArr2, m33769try(m33761for(j)));
        m33759class(this.f30100const, this.f30110public);
        BlockCipher blockCipher = this.f30106if;
        byte[] bArr3 = this.f30100const;
        blockCipher.processBlock(bArr3, 0, bArr3, 0);
        m33759class(this.f30100const, this.f30110public);
        System.arraycopy(this.f30100const, 0, bArr, i, 16);
        if (this.f30104for) {
            return;
        }
        m33759class(this.f30111return, this.f30100const);
        byte[] bArr4 = this.f30100const;
        System.arraycopy(bArr4, 16, bArr4, 0, this.f30109new);
        this.f30113super = this.f30109new;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.f30106if.getAlgorithmName() + "/OCB";
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        byte[] bArr = this.f30112static;
        return bArr == null ? new byte[this.f30109new] : q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int i2 = i + this.f30113super;
        if (this.f30104for) {
            return i2 + this.f30109new;
        }
        int i3 = this.f30109new;
        if (i2 < i3) {
            return 0;
        }
        return i2 - i3;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.f30106if;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.f30113super;
        if (!this.f30104for) {
            int i3 = this.f30109new;
            if (i2 < i3) {
                return 0;
            }
            i2 -= i3;
        }
        return i2 - (i2 % 16);
    }

    /* renamed from: goto, reason: not valid java name */
    public int m33766goto(byte[] bArr) throws IllegalStateException, tw {
        byte[] bArr2 = new byte[16];
        int i = 0;
        System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
        bArr2[0] = (byte) (this.f30109new << 4);
        int length = 15 - bArr.length;
        bArr2[length] = (byte) (bArr2[length] | 1);
        int i2 = bArr2[15] & Utf8.REPLACEMENT_BYTE;
        bArr2[15] = (byte) (bArr2[15] & 192);
        byte[] bArr3 = this.f30114this;
        if (bArr3 == null || !q3.m6362case(bArr2, bArr3)) {
            byte[] bArr4 = new byte[16];
            this.f30114this = bArr2;
            this.f30101do.processBlock(bArr2, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, this.f30096break, 0, 16);
            while (i < 8) {
                byte[] bArr5 = this.f30096break;
                int i3 = i + 16;
                byte b = bArr4[i];
                i++;
                bArr5[i3] = (byte) (b ^ bArr4[i]);
            }
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM514do;
        gr0 gr0VarM5196if;
        boolean z2 = this.f30104for;
        this.f30104for = z;
        this.f30112static = null;
        if (cipherParameters instanceof Cnew) {
            Cnew cnew = (Cnew) cipherParameters;
            bArrM514do = cnew.m5197new();
            this.f30116try = cnew.m5194do();
            int iM5195for = cnew.m5195for();
            if (iM5195for < 64 || iM5195for > 128 || iM5195for % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + iM5195for);
            }
            this.f30109new = iM5195for / 8;
            gr0VarM5196if = cnew.m5196if();
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("invalid parameters passed to OCB");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            bArrM514do = bc1Var.m514do();
            this.f30116try = null;
            this.f30109new = 16;
            gr0VarM5196if = (gr0) bc1Var.m515if();
        }
        this.f30099class = new byte[16];
        this.f30100const = new byte[z ? 16 : this.f30109new + 16];
        if (bArrM514do == null) {
            bArrM514do = new byte[0];
        }
        if (bArrM514do.length > 15) {
            throw new IllegalArgumentException("IV must be no more than 15 bytes");
        }
        if (gr0VarM5196if != null) {
            this.f30101do.init(true, gr0VarM5196if);
            this.f30106if.init(z, gr0VarM5196if);
            this.f30114this = null;
        } else if (z2 != z) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
        byte[] bArr = new byte[16];
        this.f30102else = bArr;
        this.f30101do.processBlock(bArr, 0, bArr, 0);
        this.f30105goto = m33760do(this.f30102else);
        Vector vector = new Vector();
        this.f30097case = vector;
        vector.addElement(m33760do(this.f30105goto));
        int iM33766goto = m33766goto(bArrM514do);
        int i = iM33766goto % 8;
        int i2 = iM33766goto / 8;
        if (i == 0) {
            System.arraycopy(this.f30096break, i2, this.f30098catch, 0, 16);
        } else {
            for (int i3 = 0; i3 < 16; i3++) {
                byte[] bArr2 = this.f30096break;
                int i4 = bArr2[i2] & 255;
                i2++;
                this.f30098catch[i3] = (byte) (((bArr2[i2] & 255) >>> (8 - i)) | (i4 << i));
            }
        }
        this.f30103final = 0;
        this.f30113super = 0;
        this.f30115throw = 0L;
        this.f30117while = 0L;
        this.f30107import = new byte[16];
        this.f30108native = new byte[16];
        System.arraycopy(this.f30098catch, 0, this.f30110public, 0, 16);
        this.f30111return = new byte[16];
        byte[] bArr3 = this.f30116try;
        if (bArr3 != null) {
            processAADBytes(bArr3, 0, bArr3.length);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m33767new(byte[] bArr) {
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) throws IllegalStateException, tw {
        byte[] bArr = this.f30099class;
        int i = this.f30103final;
        bArr[i] = b;
        int i2 = i + 1;
        this.f30103final = i2;
        if (i2 == bArr.length) {
            m33763case();
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.f30099class;
            int i4 = this.f30103final;
            bArr2[i4] = bArr[i + i3];
            int i5 = i4 + 1;
            this.f30103final = i5;
            if (i5 == bArr2.length) {
                m33763case();
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws IllegalStateException, tw {
        byte[] bArr2 = this.f30100const;
        int i2 = this.f30113super;
        bArr2[i2] = b;
        int i3 = i2 + 1;
        this.f30113super = i3;
        if (i3 != bArr2.length) {
            return 0;
        }
        m33765else(bArr, i);
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (bArr.length < i + i2) {
            throw new tw("Input buffer too short");
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte[] bArr3 = this.f30100const;
            int i6 = this.f30113super;
            bArr3[i6] = bArr[i + i5];
            int i7 = i6 + 1;
            this.f30113super = i7;
            if (i7 == bArr3.length) {
                m33765else(bArr2, i3 + i4);
                i4 += 16;
            }
        }
        return i4;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public void reset() throws IllegalStateException, tw {
        m33768this(true);
    }

    /* renamed from: this, reason: not valid java name */
    public void m33768this(boolean z) throws IllegalStateException, tw {
        this.f30101do.reset();
        this.f30106if.reset();
        m33767new(this.f30099class);
        m33767new(this.f30100const);
        this.f30103final = 0;
        this.f30113super = 0;
        this.f30115throw = 0L;
        this.f30117while = 0L;
        m33767new(this.f30107import);
        m33767new(this.f30108native);
        System.arraycopy(this.f30098catch, 0, this.f30110public, 0, 16);
        m33767new(this.f30111return);
        if (z) {
            this.f30112static = null;
        }
        byte[] bArr = this.f30116try;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m33769try(int i) {
        while (i >= this.f30097case.size()) {
            Vector vector = this.f30097case;
            vector.addElement(m33760do((byte[]) vector.lastElement()));
        }
        return (byte[]) this.f30097case.elementAt(i);
    }
}
