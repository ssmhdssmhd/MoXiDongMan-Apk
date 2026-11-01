package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.util.encoders.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Encoder {

    /* renamed from: do, reason: not valid java name */
    public final byte[] f32651do = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, NativeJavaObject.CONVERSION_NONE, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: if, reason: not valid java name */
    public byte f32653if = 61;

    /* renamed from: for, reason: not valid java name */
    public final byte[] f32652for = new byte[128];

    public Cif() {
        m36340for();
    }

    /* renamed from: do, reason: not valid java name */
    private int m36336do(OutputStream outputStream, char c, char c2, char c3, char c4) throws IOException {
        char c5 = this.f32653if;
        if (c3 == c5) {
            if (c4 != c5) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            byte[] bArr = this.f32652for;
            byte b = bArr[c];
            byte b2 = bArr[c2];
            if ((b | b2) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b << 2) | (b2 >> 4));
            return 1;
        }
        if (c4 == c5) {
            byte[] bArr2 = this.f32652for;
            byte b3 = bArr2[c];
            byte b4 = bArr2[c2];
            byte b5 = bArr2[c3];
            if ((b3 | b4 | b5) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b3 << 2) | (b4 >> 4));
            outputStream.write((b4 << 4) | (b5 >> 2));
            return 2;
        }
        byte[] bArr3 = this.f32652for;
        byte b6 = bArr3[c];
        byte b7 = bArr3[c2];
        byte b8 = bArr3[c3];
        byte b9 = bArr3[c4];
        if ((b6 | b7 | b8 | b9) < 0) {
            throw new IOException("invalid characters encountered at end of base64 data");
        }
        outputStream.write((b6 << 2) | (b7 >> 4));
        outputStream.write((b7 << 4) | (b8 >> 2));
        outputStream.write((b8 << 6) | b9);
        return 3;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m36337if(char c) {
        return c == '\n' || c == '\r' || c == '\t' || c == ' ';
    }

    /* renamed from: new, reason: not valid java name */
    private int m36338new(String str, int i, int i2) {
        while (i < i2 && m36337if(str.charAt(i))) {
            i++;
        }
        return i;
    }

    /* renamed from: try, reason: not valid java name */
    private int m36339try(byte[] bArr, int i, int i2) {
        while (i < i2 && m36337if((char) bArr[i])) {
            i++;
        }
        return i;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        int length = str.length();
        while (length > 0 && m36337if(str.charAt(length - 1))) {
            length--;
        }
        int i = 0;
        if (length == 0) {
            return 0;
        }
        int i2 = length;
        int i3 = 0;
        while (i2 > 0 && i3 != 4) {
            if (!m36337if(str.charAt(i2 - 1))) {
                i3++;
            }
            i2--;
        }
        int iM36338new = m36338new(str, 0, i2);
        while (iM36338new < i2) {
            int i4 = iM36338new + 1;
            byte b = this.f32652for[str.charAt(iM36338new)];
            int iM36338new2 = m36338new(str, i4, i2);
            int i5 = iM36338new2 + 1;
            byte b2 = this.f32652for[str.charAt(iM36338new2)];
            int iM36338new3 = m36338new(str, i5, i2);
            int i6 = iM36338new3 + 1;
            byte b3 = this.f32652for[str.charAt(iM36338new3)];
            int iM36338new4 = m36338new(str, i6, i2);
            int i7 = iM36338new4 + 1;
            byte b4 = this.f32652for[str.charAt(iM36338new4)];
            if ((b | b2 | b3 | b4) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            outputStream.write((b << 2) | (b2 >> 4));
            outputStream.write((b2 << 4) | (b3 >> 2));
            outputStream.write((b3 << 6) | b4);
            i += 3;
            iM36338new = m36338new(str, i7, i2);
        }
        int iM36338new5 = m36338new(str, iM36338new, length);
        int iM36338new6 = m36338new(str, iM36338new5 + 1, length);
        int iM36338new7 = m36338new(str, iM36338new6 + 1, length);
        return i + m36336do(outputStream, str.charAt(iM36338new5), str.charAt(iM36338new6), str.charAt(iM36338new7), str.charAt(m36338new(str, iM36338new7 + 1, length)));
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        int i3 = i2 + i;
        while (i3 > i && m36337if((char) bArr[i3 - 1])) {
            i3--;
        }
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        int i5 = i3;
        int i6 = 0;
        while (i5 > i && i6 != 4) {
            if (!m36337if((char) bArr[i5 - 1])) {
                i6++;
            }
            i5--;
        }
        int iM36339try = m36339try(bArr, i, i5);
        while (iM36339try < i5) {
            int i7 = iM36339try + 1;
            byte b = this.f32652for[bArr[iM36339try]];
            int iM36339try2 = m36339try(bArr, i7, i5);
            int i8 = iM36339try2 + 1;
            byte b2 = this.f32652for[bArr[iM36339try2]];
            int iM36339try3 = m36339try(bArr, i8, i5);
            int i9 = iM36339try3 + 1;
            byte b3 = this.f32652for[bArr[iM36339try3]];
            int iM36339try4 = m36339try(bArr, i9, i5);
            int i10 = iM36339try4 + 1;
            byte b4 = this.f32652for[bArr[iM36339try4]];
            if ((b | b2 | b3 | b4) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            outputStream.write((b << 2) | (b2 >> 4));
            outputStream.write((b2 << 4) | (b3 >> 2));
            outputStream.write((b3 << 6) | b4);
            i4 += 3;
            iM36339try = m36339try(bArr, i10, i5);
        }
        int iM36339try5 = m36339try(bArr, iM36339try, i3);
        int iM36339try6 = m36339try(bArr, iM36339try5 + 1, i3);
        int iM36339try7 = m36339try(bArr, iM36339try6 + 1, i3);
        return i4 + m36336do(outputStream, (char) bArr[iM36339try5], (char) bArr[iM36339try6], (char) bArr[iM36339try7], (char) bArr[m36339try(bArr, iM36339try7 + 1, i3)]);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a4  */
    @Override // org.bouncycastle.util.encoders.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int encode(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        int i3;
        byte b;
        int i4 = i2 % 3;
        int i5 = i2 - i4;
        int i6 = i;
        while (true) {
            i3 = i + i5;
            if (i6 >= i3) {
                break;
            }
            int i7 = bArr[i6] & 255;
            int i8 = bArr[i6 + 1] & 255;
            int i9 = bArr[i6 + 2] & 255;
            outputStream.write(this.f32651do[(i7 >>> 2) & 63]);
            outputStream.write(this.f32651do[((i7 << 4) | (i8 >>> 4)) & 63]);
            outputStream.write(this.f32651do[((i8 << 2) | (i9 >>> 6)) & 63]);
            outputStream.write(this.f32651do[i9 & 63]);
            i6 += 3;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                int i10 = bArr[i3] & 255;
                int i11 = bArr[i3 + 1] & 255;
                outputStream.write(this.f32651do[(i10 >>> 2) & 63]);
                outputStream.write(this.f32651do[((i10 << 4) | (i11 >>> 4)) & 63]);
                b = this.f32651do[(i11 << 2) & 63];
            }
            return ((i5 / 3) * 4) + (i4 == 0 ? 0 : 4);
        }
        int i12 = bArr[i3] & 255;
        outputStream.write(this.f32651do[(i12 >>> 2) & 63]);
        outputStream.write(this.f32651do[(i12 << 4) & 63]);
        b = this.f32653if;
        outputStream.write(b);
        outputStream.write(this.f32653if);
        return ((i5 / 3) * 4) + (i4 == 0 ? 0 : 4);
    }

    /* renamed from: for, reason: not valid java name */
    public void m36340for() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f32652for;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        while (true) {
            byte[] bArr2 = this.f32651do;
            if (i >= bArr2.length) {
                return;
            }
            this.f32652for[bArr2[i]] = (byte) i;
            i++;
        }
    }
}
