package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class a22 {

    /* renamed from: do, reason: not valid java name */
    private static int f16do = 4096;

    /* renamed from: case, reason: not valid java name */
    public static int m17case(InputStream inputStream, byte[] bArr) throws IOException {
        return m19else(inputStream, bArr, 0, bArr.length);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m18do(InputStream inputStream) throws IOException {
        int i = f16do;
        while (inputStream.read(new byte[i], 0, i) >= 0) {
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m19else(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 < 0) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    /* renamed from: for, reason: not valid java name */
    public static long m20for(InputStream inputStream, long j, OutputStream outputStream) throws IOException {
        int i = f16do;
        byte[] bArr = new byte[i];
        long j2 = 0;
        while (true) {
            int i2 = inputStream.read(bArr, 0, i);
            if (i2 < 0) {
                return j2;
            }
            long j3 = i2;
            if (j - j2 < j3) {
                throw new w12("Data Overflow");
            }
            j2 += j3;
            outputStream.write(bArr, 0, i2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m21goto(ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream) throws IOException {
        byteArrayOutputStream.writeTo(outputStream);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m22if(InputStream inputStream, OutputStream outputStream) throws IOException {
        int i = f16do;
        byte[] bArr = new byte[i];
        while (true) {
            int i2 = inputStream.read(bArr, 0, i);
            if (i2 < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i2);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m23new(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m22if(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m24try(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m20for(inputStream, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
