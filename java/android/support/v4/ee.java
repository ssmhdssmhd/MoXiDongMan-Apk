package android.support.v4;

/* loaded from: classes3.dex */
public class ee {

    /* renamed from: do, reason: not valid java name */
    public byte[] f1402do;

    /* renamed from: if, reason: not valid java name */
    public int f1403if;

    public ee() {
        this.f1402do = new byte[64];
    }

    public ee(int i) {
        this.f1402do = new byte[i];
    }

    /* renamed from: if, reason: not valid java name */
    private void m1799if(int i) {
        byte[] bArr = this.f1402do;
        int length = bArr.length * 2;
        int i2 = this.f1403if;
        int i3 = i + i2;
        if (length <= i3) {
            length = i3;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.f1402do = bArr2;
    }

    /* renamed from: break, reason: not valid java name */
    public ee m1800break(String str) {
        int length = str.length();
        if (length > 65535) {
            throw new IllegalArgumentException();
        }
        int i = this.f1403if;
        if (i + 2 + length > this.f1402do.length) {
            m1799if(length + 2);
        }
        byte[] bArr = this.f1402do;
        int i2 = i + 1;
        bArr[i] = (byte) (length >>> 8);
        int i3 = i2 + 1;
        bArr[i2] = (byte) length;
        int i4 = 0;
        while (i4 < length) {
            char cCharAt = str.charAt(i4);
            if (cCharAt < 1 || cCharAt > 127) {
                this.f1403if = i3;
                return m1806new(str, i4, 65535);
            }
            bArr[i3] = (byte) cCharAt;
            i4++;
            i3++;
        }
        this.f1403if = i3;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public ee m1801case(byte[] bArr, int i, int i2) {
        if (this.f1403if + i2 > this.f1402do.length) {
            m1799if(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.f1402do, this.f1403if, i2);
        }
        this.f1403if += i2;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public ee m1802do(int i, int i2) {
        int i3 = this.f1403if;
        if (i3 + 2 > this.f1402do.length) {
            m1799if(2);
        }
        byte[] bArr = this.f1402do;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        bArr[i4] = (byte) i2;
        this.f1403if = i4 + 1;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public ee m1803else(int i) {
        int i2 = this.f1403if;
        if (i2 + 4 > this.f1402do.length) {
            m1799if(4);
        }
        byte[] bArr = this.f1402do;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i5] = (byte) i;
        this.f1403if = i5 + 1;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public ee m1804for(int i, int i2) {
        int i3 = this.f1403if;
        if (i3 + 3 > this.f1402do.length) {
            m1799if(3);
        }
        byte[] bArr = this.f1402do;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        bArr[i5] = (byte) i2;
        this.f1403if = i5 + 1;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public ee m1805goto(long j) {
        int i = this.f1403if;
        if (i + 8 > this.f1402do.length) {
            m1799if(8);
        }
        byte[] bArr = this.f1402do;
        int i2 = (int) (j >>> 32);
        int i3 = i + 1;
        bArr[i] = (byte) (i2 >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        int i7 = (int) j;
        int i8 = i6 + 1;
        bArr[i6] = (byte) (i7 >>> 24);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i7 >>> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i7 >>> 8);
        bArr[i10] = (byte) i7;
        this.f1403if = i10 + 1;
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public ee m1806new(String str, int i, int i2) {
        int i3;
        int length = str.length();
        int i4 = i;
        int i5 = i4;
        while (i4 < length) {
            char cCharAt = str.charAt(i4);
            i5 = (cCharAt < 1 || cCharAt > 127) ? cCharAt > 2047 ? i5 + 3 : i5 + 2 : i5 + 1;
            i4++;
        }
        if (i5 > i2) {
            throw new IllegalArgumentException();
        }
        int i6 = this.f1403if;
        int i7 = (i6 - i) - 2;
        if (i7 >= 0) {
            byte[] bArr = this.f1402do;
            bArr[i7] = (byte) (i5 >>> 8);
            bArr[i7 + 1] = (byte) i5;
        }
        if ((i6 + i5) - i > this.f1402do.length) {
            m1799if(i5 - i);
        }
        int i8 = this.f1403if;
        while (i < length) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 1 || cCharAt2 > 127) {
                byte[] bArr2 = this.f1402do;
                int i9 = i8 + 1;
                if (cCharAt2 > 2047) {
                    bArr2[i8] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                    int i10 = i9 + 1;
                    bArr2[i9] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                    i3 = i10 + 1;
                    bArr2[i10] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    bArr2[i8] = (byte) (((cCharAt2 >> 6) & 31) | 192);
                    i8 = i9 + 1;
                    bArr2[i9] = (byte) ((cCharAt2 & '?') | 128);
                    i++;
                }
            } else {
                i3 = i8 + 1;
                this.f1402do[i8] = (byte) cCharAt2;
            }
            i8 = i3;
            i++;
        }
        this.f1403if = i8;
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public ee m1807this(int i) {
        int i2 = this.f1403if;
        if (i2 + 2 > this.f1402do.length) {
            m1799if(2);
        }
        byte[] bArr = this.f1402do;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        bArr[i3] = (byte) i;
        this.f1403if = i3 + 1;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public ee m1808try(int i) {
        int i2 = this.f1403if;
        int i3 = i2 + 1;
        if (i3 > this.f1402do.length) {
            m1799if(1);
        }
        this.f1402do[i2] = (byte) i;
        this.f1403if = i3;
        return this;
    }
}
