package android.support.v4;

import java.io.UnsupportedEncodingException;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes2.dex */
public final class kj0 {

    /* renamed from: do, reason: not valid java name */
    public static final byte[] f3396do = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, NativeJavaObject.CONVERSION_NONE, 100, 101, 102};

    /* renamed from: do, reason: not valid java name */
    public static String m4416do(byte b, int i) {
        int i2 = b & 255;
        byte[] bArr = f3396do;
        try {
            String str = new String(new byte[]{bArr[i2 >>> 4], bArr[i2 & 15]}, "ASCII");
            StringBuilder sb = new StringBuilder();
            if (str.length() < i) {
                for (int length = i - str.length(); length > 0; length--) {
                    sb.append('0');
                }
            }
            sb.append(str);
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }
}
