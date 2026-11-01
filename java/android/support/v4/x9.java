package android.support.v4;

import android.R;
import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class x9 implements ExtendedDigest {

    /* renamed from: const, reason: not valid java name */
    private static final long[] f7800const = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};

    /* renamed from: final, reason: not valid java name */
    private static final byte[][] f7801final = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}};

    /* renamed from: super, reason: not valid java name */
    private static int f7802super = 12;

    /* renamed from: throw, reason: not valid java name */
    private static final int f7803throw = 128;

    /* renamed from: break, reason: not valid java name */
    private long f7804break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f7805case;

    /* renamed from: catch, reason: not valid java name */
    private long f7806catch;

    /* renamed from: class, reason: not valid java name */
    private long f7807class;

    /* renamed from: do, reason: not valid java name */
    private int f7808do;

    /* renamed from: else, reason: not valid java name */
    private int f7809else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f7810for;

    /* renamed from: goto, reason: not valid java name */
    private long[] f7811goto;

    /* renamed from: if, reason: not valid java name */
    private int f7812if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f7813new;

    /* renamed from: this, reason: not valid java name */
    private long[] f7814this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f7815try;

    public x9() {
        this(512);
    }

    public x9(int i) {
        this.f7808do = 64;
        this.f7812if = 0;
        this.f7810for = null;
        this.f7813new = null;
        this.f7815try = null;
        this.f7805case = null;
        this.f7809else = 0;
        this.f7811goto = new long[16];
        this.f7814this = null;
        this.f7804break = 0L;
        this.f7806catch = 0L;
        this.f7807class = 0L;
        if (i < 8 || i > 512 || i % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2b digest bit length must be a multiple of 8 and not greater than 512");
        }
        this.f7805case = new byte[128];
        this.f7812if = 0;
        this.f7808do = i / 8;
        m9436try();
    }

    public x9(x9 x9Var) {
        this.f7808do = 64;
        this.f7812if = 0;
        this.f7810for = null;
        this.f7813new = null;
        this.f7815try = null;
        this.f7805case = null;
        this.f7809else = 0;
        this.f7811goto = new long[16];
        this.f7814this = null;
        this.f7804break = 0L;
        this.f7806catch = 0L;
        this.f7807class = 0L;
        this.f7809else = x9Var.f7809else;
        this.f7805case = q3.m6371final(x9Var.f7805case);
        this.f7812if = x9Var.f7812if;
        this.f7815try = q3.m6371final(x9Var.f7815try);
        this.f7808do = x9Var.f7808do;
        this.f7814this = q3.m6377import(x9Var.f7814this);
        this.f7813new = q3.m6371final(x9Var.f7813new);
        this.f7810for = q3.m6371final(x9Var.f7810for);
        this.f7804break = x9Var.f7804break;
        this.f7806catch = x9Var.f7806catch;
        this.f7807class = x9Var.f7807class;
    }

    public x9(byte[] bArr) {
        this.f7808do = 64;
        this.f7812if = 0;
        this.f7810for = null;
        this.f7813new = null;
        this.f7815try = null;
        this.f7805case = null;
        this.f7809else = 0;
        this.f7811goto = new long[16];
        this.f7814this = null;
        this.f7804break = 0L;
        this.f7806catch = 0L;
        this.f7807class = 0L;
        this.f7805case = new byte[128];
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f7815try = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.f7812if = bArr.length;
            System.arraycopy(bArr, 0, this.f7805case, 0, bArr.length);
            this.f7809else = 128;
        }
        this.f7808do = 64;
        m9436try();
    }

    public x9(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
        this.f7808do = 64;
        this.f7812if = 0;
        this.f7810for = null;
        this.f7813new = null;
        this.f7815try = null;
        this.f7805case = null;
        this.f7809else = 0;
        this.f7811goto = new long[16];
        this.f7814this = null;
        this.f7804break = 0L;
        this.f7806catch = 0L;
        this.f7807class = 0L;
        this.f7805case = new byte[128];
        if (i < 1 || i > 64) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 64)");
        }
        this.f7808do = i;
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("salt length must be exactly 16 bytes");
            }
            byte[] bArr4 = new byte[16];
            this.f7810for = bArr4;
            System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 16) {
                throw new IllegalArgumentException("personalization length must be exactly 16 bytes");
            }
            byte[] bArr5 = new byte[16];
            this.f7813new = bArr5;
            System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        }
        if (bArr != null) {
            byte[] bArr6 = new byte[bArr.length];
            this.f7815try = bArr6;
            System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.f7812if = bArr.length;
            System.arraycopy(bArr, 0, this.f7805case, 0, bArr.length);
            this.f7809else = 128;
        }
        m9436try();
    }

    /* renamed from: case, reason: not valid java name */
    private void m9432case() {
        long[] jArr = this.f7814this;
        System.arraycopy(jArr, 0, this.f7811goto, 0, jArr.length);
        long[] jArr2 = f7800const;
        System.arraycopy(jArr2, 0, this.f7811goto, this.f7814this.length, 4);
        long[] jArr3 = this.f7811goto;
        jArr3[12] = this.f7804break ^ jArr2[4];
        jArr3[13] = this.f7806catch ^ jArr2[5];
        jArr3[14] = this.f7807class ^ jArr2[6];
        jArr3[15] = jArr2[7];
    }

    /* renamed from: do, reason: not valid java name */
    private void m9433do(long j, long j2, int i, int i2, int i3, int i4) {
        long[] jArr = this.f7811goto;
        jArr[i] = jArr[i] + jArr[i2] + j;
        jArr[i4] = m9434else(jArr[i4] ^ jArr[i], 32);
        long[] jArr2 = this.f7811goto;
        jArr2[i3] = jArr2[i3] + jArr2[i4];
        jArr2[i2] = m9434else(jArr2[i2] ^ jArr2[i3], 24);
        long[] jArr3 = this.f7811goto;
        jArr3[i] = jArr3[i] + jArr3[i2] + j2;
        jArr3[i4] = m9434else(jArr3[i4] ^ jArr3[i], 16);
        long[] jArr4 = this.f7811goto;
        jArr4[i3] = jArr4[i3] + jArr4[i4];
        jArr4[i2] = m9434else(jArr4[i2] ^ jArr4[i3], 63);
    }

    /* renamed from: else, reason: not valid java name */
    private static long m9434else(long j, int i) {
        return (j << (64 - i)) | (j >>> i);
    }

    /* renamed from: new, reason: not valid java name */
    private void m9435new(byte[] bArr, int i) {
        m9432case();
        long[] jArr = new long[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            jArr[i3] = ib1.m3362import(bArr, (i3 * 8) + i);
        }
        for (int i4 = 0; i4 < f7802super; i4++) {
            byte[][] bArr2 = f7801final;
            m9433do(jArr[bArr2[i4][0]], jArr[bArr2[i4][1]], 0, 4, 8, 12);
            m9433do(jArr[bArr2[i4][2]], jArr[bArr2[i4][3]], 1, 5, 9, 13);
            m9433do(jArr[bArr2[i4][4]], jArr[bArr2[i4][5]], 2, 6, 10, 14);
            m9433do(jArr[bArr2[i4][6]], jArr[bArr2[i4][7]], 3, 7, 11, 15);
            m9433do(jArr[bArr2[i4][8]], jArr[bArr2[i4][9]], 0, 5, 10, 15);
            m9433do(jArr[bArr2[i4][10]], jArr[bArr2[i4][11]], 1, 6, 11, 12);
            m9433do(jArr[bArr2[i4][12]], jArr[bArr2[i4][13]], 2, 7, 8, 13);
            m9433do(jArr[bArr2[i4][14]], jArr[bArr2[i4][15]], 3, 4, 9, 14);
        }
        while (true) {
            long[] jArr2 = this.f7814this;
            if (i2 >= jArr2.length) {
                return;
            }
            long j = jArr2[i2];
            long[] jArr3 = this.f7811goto;
            jArr2[i2] = (j ^ jArr3[i2]) ^ jArr3[i2 + 8];
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m9436try() {
        if (this.f7814this == null) {
            long[] jArr = {jArr[0] ^ ((this.f7808do | (this.f7812if << 8)) | R.attr.theme), jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], 0, 0};
            this.f7814this = jArr;
            long[] jArr2 = f7800const;
            byte[] bArr = this.f7810for;
            if (bArr != null) {
                jArr[4] = jArr[4] ^ ib1.m3362import(bArr, 0);
                long[] jArr3 = this.f7814this;
                jArr3[5] = jArr3[5] ^ ib1.m3362import(this.f7810for, 8);
            }
            long[] jArr4 = this.f7814this;
            jArr4[6] = jArr2[6];
            jArr4[7] = jArr2[7];
            byte[] bArr2 = this.f7813new;
            if (bArr2 != null) {
                jArr4[6] = ib1.m3362import(bArr2, 0) ^ jArr4[6];
                long[] jArr5 = this.f7814this;
                jArr5[7] = jArr5[7] ^ ib1.m3362import(this.f7813new, 8);
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        long[] jArr;
        int i2;
        this.f7807class = -1L;
        long j = this.f7804break;
        int i3 = this.f7809else;
        long j2 = j + i3;
        this.f7804break = j2;
        if (i3 > 0 && j2 == 0) {
            this.f7806catch++;
        }
        m9435new(this.f7805case, 0);
        q3.c(this.f7805case, (byte) 0);
        q3.j(this.f7811goto, 0L);
        int i4 = 0;
        while (true) {
            jArr = this.f7814this;
            if (i4 >= jArr.length || (i2 = i4 * 8) >= this.f7808do) {
                break;
            }
            byte[] bArrM3366private = ib1.m3366private(jArr[i4]);
            int i5 = this.f7808do;
            if (i2 < i5 - 8) {
                System.arraycopy(bArrM3366private, 0, bArr, i2 + i, 8);
            } else {
                System.arraycopy(bArrM3366private, 0, bArr, i + i2, i5 - i2);
            }
            i4++;
        }
        q3.j(jArr, 0L);
        reset();
        return this.f7808do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m9437for() {
        byte[] bArr = this.f7810for;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2b";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f7808do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m9438if() {
        byte[] bArr = this.f7815try;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
            q3.c(this.f7805case, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f7809else = 0;
        this.f7807class = 0L;
        this.f7804break = 0L;
        this.f7806catch = 0L;
        this.f7814this = null;
        q3.c(this.f7805case, (byte) 0);
        byte[] bArr = this.f7815try;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.f7805case, 0, bArr.length);
            this.f7809else = 128;
        }
        m9436try();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        int i = this.f7809else;
        if (128 - i != 0) {
            this.f7805case[i] = b;
            this.f7809else = i + 1;
            return;
        }
        long j = this.f7804break + 128;
        this.f7804break = j;
        if (j == 0) {
            this.f7806catch++;
        }
        m9435new(this.f7805case, 0);
        q3.c(this.f7805case, (byte) 0);
        this.f7805case[0] = b;
        this.f7809else = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null || i2 == 0) {
            return;
        }
        int i4 = this.f7809else;
        if (i4 != 0) {
            i3 = 128 - i4;
            if (i3 >= i2) {
                System.arraycopy(bArr, i, this.f7805case, i4, i2);
                this.f7809else += i2;
            }
            System.arraycopy(bArr, i, this.f7805case, i4, i3);
            long j = this.f7804break + 128;
            this.f7804break = j;
            if (j == 0) {
                this.f7806catch++;
            }
            m9435new(this.f7805case, 0);
            this.f7809else = 0;
            q3.c(this.f7805case, (byte) 0);
        } else {
            i3 = 0;
        }
        int i5 = i2 + i;
        int i6 = i5 - 128;
        int i7 = i + i3;
        while (i7 < i6) {
            long j2 = this.f7804break + 128;
            this.f7804break = j2;
            if (j2 == 0) {
                this.f7806catch++;
            }
            m9435new(bArr, i7);
            i7 += 128;
        }
        i2 = i5 - i7;
        System.arraycopy(bArr, i7, this.f7805case, 0, i2);
        this.f7809else += i2;
    }
}
