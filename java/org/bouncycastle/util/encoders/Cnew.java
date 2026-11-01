package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.util.encoders.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements Encoder {

    /* renamed from: do, reason: not valid java name */
    public final byte[] f32654do = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, NativeJavaObject.CONVERSION_NONE, 100, 101, 102};

    /* renamed from: if, reason: not valid java name */
    public final byte[] f32655if = new byte[128];

    public Cnew() {
        m36342if();
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m36341do(char c) {
        return c == '\n' || c == '\r' || c == '\t' || c == ' ';
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        int length = str.length();
        while (length > 0 && m36341do(str.charAt(length - 1))) {
            length--;
        }
        int i = 0;
        int i2 = 0;
        while (i < length) {
            while (i < length && m36341do(str.charAt(i))) {
                i++;
            }
            int i3 = i + 1;
            byte b = this.f32655if[str.charAt(i)];
            while (i3 < length && m36341do(str.charAt(i3))) {
                i3++;
            }
            int i4 = i3 + 1;
            byte b2 = this.f32655if[str.charAt(i3)];
            if ((b | b2) < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            outputStream.write((b << 4) | b2);
            i2++;
            i = i4;
        }
        return i2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        int i3 = i2 + i;
        while (i3 > i && m36341do((char) bArr[i3 - 1])) {
            i3--;
        }
        int i4 = 0;
        while (i < i3) {
            while (i < i3 && m36341do((char) bArr[i])) {
                i++;
            }
            int i5 = i + 1;
            byte b = this.f32655if[bArr[i]];
            while (i5 < i3 && m36341do((char) bArr[i5])) {
                i5++;
            }
            int i6 = i5 + 1;
            byte b2 = this.f32655if[bArr[i5]];
            if ((b | b2) < 0) {
                throw new IOException("invalid characters encountered in Hex data");
            }
            outputStream.write((b << 4) | b2);
            i4++;
            i = i6;
        }
        return i4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = bArr[i3] & 255;
            outputStream.write(this.f32654do[i4 >>> 4]);
            outputStream.write(this.f32654do[i4 & 15]);
        }
        return i2 * 2;
    }

    /* renamed from: if, reason: not valid java name */
    public void m36342if() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f32655if;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        while (true) {
            byte[] bArr2 = this.f32654do;
            if (i >= bArr2.length) {
                byte[] bArr3 = this.f32655if;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            this.f32655if[bArr2[i]] = (byte) i;
            i++;
        }
    }
}
