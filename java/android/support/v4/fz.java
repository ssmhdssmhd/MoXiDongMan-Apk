package android.support.v4;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public class fz {
    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static String m2489do(String str) {
        byte[] bArrDecode = Base64.decode(str, 2);
        Inflater inflater = new Inflater();
        inflater.setInput(bArrDecode);
        byte[] bArr = new byte[256];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(256);
        while (!inflater.finished()) {
            try {
                try {
                    byteArrayOutputStream.write(bArr, 0, inflater.inflate(bArr));
                } catch (DataFormatException e) {
                    e.printStackTrace();
                    inflater.end();
                    return null;
                }
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        }
        inflater.end();
        return byteArrayOutputStream.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2490if(String str) {
        Deflater deflater = new Deflater(9);
        deflater.setInput(str.getBytes());
        deflater.finish();
        byte[] bArr = new byte[256];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(256);
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr, 0, deflater.deflate(bArr));
        }
        deflater.end();
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }
}
