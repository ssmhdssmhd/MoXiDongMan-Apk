package android.support.v4;

/* loaded from: classes3.dex */
public class dh extends vr1 {
    public dh() {
    }

    public dh(int i) {
        super(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m1337throw(int i, int[] iArr, int[] iArr2) {
        int i2 = 16;
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c = 0;
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        int i9 = iArr[6];
        int i10 = 7;
        int i11 = iArr[7];
        int i12 = 8;
        int i13 = iArr[8];
        int i14 = iArr[9];
        int i15 = iArr[10];
        int i16 = iArr[11];
        int i17 = 12;
        int i18 = iArr[12];
        int i19 = iArr[13];
        int i20 = iArr[14];
        int iM8944const = iArr[15];
        int iM8944const2 = i20;
        int iM8944const3 = i19;
        int iM8944const4 = i18;
        int i21 = i16;
        int i22 = i15;
        int i23 = i14;
        int i24 = i13;
        int iM8944const5 = i11;
        int iM8944const6 = i9;
        int iM8944const7 = i8;
        int iM8944const8 = i7;
        int i25 = i6;
        int i26 = i5;
        int i27 = i4;
        int i28 = i3;
        int i29 = i;
        while (i29 > 0) {
            int i30 = i28 + iM8944const8;
            int iM8944const9 = vr1.m8944const(iM8944const4 ^ i30, i2);
            int i31 = i24 + iM8944const9;
            int iM8944const10 = vr1.m8944const(iM8944const8 ^ i31, i17);
            int i32 = i30 + iM8944const10;
            int iM8944const11 = vr1.m8944const(iM8944const9 ^ i32, i12);
            int i33 = i31 + iM8944const11;
            int iM8944const12 = vr1.m8944const(iM8944const10 ^ i33, i10);
            int i34 = i27 + iM8944const7;
            int iM8944const13 = vr1.m8944const(iM8944const3 ^ i34, i2);
            int i35 = i23 + iM8944const13;
            int iM8944const14 = vr1.m8944const(iM8944const7 ^ i35, i17);
            int i36 = i34 + iM8944const14;
            int iM8944const15 = vr1.m8944const(iM8944const13 ^ i36, i12);
            int i37 = i35 + iM8944const15;
            int iM8944const16 = vr1.m8944const(iM8944const14 ^ i37, i10);
            int i38 = i26 + iM8944const6;
            int iM8944const17 = vr1.m8944const(iM8944const2 ^ i38, i2);
            int i39 = i22 + iM8944const17;
            int iM8944const18 = vr1.m8944const(iM8944const6 ^ i39, i17);
            int i40 = i38 + iM8944const18;
            int iM8944const19 = vr1.m8944const(iM8944const17 ^ i40, i12);
            int i41 = i39 + iM8944const19;
            int iM8944const20 = vr1.m8944const(iM8944const18 ^ i41, i10);
            int i42 = i25 + iM8944const5;
            int iM8944const21 = vr1.m8944const(iM8944const ^ i42, 16);
            int i43 = i21 + iM8944const21;
            int iM8944const22 = vr1.m8944const(iM8944const5 ^ i43, i17);
            int i44 = i42 + iM8944const22;
            int iM8944const23 = vr1.m8944const(iM8944const21 ^ i44, 8);
            int i45 = i43 + iM8944const23;
            int iM8944const24 = vr1.m8944const(iM8944const22 ^ i45, 7);
            int i46 = i32 + iM8944const16;
            int iM8944const25 = vr1.m8944const(iM8944const23 ^ i46, 16);
            int i47 = i41 + iM8944const25;
            int iM8944const26 = vr1.m8944const(iM8944const16 ^ i47, 12);
            i28 = i46 + iM8944const26;
            iM8944const = vr1.m8944const(iM8944const25 ^ i28, 8);
            i22 = i47 + iM8944const;
            iM8944const7 = vr1.m8944const(iM8944const26 ^ i22, 7);
            int i48 = i36 + iM8944const20;
            int iM8944const27 = vr1.m8944const(iM8944const11 ^ i48, 16);
            int i49 = i45 + iM8944const27;
            int iM8944const28 = vr1.m8944const(iM8944const20 ^ i49, 12);
            i27 = i48 + iM8944const28;
            iM8944const4 = vr1.m8944const(iM8944const27 ^ i27, 8);
            i21 = i49 + iM8944const4;
            iM8944const6 = vr1.m8944const(iM8944const28 ^ i21, 7);
            int i50 = i40 + iM8944const24;
            int iM8944const29 = vr1.m8944const(iM8944const15 ^ i50, 16);
            int i51 = i33 + iM8944const29;
            int iM8944const30 = vr1.m8944const(iM8944const24 ^ i51, 12);
            i26 = i50 + iM8944const30;
            iM8944const3 = vr1.m8944const(iM8944const29 ^ i26, 8);
            i24 = i51 + iM8944const3;
            iM8944const5 = vr1.m8944const(iM8944const30 ^ i24, 7);
            int i52 = i44 + iM8944const12;
            i2 = 16;
            int iM8944const31 = vr1.m8944const(iM8944const19 ^ i52, 16);
            int i53 = i37 + iM8944const31;
            int iM8944const32 = vr1.m8944const(iM8944const12 ^ i53, 12);
            i25 = i52 + iM8944const32;
            iM8944const2 = vr1.m8944const(iM8944const31 ^ i25, 8);
            i23 = i53 + iM8944const2;
            iM8944const8 = vr1.m8944const(iM8944const32 ^ i23, 7);
            i29 -= 2;
            c = 0;
            i17 = 12;
            i12 = 8;
            i10 = 7;
        }
        iArr2[c] = i28 + iArr[c];
        iArr2[1] = i27 + iArr[1];
        iArr2[2] = i26 + iArr[2];
        iArr2[3] = i25 + iArr[3];
        iArr2[4] = iM8944const8 + iArr[4];
        iArr2[5] = iM8944const7 + iArr[5];
        iArr2[6] = iM8944const6 + iArr[6];
        iArr2[7] = iM8944const5 + iArr[7];
        iArr2[8] = i24 + iArr[8];
        iArr2[9] = i23 + iArr[9];
        iArr2[10] = i22 + iArr[10];
        iArr2[11] = i21 + iArr[11];
        iArr2[12] = iM8944const4 + iArr[12];
        iArr2[13] = iM8944const3 + iArr[13];
        iArr2[14] = iM8944const2 + iArr[14];
        iArr2[15] = iM8944const + iArr[15];
    }

    @Override // android.support.v4.vr1
    /* renamed from: catch */
    public void mo917catch() {
        int[] iArr = this.f7326for;
        if (iArr[12] == 0 && iArr[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i = iArr[12] - 1;
        iArr[12] = i;
        if (i == -1) {
            iArr[13] = iArr[13] - 1;
        }
    }

    @Override // android.support.v4.vr1
    /* renamed from: class */
    public void mo918class(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i != 0) {
            int[] iArr = this.f7326for;
            if ((iArr[13] & 4294967295L) < (i & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[13] = iArr[13] - i;
        }
        int[] iArr2 = this.f7326for;
        if ((iArr2[12] & 4294967295L) >= (4294967295L & i2)) {
            iArr2[12] = iArr2[12] - i2;
        } else {
            if (iArr2[13] == 0) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr2[13] = iArr2[13] - 1;
            iArr2[12] = iArr2[12] - i2;
        }
    }

    @Override // android.support.v4.vr1
    /* renamed from: do */
    public void mo919do() {
        int[] iArr = this.f7326for;
        int i = iArr[12] + 1;
        iArr[12] = i;
        if (i == 0) {
            iArr[13] = iArr[13] + 1;
        }
    }

    @Override // android.support.v4.vr1
    /* renamed from: for */
    public void mo920for(byte[] bArr) {
        m1337throw(this.f7324do, this.f7326for, this.f7329new);
        ib1.m3349catch(this.f7329new, bArr, 0);
    }

    @Override // android.support.v4.vr1, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha" + this.f7324do;
    }

    @Override // android.support.v4.vr1
    /* renamed from: if */
    public void mo921if(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i > 0) {
            int[] iArr = this.f7326for;
            iArr[13] = iArr[13] + i;
        }
        int[] iArr2 = this.f7326for;
        int i3 = iArr2[12];
        iArr2[12] = iArr2[12] + i2;
        if (i3 == 0 || iArr2[12] >= i3) {
            return;
        }
        iArr2[13] = iArr2[13] + 1;
    }

    @Override // android.support.v4.vr1
    /* renamed from: new */
    public long mo922new() {
        int[] iArr = this.f7326for;
        return (iArr[13] << 32) | (iArr[12] & 4294967295L);
    }

    @Override // android.support.v4.vr1
    /* renamed from: super */
    public void mo259super(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            m8947goto(bArr.length, this.f7326for, 0);
            ib1.m3374throw(bArr, 0, this.f7326for, 4, 4);
            ib1.m3374throw(bArr, bArr.length - 16, this.f7326for, 8, 4);
        }
        ib1.m3374throw(bArr2, 0, this.f7326for, 14, 2);
    }

    @Override // android.support.v4.vr1
    /* renamed from: this */
    public void mo923this() {
        int[] iArr = this.f7326for;
        iArr[13] = 0;
        iArr[12] = 0;
    }
}
