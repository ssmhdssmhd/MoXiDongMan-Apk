package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.mozilla.classfile.Cfor;

/* loaded from: classes3.dex */
public class h02 implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    public static final int f2290case = 8;

    /* renamed from: else, reason: not valid java name */
    public static short[] f2291else = {163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, Cfor.f33825synchronized, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, z0.f8388default, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, z0.f8393finally, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, z0.f8381abstract, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, z0.f8400package, 126, 255, 140, 14, 226, 12, 239, 188, z0.f8401private, 117, z0.f8391extends, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70};

    /* renamed from: do, reason: not valid java name */
    private int[] f2292do;

    /* renamed from: for, reason: not valid java name */
    private int[] f2293for;

    /* renamed from: if, reason: not valid java name */
    private int[] f2294if;

    /* renamed from: new, reason: not valid java name */
    private int[] f2295new;

    /* renamed from: try, reason: not valid java name */
    private boolean f2296try;

    /* renamed from: for, reason: not valid java name */
    private int m2847for(int i, int i2) {
        int i3 = (i2 >> 8) & 255;
        int i4 = i2 & 255;
        short[] sArr = f2291else;
        int i5 = i3 ^ sArr[this.f2292do[i] ^ i4];
        int i6 = i4 ^ sArr[this.f2294if[i] ^ i5];
        int i7 = i5 ^ sArr[this.f2293for[i] ^ i6];
        return (i7 << 8) + (sArr[this.f2295new[i] ^ i7] ^ i6);
    }

    /* renamed from: new, reason: not valid java name */
    private int m2848new(int i, int i2) {
        int i3 = i2 & 255;
        int i4 = (i2 >> 8) & 255;
        short[] sArr = f2291else;
        int i5 = i3 ^ sArr[this.f2295new[i] ^ i4];
        int i6 = i4 ^ sArr[this.f2293for[i] ^ i5];
        int i7 = i5 ^ sArr[this.f2294if[i] ^ i6];
        return ((sArr[this.f2292do[i] ^ i7] ^ i6) << 8) + i7;
    }

    /* renamed from: do, reason: not valid java name */
    public int m2849do(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = (bArr[i + 0] << 8) + (bArr[i + 1] & 255);
        int i4 = (bArr[i + 2] << 8) + (bArr[i + 3] & 255);
        int i5 = (bArr[i + 4] << 8) + (bArr[i + 5] & 255);
        int i6 = (bArr[i + 6] << 8) + (bArr[i + 7] & 255);
        int i7 = 31;
        for (int i8 = 0; i8 < 2; i8++) {
            int i9 = 0;
            while (i9 < 8) {
                int iM2848new = m2848new(i7, i4);
                int i10 = (i5 ^ iM2848new) ^ (i7 + 1);
                i7--;
                i9++;
                int i11 = i6;
                i6 = i3;
                i3 = iM2848new;
                i4 = i10;
                i5 = i11;
            }
            int i12 = 0;
            while (i12 < 8) {
                int i13 = (i3 ^ i4) ^ (i7 + 1);
                int iM2848new2 = m2848new(i7, i4);
                i7--;
                i12++;
                int i14 = i6;
                i6 = i13;
                i3 = iM2848new2;
                i4 = i5;
                i5 = i14;
            }
        }
        bArr2[i2 + 0] = (byte) (i3 >> 8);
        bArr2[i2 + 1] = (byte) i3;
        bArr2[i2 + 2] = (byte) (i4 >> 8);
        bArr2[i2 + 3] = (byte) i4;
        bArr2[i2 + 4] = (byte) (i5 >> 8);
        bArr2[i2 + 5] = (byte) i5;
        bArr2[i2 + 6] = (byte) (i6 >> 8);
        bArr2[i2 + 7] = (byte) i6;
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SKIPJACK";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    /* renamed from: if, reason: not valid java name */
    public int m2850if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = (bArr[i + 0] << 8) + (bArr[i + 1] & 255);
        int i4 = (bArr[i + 2] << 8) + (bArr[i + 3] & 255);
        int i5 = (bArr[i + 4] << 8) + (bArr[i + 5] & 255);
        int i6 = (bArr[i + 6] << 8) + (bArr[i + 7] & 255);
        int i7 = 0;
        for (int i8 = 0; i8 < 2; i8++) {
            int i9 = 0;
            while (i9 < 8) {
                int iM2847for = m2847for(i7, i3);
                i7++;
                i9++;
                int i10 = i4;
                i4 = iM2847for;
                i3 = (i6 ^ iM2847for) ^ i7;
                i6 = i5;
                i5 = i10;
            }
            int i11 = 0;
            while (i11 < 8) {
                int i12 = i7 + 1;
                int i13 = (i4 ^ i3) ^ i12;
                int iM2847for2 = m2847for(i7, i3);
                i11++;
                i7 = i12;
                i4 = iM2847for2;
                i3 = i6;
                i6 = i5;
                i5 = i13;
            }
        }
        bArr2[i2 + 0] = (byte) (i3 >> 8);
        bArr2[i2 + 1] = (byte) i3;
        bArr2[i2 + 2] = (byte) (i4 >> 8);
        bArr2[i2 + 3] = (byte) i4;
        bArr2[i2 + 4] = (byte) (i5 >> 8);
        bArr2[i2 + 5] = (byte) i5;
        bArr2[i2 + 6] = (byte) (i6 >> 8);
        bArr2[i2 + 7] = (byte) i6;
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("invalid parameter passed to SKIPJACK init - " + cipherParameters.getClass().getName());
        }
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        this.f2296try = z;
        this.f2292do = new int[32];
        this.f2294if = new int[32];
        this.f2293for = new int[32];
        this.f2295new = new int[32];
        for (int i = 0; i < 32; i++) {
            int i2 = i * 4;
            this.f2292do[i] = bArrM2770do[i2 % 10] & 255;
            this.f2294if[i] = bArrM2770do[(i2 + 1) % 10] & 255;
            this.f2293for[i] = bArrM2770do[(i2 + 2) % 10] & 255;
            this.f2295new[i] = bArrM2770do[(i2 + 3) % 10] & 255;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f2294if == null) {
            throw new IllegalStateException("SKIPJACK engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (this.f2296try) {
            m2850if(bArr, i, bArr2, i2);
            return 8;
        }
        m2849do(bArr, i, bArr2, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
