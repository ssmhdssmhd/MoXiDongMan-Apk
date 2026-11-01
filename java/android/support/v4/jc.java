package android.support.v4;

import org.bouncycastle.util.encoders.Translator;

/* loaded from: classes3.dex */
public class jc {

    /* renamed from: do, reason: not valid java name */
    public byte[] f3047do;

    /* renamed from: for, reason: not valid java name */
    public Translator f3048for;

    /* renamed from: if, reason: not valid java name */
    public int f3049if;

    public jc(Translator translator, int i) {
        this.f3048for = translator;
        if (i % translator.getEncodedBlockSize() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.f3047do = new byte[i];
        this.f3049if = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public int m3822do(byte b, byte[] bArr, int i) {
        byte[] bArr2 = this.f3047do;
        int i2 = this.f3049if;
        int i3 = i2 + 1;
        this.f3049if = i3;
        bArr2[i2] = b;
        if (i3 != bArr2.length) {
            return 0;
        }
        int iEncode = this.f3048for.encode(bArr2, 0, bArr2.length, bArr, i);
        this.f3049if = 0;
        return iEncode;
    }

    /* renamed from: if, reason: not valid java name */
    public int m3823if(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        byte[] bArr3 = this.f3047do;
        int length = bArr3.length;
        int i4 = this.f3049if;
        int i5 = length - i4;
        int iEncode = 0;
        if (i2 > i5) {
            System.arraycopy(bArr, i, bArr3, i4, i5);
            Translator translator = this.f3048for;
            byte[] bArr4 = this.f3047do;
            int iEncode2 = translator.encode(bArr4, 0, bArr4.length, bArr2, i3) + 0;
            this.f3049if = 0;
            int i6 = i2 - i5;
            int i7 = i + i5;
            int i8 = i3 + iEncode2;
            int length2 = i6 - (i6 % this.f3047do.length);
            iEncode = iEncode2 + this.f3048for.encode(bArr, i7, length2, bArr2, i8);
            i2 = i6 - length2;
            i = i7 + length2;
        }
        if (i2 != 0) {
            System.arraycopy(bArr, i, this.f3047do, this.f3049if, i2);
            this.f3049if += i2;
        }
        return iEncode;
    }
}
