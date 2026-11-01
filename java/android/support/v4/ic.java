package android.support.v4;

import org.bouncycastle.util.encoders.Translator;

/* loaded from: classes3.dex */
public class ic {

    /* renamed from: do, reason: not valid java name */
    public byte[] f2664do;

    /* renamed from: for, reason: not valid java name */
    public Translator f2665for;

    /* renamed from: if, reason: not valid java name */
    public int f2666if;

    public ic(Translator translator, int i) {
        this.f2665for = translator;
        if (i % translator.getEncodedBlockSize() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.f2664do = new byte[i];
        this.f2666if = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public int m3378do(byte b, byte[] bArr, int i) {
        byte[] bArr2 = this.f2664do;
        int i2 = this.f2666if;
        int i3 = i2 + 1;
        this.f2666if = i3;
        bArr2[i2] = b;
        if (i3 != bArr2.length) {
            return 0;
        }
        int iDecode = this.f2665for.decode(bArr2, 0, bArr2.length, bArr, i);
        this.f2666if = 0;
        return iDecode;
    }

    /* renamed from: if, reason: not valid java name */
    public int m3379if(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        byte[] bArr3 = this.f2664do;
        int length = bArr3.length;
        int i4 = this.f2666if;
        int i5 = length - i4;
        int iDecode = 0;
        if (i2 > i5) {
            System.arraycopy(bArr, i, bArr3, i4, i5);
            Translator translator = this.f2665for;
            byte[] bArr4 = this.f2664do;
            int iDecode2 = translator.decode(bArr4, 0, bArr4.length, bArr2, i3) + 0;
            this.f2666if = 0;
            int i6 = i2 - i5;
            int i7 = i + i5;
            int i8 = i3 + iDecode2;
            int length2 = i6 - (i6 % this.f2664do.length);
            iDecode = iDecode2 + this.f2665for.decode(bArr, i7, length2, bArr2, i8);
            i2 = i6 - length2;
            i = i7 + length2;
        }
        if (i2 != 0) {
            System.arraycopy(bArr, i, this.f2664do, this.f2666if, i2);
            this.f2666if += i2;
        }
        return iDecode;
    }
}
