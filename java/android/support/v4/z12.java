package android.support.v4;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.ZipFile;

/* loaded from: classes3.dex */
public class z12 {
    /* renamed from: do, reason: not valid java name */
    public static void m10019do(Closeable closeable) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m10020if(ZipFile zipFile) throws IOException {
        if (zipFile == null) {
            return;
        }
        try {
            zipFile.close();
        } catch (IOException unused) {
        }
    }
}
