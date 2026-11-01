package android.support.v4;

/* loaded from: classes2.dex */
public final class a9 {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f55do;

    /* renamed from: for, reason: not valid java name */
    private int f56for;

    /* renamed from: if, reason: not valid java name */
    private int f57if;

    public a9(byte[] bArr) {
        this.f55do = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public int m76do() {
        return ((this.f55do.length - this.f57if) * 8) - this.f56for;
    }

    /* renamed from: for, reason: not valid java name */
    public int m77for() {
        return this.f57if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m78if() {
        return this.f56for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m79new(int i) {
        if (i <= 0 || i > 32 || i > m76do()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.f56for;
        int i3 = 0;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            byte[] bArr = this.f55do;
            int i7 = this.f57if;
            int i8 = (((255 >> (8 - i5)) << i6) & bArr[i7]) >> i6;
            i -= i5;
            int i9 = i2 + i5;
            this.f56for = i9;
            if (i9 == 8) {
                this.f56for = 0;
                this.f57if = i7 + 1;
            }
            i3 = i8;
        }
        if (i <= 0) {
            return i3;
        }
        while (i >= 8) {
            int i10 = i3 << 8;
            byte[] bArr2 = this.f55do;
            int i11 = this.f57if;
            i3 = (bArr2[i11] & 255) | i10;
            this.f57if = i11 + 1;
            i -= 8;
        }
        if (i <= 0) {
            return i3;
        }
        int i12 = 8 - i;
        int i13 = (i3 << i) | ((((255 >> i12) << i12) & this.f55do[this.f57if]) >> i12);
        this.f56for += i;
        return i13;
    }
}
