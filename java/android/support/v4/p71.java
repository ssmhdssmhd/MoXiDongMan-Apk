package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.util.Cfor;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public class p71 {

    /* renamed from: for, reason: not valid java name */
    private static final String f4867for = "2y";

    /* renamed from: new, reason: not valid java name */
    private static final Set<String> f4869new;

    /* renamed from: do, reason: not valid java name */
    private static final byte[] f4866do = {46, 47, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, NativeJavaObject.CONVERSION_NONE, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57};

    /* renamed from: if, reason: not valid java name */
    private static final byte[] f4868if = new byte[128];

    static {
        HashSet hashSet = new HashSet();
        f4869new = hashSet;
        hashSet.add("2a");
        hashSet.add(f4867for);
        hashSet.add("2b");
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = f4868if;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        while (true) {
            byte[] bArr2 = f4866do;
            if (i >= bArr2.length) {
                return;
            }
            f4868if[bArr2[i]] = (byte) i;
            i++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m5901case(char[] cArr, byte[] bArr, int i) {
        return m5906try(f4867for, cArr, bArr, i);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m5902do(String str, char[] cArr) throws NumberFormatException {
        if (str.length() != 60) {
            throw new tw("Bcrypt String length: " + str.length() + ", 60 required.");
        }
        if (str.charAt(0) != '$' || str.charAt(3) != '$' || str.charAt(6) != '$') {
            throw new IllegalArgumentException("Invalid Bcrypt String format.");
        }
        String strSubstring = str.substring(1, 3);
        if (!f4869new.contains(strSubstring)) {
            throw new IllegalArgumentException("Bcrypt version '" + strSubstring + "' is not supported by this implementation");
        }
        String strSubstring2 = str.substring(4, 6);
        try {
            int i = Integer.parseInt(strSubstring2);
            if (i >= 4 && i <= 31) {
                if (cArr != null) {
                    return str.equals(m5906try(strSubstring, cArr, m5903for(str.substring(str.lastIndexOf(36) + 1, str.length() - 31)), i));
                }
                throw new IllegalArgumentException("Missing password.");
            }
            throw new IllegalArgumentException("Invalid cost factor: " + i + ", 4 < cost < 31 expected.");
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("Invalid cost factor: " + strSubstring2);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static byte[] m5903for(String str) {
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16);
        if (charArray.length != 22) {
            throw new tw("Invalid base64 salt length: " + charArray.length + " , 22 required.");
        }
        for (char c : charArray) {
            if (c > 'z' || c < '.' || (c > '9' && c < 'A')) {
                throw new IllegalArgumentException("Salt string contains invalid character: " + ((int) c));
            }
        }
        char[] cArr = new char[24];
        System.arraycopy(charArray, 0, cArr, 0, charArray.length);
        for (int i = 0; i < 24; i += 4) {
            byte[] bArr = f4868if;
            byte b = bArr[cArr[i]];
            byte b2 = bArr[cArr[i + 1]];
            byte b3 = bArr[cArr[i + 2]];
            byte b4 = bArr[cArr[i + 3]];
            byteArrayOutputStream.write((b << 2) | (b2 >> 4));
            byteArrayOutputStream.write((b2 << 4) | (b3 >> 2));
            byteArrayOutputStream.write(b4 | (b3 << 6));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr2 = new byte[16];
        System.arraycopy(byteArray, 0, bArr2, 0, 16);
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m5904if(String str, byte[] bArr, byte[] bArr2, int i) {
        String string;
        if (!f4869new.contains(str)) {
            throw new IllegalArgumentException("Version " + str + " is not accepted by this implementation.");
        }
        StringBuffer stringBuffer = new StringBuffer(60);
        stringBuffer.append('$');
        stringBuffer.append(str);
        stringBuffer.append('$');
        if (i < 10) {
            string = "0" + i;
        } else {
            string = Integer.toString(i);
        }
        stringBuffer.append(string);
        stringBuffer.append('$');
        stringBuffer.append(m5905new(bArr2));
        stringBuffer.append(m5905new(k6.m4263try(bArr, bArr2, i)));
        return stringBuffer.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private static String m5905new(byte[] bArr) {
        boolean z;
        if (bArr.length != 24 && bArr.length != 16) {
            throw new tw("Invalid length: " + bArr.length + ", 24 for key or 16 for salt expected");
        }
        if (bArr.length == 16) {
            byte[] bArr2 = new byte[18];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
            z = true;
        } else {
            bArr[bArr.length - 1] = 0;
            z = false;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int length = bArr.length;
        for (int i = 0; i < length; i += 3) {
            int i2 = bArr[i] & 255;
            int i3 = bArr[i + 1] & 255;
            int i4 = bArr[i + 2] & 255;
            byte[] bArr3 = f4866do;
            byteArrayOutputStream.write(bArr3[(i2 >>> 2) & 63]);
            byteArrayOutputStream.write(bArr3[((i2 << 4) | (i3 >>> 4)) & 63]);
            byteArrayOutputStream.write(bArr3[((i3 << 2) | (i4 >>> 6)) & 63]);
            byteArrayOutputStream.write(bArr3[i4 & 63]);
        }
        String strM36359if = Cfor.m36359if(byteArrayOutputStream.toByteArray());
        return strM36359if.substring(0, z ? 22 : strM36359if.length() - 1);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m5906try(String str, char[] cArr, byte[] bArr, int i) {
        if (!f4869new.contains(str)) {
            throw new IllegalArgumentException("Version " + str + " is not accepted by this implementation.");
        }
        if (cArr == null) {
            throw new IllegalArgumentException("Password required.");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Salt required.");
        }
        if (bArr.length != 16) {
            throw new tw("16 byte salt required: " + bArr.length);
        }
        if (i < 4 || i > 31) {
            throw new IllegalArgumentException("Invalid cost factor.");
        }
        byte[] bArrM36353const = Cfor.m36353const(cArr);
        int length = bArrM36353const.length < 72 ? bArrM36353const.length + 1 : 72;
        byte[] bArr2 = new byte[length];
        if (length > bArrM36353const.length) {
            length = bArrM36353const.length;
        }
        System.arraycopy(bArrM36353const, 0, bArr2, 0, length);
        q3.c(bArrM36353const, (byte) 0);
        String strM5904if = m5904if(str, bArr2, bArr, i);
        q3.c(bArr2, (byte) 0);
        return strM5904if;
    }
}
