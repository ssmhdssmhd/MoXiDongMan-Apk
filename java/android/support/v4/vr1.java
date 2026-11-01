package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class vr1 implements SkippingStreamCipher {

    /* renamed from: break, reason: not valid java name */
    public static final int f7318break = 20;

    /* renamed from: catch, reason: not valid java name */
    private static final int f7319catch = 16;

    /* renamed from: class, reason: not valid java name */
    private static final int[] f7320class = ib1.m3377while(Cfor.m36358goto("expand 16-byte kexpand 32-byte k"), 0, 8);

    /* renamed from: const, reason: not valid java name */
    public static final byte[] f7321const = Cfor.m36358goto("expand 32-byte k");

    /* renamed from: final, reason: not valid java name */
    public static final byte[] f7322final = Cfor.m36358goto("expand 16-byte k");

    /* renamed from: case, reason: not valid java name */
    private boolean f7323case;

    /* renamed from: do, reason: not valid java name */
    public int f7324do;

    /* renamed from: else, reason: not valid java name */
    private int f7325else;

    /* renamed from: for, reason: not valid java name */
    public int[] f7326for;

    /* renamed from: goto, reason: not valid java name */
    private int f7327goto;

    /* renamed from: if, reason: not valid java name */
    private int f7328if;

    /* renamed from: new, reason: not valid java name */
    public int[] f7329new;

    /* renamed from: this, reason: not valid java name */
    private int f7330this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f7331try;

    public vr1() {
        this(20);
    }

    public vr1(int i) {
        this.f7328if = 0;
        this.f7326for = new int[16];
        this.f7329new = new int[16];
        this.f7331try = new byte[64];
        this.f7323case = false;
        if (i <= 0 || (i & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.f7324do = i;
    }

    /* renamed from: break, reason: not valid java name */
    private void m8942break() {
        this.f7325else = 0;
        this.f7327goto = 0;
        this.f7330this = 0;
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m8943case() {
        int i = this.f7325else + 1;
        this.f7325else = i;
        if (i == 0) {
            int i2 = this.f7327goto + 1;
            this.f7327goto = i2;
            if (i2 == 0) {
                int i3 = this.f7330this + 1;
                this.f7330this = i3;
                return (i3 & 32) != 0;
            }
        }
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m8944const(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m8945else(int i) {
        int i2 = this.f7325else + i;
        this.f7325else = i2;
        if (i2 >= i || i2 < 0) {
            return false;
        }
        int i3 = this.f7327goto + 1;
        this.f7327goto = i3;
        if (i3 != 0) {
            return false;
        }
        int i4 = this.f7330this + 1;
        this.f7330this = i4;
        return (i4 & 32) != 0;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m8946final(int i, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = 7;
        int i10 = iArr[7];
        int i11 = iArr[8];
        int i12 = 9;
        int i13 = iArr[9];
        int i14 = iArr[10];
        int i15 = iArr[11];
        int i16 = iArr[12];
        int i17 = 13;
        int i18 = iArr[13];
        int i19 = iArr[14];
        int iM8944const = iArr[15];
        int iM8944const2 = i19;
        int iM8944const3 = i18;
        int iM8944const4 = i16;
        int iM8944const5 = i15;
        int iM8944const6 = i14;
        int iM8944const7 = i13;
        int i20 = i11;
        int iM8944const8 = i10;
        int iM8944const9 = i8;
        int iM8944const10 = i7;
        int i21 = i6;
        int i22 = i5;
        int iM8944const11 = i4;
        int iM8944const12 = i3;
        int i23 = i2;
        int i24 = i;
        while (i24 > 0) {
            int iM8944const13 = m8944const(i23 + iM8944const4, i9) ^ i21;
            int iM8944const14 = i20 ^ m8944const(iM8944const13 + i23, i12);
            int iM8944const15 = iM8944const4 ^ m8944const(iM8944const14 + iM8944const13, i17);
            int iM8944const16 = m8944const(iM8944const15 + iM8944const14, 18) ^ i23;
            int iM8944const17 = iM8944const7 ^ m8944const(iM8944const10 + iM8944const12, i9);
            int iM8944const18 = iM8944const3 ^ m8944const(iM8944const17 + iM8944const10, i12);
            int iM8944const19 = iM8944const12 ^ m8944const(iM8944const18 + iM8944const17, i17);
            int iM8944const20 = m8944const(iM8944const19 + iM8944const18, 18) ^ iM8944const10;
            int iM8944const21 = iM8944const2 ^ m8944const(iM8944const6 + iM8944const9, 7);
            int iM8944const22 = iM8944const11 ^ m8944const(iM8944const21 + iM8944const6, 9);
            int iM8944const23 = iM8944const9 ^ m8944const(iM8944const22 + iM8944const21, 13);
            int iM8944const24 = iM8944const6 ^ m8944const(iM8944const23 + iM8944const22, 18);
            int iM8944const25 = i22 ^ m8944const(iM8944const + iM8944const5, 7);
            int iM8944const26 = iM8944const8 ^ m8944const(iM8944const25 + iM8944const, 9);
            int i25 = i24;
            int iM8944const27 = iM8944const5 ^ m8944const(iM8944const26 + iM8944const25, 13);
            int iM8944const28 = iM8944const ^ m8944const(iM8944const27 + iM8944const26, 18);
            iM8944const12 = iM8944const19 ^ m8944const(iM8944const16 + iM8944const25, 7);
            iM8944const11 = iM8944const22 ^ m8944const(iM8944const12 + iM8944const16, 9);
            int iM8944const29 = iM8944const25 ^ m8944const(iM8944const11 + iM8944const12, 13);
            int iM8944const30 = iM8944const16 ^ m8944const(iM8944const29 + iM8944const11, 18);
            iM8944const9 = iM8944const23 ^ m8944const(iM8944const20 + iM8944const13, 7);
            iM8944const8 = iM8944const26 ^ m8944const(iM8944const9 + iM8944const20, 9);
            int iM8944const31 = m8944const(iM8944const8 + iM8944const9, 13) ^ iM8944const13;
            iM8944const10 = iM8944const20 ^ m8944const(iM8944const31 + iM8944const8, 18);
            iM8944const5 = iM8944const27 ^ m8944const(iM8944const24 + iM8944const17, 7);
            int iM8944const32 = m8944const(iM8944const5 + iM8944const24, 9) ^ iM8944const14;
            iM8944const7 = iM8944const17 ^ m8944const(iM8944const32 + iM8944const5, 13);
            iM8944const6 = iM8944const24 ^ m8944const(iM8944const7 + iM8944const32, 18);
            iM8944const4 = iM8944const15 ^ m8944const(iM8944const28 + iM8944const21, 7);
            iM8944const3 = iM8944const18 ^ m8944const(iM8944const4 + iM8944const28, 9);
            iM8944const2 = iM8944const21 ^ m8944const(iM8944const3 + iM8944const4, 13);
            iM8944const = iM8944const28 ^ m8944const(iM8944const2 + iM8944const3, 18);
            i22 = iM8944const29;
            i20 = iM8944const32;
            i23 = iM8944const30;
            i21 = iM8944const31;
            i17 = 13;
            i12 = 9;
            i9 = 7;
            i24 = i25 - 2;
        }
        iArr2[0] = i23 + iArr[0];
        iArr2[1] = iM8944const12 + iArr[1];
        iArr2[2] = iM8944const11 + iArr[2];
        iArr2[3] = i22 + iArr[3];
        iArr2[4] = i21 + iArr[4];
        iArr2[5] = iM8944const10 + iArr[5];
        iArr2[6] = iM8944const9 + iArr[6];
        iArr2[7] = iM8944const8 + iArr[7];
        iArr2[8] = i20 + iArr[8];
        iArr2[9] = iM8944const7 + iArr[9];
        iArr2[10] = iM8944const6 + iArr[10];
        iArr2[11] = iM8944const5 + iArr[11];
        iArr2[12] = iM8944const4 + iArr[12];
        iArr2[13] = iM8944const3 + iArr[13];
        iArr2[14] = iM8944const2 + iArr[14];
        iArr2[15] = iM8944const + iArr[15];
    }

    /* renamed from: catch */
    public void mo917catch() {
        int[] iArr = this.f7326for;
        if (iArr[8] == 0 && iArr[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i = iArr[8] - 1;
        iArr[8] = i;
        if (i == -1) {
            iArr[9] = iArr[9] - 1;
        }
    }

    /* renamed from: class */
    public void mo918class(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i != 0) {
            int[] iArr = this.f7326for;
            if ((iArr[9] & 4294967295L) < (i & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[9] = iArr[9] - i;
        }
        int[] iArr2 = this.f7326for;
        if ((iArr2[8] & 4294967295L) >= (4294967295L & i2)) {
            iArr2[8] = iArr2[8] - i2;
        } else {
            if (iArr2[9] == 0) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr2[9] = iArr2[9] - 1;
            iArr2[8] = iArr2[8] - i2;
        }
    }

    /* renamed from: do */
    public void mo919do() {
        int[] iArr = this.f7326for;
        int i = iArr[8] + 1;
        iArr[8] = i;
        if (i == 0) {
            iArr[9] = iArr[9] + 1;
        }
    }

    /* renamed from: for */
    public void mo920for(byte[] bArr) {
        m8946final(this.f7324do, this.f7326for, this.f7329new);
        ib1.m3349catch(this.f7329new, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        if (this.f7324do == 20) {
            return "Salsa20";
        }
        return "Salsa20" + on0.f4694final + this.f7324do;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        return (mo922new() * 64) + this.f7328if;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m8947goto(int i, int[] iArr, int i2) {
        int i3 = (i - 16) / 4;
        int[] iArr2 = f7320class;
        iArr[i2] = iArr2[i3];
        iArr[i2 + 1] = iArr2[i3 + 1];
        iArr[i2 + 2] = iArr2[i3 + 2];
        iArr[i2 + 3] = iArr2[i3 + 3];
    }

    /* renamed from: if */
    public void mo921if(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i > 0) {
            int[] iArr = this.f7326for;
            iArr[9] = iArr[9] + i;
        }
        int[] iArr2 = this.f7326for;
        int i3 = iArr2[8];
        iArr2[8] = iArr2[8] + i2;
        if (i3 == 0 || iArr2[8] >= i3) {
            return;
        }
        iArr2[9] = iArr2[9] + 1;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must include an IV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        if (bArrM514do == null || bArrM514do.length != mo260try()) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires exactly " + mo260try() + " bytes of IV");
        }
        CipherParameters cipherParametersM515if = bc1Var.m515if();
        if (cipherParametersM515if == null) {
            if (!this.f7323case) {
                throw new IllegalStateException(getAlgorithmName() + " KeyParameter can not be null for first initialisation");
            }
            mo259super(null, bArrM514do);
        } else {
            if (!(cipherParametersM515if instanceof gr0)) {
                throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must contain a KeyParameter (or null for re-init)");
            }
            mo259super(((gr0) cipherParametersM515if).m2770do(), bArrM514do);
        }
        reset();
        this.f7323case = true;
    }

    /* renamed from: new */
    public long mo922new() {
        int[] iArr = this.f7326for;
        return (iArr[9] << 32) | (iArr[8] & 4294967295L);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.f7323case) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (m8945else(i2)) {
            throw new cy0("2^70 byte limit per IV would be exceeded; Change IV");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr3 = this.f7331try;
            int i5 = this.f7328if;
            bArr2[i4 + i3] = (byte) (bArr3[i5] ^ bArr[i4 + i]);
            int i6 = (i5 + 1) & 63;
            this.f7328if = i6;
            if (i6 == 0) {
                mo919do();
                mo920for(this.f7331try);
            }
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.f7328if = 0;
        m8942break();
        mo923this();
        mo920for(this.f7331try);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (m8943case()) {
            throw new cy0("2^70 byte limit per IV; Change IV");
        }
        byte[] bArr = this.f7331try;
        int i = this.f7328if;
        byte b2 = (byte) (b ^ bArr[i]);
        int i2 = (i + 1) & 63;
        this.f7328if = i2;
        if (i2 == 0) {
            mo919do();
            mo920for(this.f7331try);
        }
        return b2;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j) {
        reset();
        return skip(j);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j) {
        long j2;
        if (j >= 0) {
            if (j >= 64) {
                long j3 = j / 64;
                mo921if(j3);
                j2 = j - (j3 * 64);
            } else {
                j2 = j;
            }
            int i = this.f7328if;
            int i2 = (((int) j2) + i) & 63;
            this.f7328if = i2;
            if (i2 < i) {
                mo919do();
            }
        } else {
            long j4 = -j;
            if (j4 >= 64) {
                long j5 = j4 / 64;
                mo918class(j5);
                j4 -= j5 * 64;
            }
            for (long j6 = 0; j6 < j4; j6++) {
                if (this.f7328if == 0) {
                    mo917catch();
                }
                this.f7328if = (this.f7328if - 1) & 63;
            }
        }
        mo920for(this.f7331try);
        return j;
    }

    /* renamed from: super */
    public void mo259super(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            int length = (bArr.length - 16) / 4;
            int[] iArr = this.f7326for;
            int[] iArr2 = f7320class;
            iArr[0] = iArr2[length];
            iArr[5] = iArr2[length + 1];
            iArr[10] = iArr2[length + 2];
            iArr[15] = iArr2[length + 3];
            ib1.m3374throw(bArr, 0, iArr, 1, 4);
            ib1.m3374throw(bArr, bArr.length - 16, this.f7326for, 11, 4);
        }
        ib1.m3374throw(bArr2, 0, this.f7326for, 6, 2);
    }

    /* renamed from: this */
    public void mo923this() {
        int[] iArr = this.f7326for;
        iArr[9] = 0;
        iArr[8] = 0;
    }

    /* renamed from: try */
    public int mo260try() {
        return 8;
    }
}
