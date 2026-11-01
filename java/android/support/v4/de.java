package android.support.v4;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.zip.CRC32;
import net.lingala.zip4j.crypto.PBKDF2.Cdo;

/* loaded from: classes2.dex */
public class de {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f1021do = Cdo.f28079do.toCharArray();

    /* renamed from: break, reason: not valid java name */
    public static byte[] m1296break(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            throw new IllegalArgumentException("all byte array must be of same length");
        }
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m1297case(String str) {
        if (str.length() % 2 == 1) {
            str = "0" + str;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m1298do(byte[] bArr) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        byte[] bArr2 = new byte[4];
        System.arraycopy(ByteBuffer.allocate(8).putLong(crc32.getValue()).array(), 4, bArr2, 0, 4);
        return m1303new(bArr, bArr2);
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m1299else(int i) {
        return ByteBuffer.allocate(4).putInt(i).array();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m1300for(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f1021do;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static List<Byte> m1301goto(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1302if(byte b) {
        return m1300for(new byte[]{b});
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m1303new(byte[] bArr, byte[]... bArr2) {
        int length = bArr.length;
        for (byte[] bArr3 : bArr2) {
            length += bArr3.length;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length);
        int length2 = bArr.length;
        for (byte[] bArr4 : bArr2) {
            System.arraycopy(bArr4, 0, bArrCopyOf, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArrCopyOf;
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m1304this(int i) {
        byte[] bArr = new byte[i];
        new Random().nextBytes(bArr);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m1305try(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
