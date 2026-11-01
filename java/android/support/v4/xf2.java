package android.support.v4;

import androidx.fragment.app.FragmentManagerImpl;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.math.Cdo;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public final class xf2 implements ExtendedDigest, Memoable {

    /* renamed from: break, reason: not valid java name */
    private static final int f7908break = 64;

    /* renamed from: catch, reason: not valid java name */
    private static final int f7909catch = 64;

    /* renamed from: class, reason: not valid java name */
    private static final int f7910class = 10;

    /* renamed from: const, reason: not valid java name */
    private static final int f7911const = 285;

    /* renamed from: switch, reason: not valid java name */
    private static final int f7919switch = 32;

    /* renamed from: throws, reason: not valid java name */
    private static final short[] f7921throws;

    /* renamed from: case, reason: not valid java name */
    private long[] f7923case;

    /* renamed from: do, reason: not valid java name */
    private final long[] f7924do;

    /* renamed from: else, reason: not valid java name */
    private long[] f7925else;

    /* renamed from: for, reason: not valid java name */
    private int f7926for;

    /* renamed from: goto, reason: not valid java name */
    private long[] f7927goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f7928if;

    /* renamed from: new, reason: not valid java name */
    private short[] f7929new;

    /* renamed from: this, reason: not valid java name */
    private long[] f7930this;

    /* renamed from: try, reason: not valid java name */
    private long[] f7931try;

    /* renamed from: final, reason: not valid java name */
    private static final int[] f7912final = {24, 35, 198, 232, 135, 184, 1, 79, 54, 166, oc.f4541try, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, 224, 215, 194, 46, 75, wd.i2, 87, 21, 119, 55, 229, 159, MountainSceneView.f20267finally, 74, 218, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, 251, 238, 124, 102, 221, 23, 71, 158, 202, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, 153, 109, 13, 250, 223, 126, 36, 59, 171, 206, 17, 143, 78, 183, 235, 60, 129, 148, 247, 185, 19, 44, Cdo.f31781do, 231, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, FragmentManagerImpl.ANIM_DUR, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, 134};

    /* renamed from: super, reason: not valid java name */
    private static final long[] f7918super = new long[256];

    /* renamed from: throw, reason: not valid java name */
    private static final long[] f7920throw = new long[256];

    /* renamed from: while, reason: not valid java name */
    private static final long[] f7922while = new long[256];

    /* renamed from: import, reason: not valid java name */
    private static final long[] f7913import = new long[256];

    /* renamed from: native, reason: not valid java name */
    private static final long[] f7914native = new long[256];

    /* renamed from: public, reason: not valid java name */
    private static final long[] f7915public = new long[256];

    /* renamed from: return, reason: not valid java name */
    private static final long[] f7916return = new long[256];

    /* renamed from: static, reason: not valid java name */
    private static final long[] f7917static = new long[256];

    static {
        short[] sArr = new short[32];
        f7921throws = sArr;
        sArr[31] = 8;
    }

    public xf2() {
        this.f7924do = new long[11];
        this.f7928if = new byte[64];
        this.f7926for = 0;
        this.f7929new = new short[32];
        this.f7931try = new long[8];
        this.f7923case = new long[8];
        this.f7925else = new long[8];
        this.f7927goto = new long[8];
        this.f7930this = new long[8];
        for (int i = 0; i < 256; i++) {
            int i2 = f7912final[i];
            int iM9495case = m9495case(i2 << 1);
            int iM9495case2 = m9495case(iM9495case << 1);
            int i3 = iM9495case2 ^ i2;
            int iM9495case3 = m9495case(iM9495case2 << 1);
            int i4 = iM9495case3 ^ i2;
            f7918super[i] = m9497else(i2, i2, iM9495case2, i2, iM9495case3, i3, iM9495case, i4);
            f7920throw[i] = m9497else(i4, i2, i2, iM9495case2, i2, iM9495case3, i3, iM9495case);
            f7922while[i] = m9497else(iM9495case, i4, i2, i2, iM9495case2, i2, iM9495case3, i3);
            f7913import[i] = m9497else(i3, iM9495case, i4, i2, i2, iM9495case2, i2, iM9495case3);
            f7914native[i] = m9497else(iM9495case3, i3, iM9495case, i4, i2, i2, iM9495case2, i2);
            f7915public[i] = m9497else(i2, iM9495case3, i3, iM9495case, i4, i2, i2, iM9495case2);
            f7916return[i] = m9497else(iM9495case2, i2, iM9495case3, i3, iM9495case, i4, i2, i2);
            f7917static[i] = m9497else(i2, iM9495case2, i2, iM9495case3, i3, iM9495case, i4, i2);
        }
        this.f7924do[0] = 0;
        for (int i5 = 1; i5 <= 10; i5++) {
            int i6 = (i5 - 1) * 8;
            this.f7924do[i5] = (((((((f7918super[i6] & (-72057594037927936L)) ^ (f7920throw[i6 + 1] & 71776119061217280L)) ^ (f7922while[i6 + 2] & 280375465082880L)) ^ (f7913import[i6 + 3] & 1095216660480L)) ^ (f7914native[i6 + 4] & 4278190080L)) ^ (f7915public[i6 + 5] & 16711680)) ^ (f7916return[i6 + 6] & 65280)) ^ (f7917static[i6 + 7] & 255);
        }
    }

    public xf2(xf2 xf2Var) {
        this.f7924do = new long[11];
        this.f7928if = new byte[64];
        this.f7926for = 0;
        this.f7929new = new short[32];
        this.f7931try = new long[8];
        this.f7923case = new long[8];
        this.f7925else = new long[8];
        this.f7927goto = new long[8];
        this.f7930this = new long[8];
        reset(xf2Var);
    }

    /* renamed from: case, reason: not valid java name */
    private int m9495case(int i) {
        return ((long) i) >= 256 ? i ^ 285 : i;
    }

    /* renamed from: do, reason: not valid java name */
    private long m9496do(byte[] bArr, int i) {
        return (bArr[i + 7] & 255) | ((bArr[i + 0] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    /* renamed from: else, reason: not valid java name */
    private long m9497else(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return (((((((i2 << 48) ^ (i << 56)) ^ (i3 << 40)) ^ (i4 << 32)) ^ (i5 << 24)) ^ (i6 << 16)) ^ (i7 << 8)) ^ i8;
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m9498for() {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 32; i++) {
            bArr[i] = (byte) (this.f7929new[i] & 255);
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    private void m9499if(long j, byte[] bArr, int i) {
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i + i2] = (byte) ((j >> (56 - (i2 * 8))) & 255);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m9500new() {
        byte[] bArrM9498for = m9498for();
        byte[] bArr = this.f7928if;
        int i = this.f7926for;
        int i2 = i + 1;
        this.f7926for = i2;
        bArr[i] = (byte) (bArr[i] | 128);
        if (i2 == bArr.length) {
            m9501this(bArr, 0);
        }
        if (this.f7926for > 32) {
            while (this.f7926for != 0) {
                update((byte) 0);
            }
        }
        while (this.f7926for <= 32) {
            update((byte) 0);
        }
        System.arraycopy(bArrM9498for, 0, this.f7928if, 32, bArrM9498for.length);
        m9501this(this.f7928if, 0);
    }

    /* renamed from: this, reason: not valid java name */
    private void m9501this(byte[] bArr, int i) {
        for (int i2 = 0; i2 < this.f7930this.length; i2++) {
            this.f7927goto[i2] = m9496do(this.f7928if, i2 * 8);
        }
        m9503goto();
        this.f7926for = 0;
        q3.c(this.f7928if, (byte) 0);
    }

    /* renamed from: try, reason: not valid java name */
    private void m9502try() {
        int i = 0;
        for (int length = this.f7929new.length - 1; length >= 0; length--) {
            short[] sArr = this.f7929new;
            int i2 = (sArr[length] & 255) + f7921throws[length] + i;
            i = i2 >>> 8;
            sArr[length] = (short) (i2 & 255);
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new xf2(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m9500new();
        for (int i2 = 0; i2 < 8; i2++) {
            m9499if(this.f7931try[i2], bArr, (i2 * 8) + i);
        }
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m9503goto() {
        long[] jArr;
        for (int i = 0; i < 8; i++) {
            long[] jArr2 = this.f7930this;
            long j = this.f7927goto[i];
            long[] jArr3 = this.f7923case;
            long j2 = this.f7931try[i];
            jArr3[i] = j2;
            jArr2[i] = j ^ j2;
        }
        int i2 = 1;
        while (i2 <= 10) {
            int i3 = 0;
            while (i3 < 8) {
                long[] jArr4 = this.f7925else;
                jArr4[i3] = 0;
                long j3 = jArr4[i3];
                long[] jArr5 = f7918super;
                long[] jArr6 = this.f7923case;
                jArr4[i3] = jArr5[((int) (jArr6[(i3 + 0) & 7] >>> 56)) & 255] ^ j3;
                jArr4[i3] = jArr4[i3] ^ f7920throw[((int) (jArr6[(i3 - 1) & 7] >>> 48)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7922while[((int) (jArr6[(i3 - 2) & 7] >>> 40)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7913import[((int) (jArr6[(i3 - 3) & 7] >>> 32)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7914native[((int) (jArr6[(i3 - 4) & 7] >>> 24)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7915public[((int) (jArr6[(i3 - 5) & 7] >>> 16)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7916return[((int) (jArr6[(i3 - 6) & 7] >>> 8)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7917static[((int) jArr6[(i3 - 7) & 7]) & 255];
                i3++;
                i2 = i2;
            }
            int i4 = i2;
            long[] jArr7 = this.f7925else;
            long[] jArr8 = this.f7923case;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this.f7923case;
            jArr9[0] = jArr9[0] ^ this.f7924do[i4];
            int i5 = 0;
            while (true) {
                jArr = this.f7925else;
                if (i5 < 8) {
                    jArr[i5] = this.f7923case[i5];
                    long j4 = jArr[i5];
                    long[] jArr10 = f7918super;
                    long[] jArr11 = this.f7930this;
                    jArr[i5] = j4 ^ jArr10[((int) (jArr11[(i5 + 0) & 7] >>> 56)) & 255];
                    jArr[i5] = jArr[i5] ^ f7920throw[((int) (jArr11[(i5 - 1) & 7] >>> 48)) & 255];
                    jArr[i5] = jArr[i5] ^ f7922while[((int) (jArr11[(i5 - 2) & 7] >>> 40)) & 255];
                    jArr[i5] = jArr[i5] ^ f7913import[((int) (jArr11[(i5 - 3) & 7] >>> 32)) & 255];
                    jArr[i5] = jArr[i5] ^ f7914native[((int) (jArr11[(i5 - 4) & 7] >>> 24)) & 255];
                    jArr[i5] = jArr[i5] ^ f7915public[((int) (jArr11[(i5 - 5) & 7] >>> 16)) & 255];
                    jArr[i5] = jArr[i5] ^ f7916return[((int) (jArr11[(i5 - 6) & 7] >>> 8)) & 255];
                    jArr[i5] = jArr[i5] ^ f7917static[((int) jArr11[(i5 - 7) & 7]) & 255];
                    i5++;
                }
            }
            long[] jArr12 = this.f7930this;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
            i2 = i4 + 1;
        }
        for (int i6 = 0; i6 < 8; i6++) {
            long[] jArr13 = this.f7931try;
            jArr13[i6] = jArr13[i6] ^ (this.f7930this[i6] ^ this.f7927goto[i6]);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f7926for = 0;
        q3.l(this.f7929new, (short) 0);
        q3.c(this.f7928if, (byte) 0);
        q3.j(this.f7931try, 0L);
        q3.j(this.f7923case, 0L);
        q3.j(this.f7925else, 0L);
        q3.j(this.f7927goto, 0L);
        q3.j(this.f7930this, 0L);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        xf2 xf2Var = (xf2) memoable;
        long[] jArr = xf2Var.f7924do;
        long[] jArr2 = this.f7924do;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = xf2Var.f7928if;
        byte[] bArr2 = this.f7928if;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f7926for = xf2Var.f7926for;
        short[] sArr = xf2Var.f7929new;
        short[] sArr2 = this.f7929new;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = xf2Var.f7931try;
        long[] jArr4 = this.f7931try;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = xf2Var.f7923case;
        long[] jArr6 = this.f7923case;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = xf2Var.f7925else;
        long[] jArr8 = this.f7925else;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = xf2Var.f7927goto;
        long[] jArr10 = this.f7927goto;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = xf2Var.f7930this;
        long[] jArr12 = this.f7930this;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.f7928if;
        int i = this.f7926for;
        bArr[i] = b;
        int i2 = i + 1;
        this.f7926for = i2;
        if (i2 == bArr.length) {
            m9501this(bArr, 0);
        }
        m9502try();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
