package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class ig0 implements ExtendedDigest, Memoable {

    /* renamed from: native, reason: not valid java name */
    private static final int f2746native = 32;

    /* renamed from: public, reason: not valid java name */
    private static final byte[] f2747public = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};

    /* renamed from: break, reason: not valid java name */
    private byte[] f2748break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f2749case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f2750catch;

    /* renamed from: class, reason: not valid java name */
    public byte[] f2751class;

    /* renamed from: const, reason: not valid java name */
    public short[] f2752const;

    /* renamed from: do, reason: not valid java name */
    private byte[] f2753do;

    /* renamed from: else, reason: not valid java name */
    private int f2754else;

    /* renamed from: final, reason: not valid java name */
    public short[] f2755final;

    /* renamed from: for, reason: not valid java name */
    private byte[] f2756for;

    /* renamed from: goto, reason: not valid java name */
    private long f2757goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f2758if;

    /* renamed from: import, reason: not valid java name */
    public byte[] f2759import;

    /* renamed from: new, reason: not valid java name */
    private byte[] f2760new;

    /* renamed from: super, reason: not valid java name */
    public byte[] f2761super;

    /* renamed from: this, reason: not valid java name */
    private BlockCipher f2762this;

    /* renamed from: throw, reason: not valid java name */
    public byte[] f2763throw;

    /* renamed from: try, reason: not valid java name */
    private byte[][] f2764try;

    /* renamed from: while, reason: not valid java name */
    public byte[] f2765while;

    public ig0() throws IllegalArgumentException {
        this.f2753do = new byte[32];
        this.f2758if = new byte[32];
        this.f2756for = new byte[32];
        this.f2760new = new byte[32];
        this.f2764try = (byte[][]) Array.newInstance((Class<?>) byte.class, 4, 32);
        this.f2749case = new byte[32];
        this.f2762this = new mf0();
        this.f2750catch = new byte[32];
        this.f2751class = new byte[8];
        this.f2752const = new short[16];
        this.f2755final = new short[16];
        this.f2761super = new byte[32];
        this.f2763throw = new byte[32];
        this.f2765while = new byte[32];
        this.f2759import = new byte[32];
        byte[] bArrM4916case = mf0.m4916case("D-A");
        this.f2748break = bArrM4916case;
        this.f2762this.init(true, new dc1(null, bArrM4916case));
        reset();
    }

    public ig0(ig0 ig0Var) throws IllegalArgumentException {
        this.f2753do = new byte[32];
        this.f2758if = new byte[32];
        this.f2756for = new byte[32];
        this.f2760new = new byte[32];
        this.f2764try = (byte[][]) Array.newInstance((Class<?>) byte.class, 4, 32);
        this.f2749case = new byte[32];
        this.f2762this = new mf0();
        this.f2750catch = new byte[32];
        this.f2751class = new byte[8];
        this.f2752const = new short[16];
        this.f2755final = new short[16];
        this.f2761super = new byte[32];
        this.f2763throw = new byte[32];
        this.f2765while = new byte[32];
        this.f2759import = new byte[32];
        reset(ig0Var);
    }

    public ig0(byte[] bArr) throws IllegalArgumentException {
        this.f2753do = new byte[32];
        this.f2758if = new byte[32];
        this.f2756for = new byte[32];
        this.f2760new = new byte[32];
        this.f2764try = (byte[][]) Array.newInstance((Class<?>) byte.class, 4, 32);
        this.f2749case = new byte[32];
        this.f2762this = new mf0();
        this.f2750catch = new byte[32];
        this.f2751class = new byte[8];
        this.f2752const = new short[16];
        this.f2755final = new short[16];
        this.f2761super = new byte[32];
        this.f2763throw = new byte[32];
        this.f2765while = new byte[32];
        this.f2759import = new byte[32];
        byte[] bArrM6371final = q3.m6371final(bArr);
        this.f2748break = bArrM6371final;
        this.f2762this.init(true, new dc1(null, bArrM6371final));
        reset();
    }

    /* renamed from: case, reason: not valid java name */
    private void m3416case() throws IllegalStateException, tw, IllegalArgumentException {
        ib1.m3356extends(this.f2757goto * 8, this.f2758if, 0);
        while (this.f2754else != 0) {
            update((byte) 0);
        }
        m3424goto(this.f2758if, 0);
        m3424goto(this.f2760new, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m3417do(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            this.f2751class[i] = (byte) (bArr[i] ^ bArr[i + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f2751class, 0, bArr, 24, 8);
        return bArr;
    }

    /* renamed from: else, reason: not valid java name */
    private void m3418else(byte[] bArr) {
        m3421new(bArr, this.f2752const);
        short[] sArr = this.f2755final;
        short[] sArr2 = this.f2752const;
        sArr[15] = (short) (((((sArr2[0] ^ sArr2[1]) ^ sArr2[2]) ^ sArr2[3]) ^ sArr2[12]) ^ sArr2[15]);
        System.arraycopy(sArr2, 1, sArr, 0, 15);
        m3423try(this.f2755final, bArr);
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m3419for(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            byte[] bArr2 = this.f2750catch;
            int i2 = i * 4;
            bArr2[i2] = bArr[i];
            bArr2[i2 + 1] = bArr[i + 8];
            bArr2[i2 + 2] = bArr[i + 16];
            bArr2[i2 + 3] = bArr[i + 24];
        }
        return this.f2750catch;
    }

    /* renamed from: if, reason: not valid java name */
    private void m3420if(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        this.f2762this.init(true, new gr0(bArr));
        this.f2762this.processBlock(bArr3, i2, bArr2, i);
    }

    /* renamed from: new, reason: not valid java name */
    private void m3421new(byte[] bArr, short[] sArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            sArr[i] = (short) ((bArr[i2] & 255) | ((bArr[i2 + 1] << 8) & 65280));
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m3422this(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f2760new;
            if (i == bArr2.length) {
                return;
            }
            int i3 = (bArr2[i] & 255) + (bArr[i] & 255) + i2;
            bArr2[i] = (byte) i3;
            i2 = i3 >>> 8;
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m3423try(short[] sArr, byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            bArr[i2 + 1] = (byte) (sArr[i] >> 8);
            bArr[i2] = (byte) sArr[i];
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new ig0(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw, IllegalArgumentException {
        m3416case();
        byte[] bArr2 = this.f2753do;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m3424goto(byte[] bArr, int i) throws IllegalStateException, tw, IllegalArgumentException {
        System.arraycopy(bArr, i, this.f2756for, 0, 32);
        System.arraycopy(this.f2753do, 0, this.f2763throw, 0, 32);
        System.arraycopy(this.f2756for, 0, this.f2765while, 0, 32);
        for (int i2 = 0; i2 < 32; i2++) {
            this.f2759import[i2] = (byte) (this.f2763throw[i2] ^ this.f2765while[i2]);
        }
        m3420if(m3419for(this.f2759import), this.f2761super, 0, this.f2753do, 0);
        for (int i3 = 1; i3 < 4; i3++) {
            byte[] bArrM3417do = m3417do(this.f2763throw);
            for (int i4 = 0; i4 < 32; i4++) {
                this.f2763throw[i4] = (byte) (bArrM3417do[i4] ^ this.f2764try[i3][i4]);
            }
            this.f2765while = m3417do(m3417do(this.f2765while));
            for (int i5 = 0; i5 < 32; i5++) {
                this.f2759import[i5] = (byte) (this.f2763throw[i5] ^ this.f2765while[i5]);
            }
            int i6 = i3 * 8;
            m3420if(m3419for(this.f2759import), this.f2761super, i6, this.f2753do, i6);
        }
        for (int i7 = 0; i7 < 12; i7++) {
            m3418else(this.f2761super);
        }
        for (int i8 = 0; i8 < 32; i8++) {
            byte[] bArr2 = this.f2761super;
            bArr2[i8] = (byte) (bArr2[i8] ^ this.f2756for[i8]);
        }
        m3418else(this.f2761super);
        for (int i9 = 0; i9 < 32; i9++) {
            byte[] bArr3 = this.f2761super;
            bArr3[i9] = (byte) (this.f2753do[i9] ^ bArr3[i9]);
        }
        for (int i10 = 0; i10 < 61; i10++) {
            m3418else(this.f2761super);
        }
        byte[] bArr4 = this.f2761super;
        byte[] bArr5 = this.f2753do;
        System.arraycopy(bArr4, 0, bArr5, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f2757goto = 0L;
        this.f2754else = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f2753do;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = 0;
            i++;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f2758if;
            if (i2 >= bArr2.length) {
                break;
            }
            bArr2[i2] = 0;
            i2++;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr3 = this.f2756for;
            if (i3 >= bArr3.length) {
                break;
            }
            bArr3[i3] = 0;
            i3++;
        }
        int i4 = 0;
        while (true) {
            byte[][] bArr4 = this.f2764try;
            if (i4 >= bArr4[1].length) {
                break;
            }
            bArr4[1][i4] = 0;
            i4++;
        }
        int i5 = 0;
        while (true) {
            byte[][] bArr5 = this.f2764try;
            if (i5 >= bArr5[3].length) {
                break;
            }
            bArr5[3][i5] = 0;
            i5++;
        }
        int i6 = 0;
        while (true) {
            byte[] bArr6 = this.f2760new;
            if (i6 >= bArr6.length) {
                break;
            }
            bArr6[i6] = 0;
            i6++;
        }
        int i7 = 0;
        while (true) {
            byte[] bArr7 = this.f2749case;
            if (i7 >= bArr7.length) {
                byte[] bArr8 = f2747public;
                System.arraycopy(bArr8, 0, this.f2764try[2], 0, bArr8.length);
                return;
            } else {
                bArr7[i7] = 0;
                i7++;
            }
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) throws IllegalArgumentException {
        ig0 ig0Var = (ig0) memoable;
        byte[] bArr = ig0Var.f2748break;
        this.f2748break = bArr;
        this.f2762this.init(true, new dc1(null, bArr));
        reset();
        byte[] bArr2 = ig0Var.f2753do;
        System.arraycopy(bArr2, 0, this.f2753do, 0, bArr2.length);
        byte[] bArr3 = ig0Var.f2758if;
        System.arraycopy(bArr3, 0, this.f2758if, 0, bArr3.length);
        byte[] bArr4 = ig0Var.f2756for;
        System.arraycopy(bArr4, 0, this.f2756for, 0, bArr4.length);
        byte[] bArr5 = ig0Var.f2760new;
        System.arraycopy(bArr5, 0, this.f2760new, 0, bArr5.length);
        byte[][] bArr6 = ig0Var.f2764try;
        System.arraycopy(bArr6[1], 0, this.f2764try[1], 0, bArr6[1].length);
        byte[][] bArr7 = ig0Var.f2764try;
        System.arraycopy(bArr7[2], 0, this.f2764try[2], 0, bArr7[2].length);
        byte[][] bArr8 = ig0Var.f2764try;
        System.arraycopy(bArr8[3], 0, this.f2764try[3], 0, bArr8[3].length);
        byte[] bArr9 = ig0Var.f2749case;
        System.arraycopy(bArr9, 0, this.f2749case, 0, bArr9.length);
        this.f2754else = ig0Var.f2754else;
        this.f2757goto = ig0Var.f2757goto;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArr = this.f2749case;
        int i = this.f2754else;
        int i2 = i + 1;
        this.f2754else = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            m3422this(bArr);
            m3424goto(this.f2749case, 0);
            this.f2754else = 0;
        }
        this.f2757goto++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        while (this.f2754else != 0 && i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
        while (true) {
            byte[] bArr2 = this.f2749case;
            if (i2 <= bArr2.length) {
                break;
            }
            System.arraycopy(bArr, i, bArr2, 0, bArr2.length);
            m3422this(this.f2749case);
            m3424goto(this.f2749case, 0);
            byte[] bArr3 = this.f2749case;
            i += bArr3.length;
            i2 -= bArr3.length;
            this.f2757goto += bArr3.length;
        }
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
