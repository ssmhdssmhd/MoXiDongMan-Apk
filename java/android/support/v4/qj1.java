package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes2.dex */
public final class qj1 extends kw0 {

    /* renamed from: case, reason: not valid java name */
    private final int f5437case;

    /* renamed from: else, reason: not valid java name */
    private final int f5438else;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f5439for;

    /* renamed from: new, reason: not valid java name */
    private final int f5440new;

    /* renamed from: try, reason: not valid java name */
    private final int f5441try;

    public qj1(int i, int i2, int[] iArr) {
        super(i, i2);
        this.f5440new = i;
        this.f5441try = i2;
        this.f5437case = 0;
        this.f5438else = 0;
        int i3 = i * i2;
        this.f5439for = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr[i4];
            this.f5439for[i4] = (byte) (((((i5 >> 16) & 255) + ((i5 >> 7) & TypedValues.Position.TYPE_POSITION_TYPE)) + (i5 & 255)) / 4);
        }
    }

    @Override // android.support.v4.kw0
    /* renamed from: do */
    public kw0 mo4517do(int i, int i2, int i3, int i4) {
        return new qj1(this.f5439for, this.f5440new, this.f5441try, this.f5437case + i, this.f5438else + i2, i3, i4);
    }

    @Override // android.support.v4.kw0
    /* renamed from: else */
    public boolean mo4518else() {
        return true;
    }

    @Override // android.support.v4.kw0
    /* renamed from: for */
    public byte[] mo4519for() {
        int iM4524try = m4524try();
        int iM4521if = m4521if();
        int i = this.f5440new;
        if (iM4524try == i && iM4521if == this.f5441try) {
            return this.f5439for;
        }
        int i2 = iM4524try * iM4521if;
        byte[] bArr = new byte[i2];
        int i3 = (this.f5438else * i) + this.f5437case;
        if (iM4524try == i) {
            System.arraycopy(this.f5439for, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i4 = 0; i4 < iM4521if; i4++) {
            System.arraycopy(this.f5439for, i3, bArr, i4 * iM4524try, iM4524try);
            i3 += this.f5440new;
        }
        return bArr;
    }

    @Override // android.support.v4.kw0
    /* renamed from: new */
    public byte[] mo4522new(int i, byte[] bArr) {
        if (i < 0 || i >= m4521if()) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i)));
        }
        int iM4524try = m4524try();
        if (bArr == null || bArr.length < iM4524try) {
            bArr = new byte[iM4524try];
        }
        System.arraycopy(this.f5439for, ((i + this.f5438else) * this.f5440new) + this.f5437case, bArr, 0, iM4524try);
        return bArr;
    }

    private qj1(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 <= i && i6 + i4 <= i2) {
            this.f5439for = bArr;
            this.f5440new = i;
            this.f5441try = i2;
            this.f5437case = i3;
            this.f5438else = i4;
            return;
        }
        throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
}
