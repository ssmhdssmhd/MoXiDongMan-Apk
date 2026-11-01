package android.support.v4;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class v12 implements Encoder<InputStream> {

    /* renamed from: if, reason: not valid java name */
    private static final String f7036if = "StreamEncoder";

    /* renamed from: do, reason: not valid java name */
    private final ArrayPool f7037do;

    public v12(ArrayPool arrayPool) {
        this.f7037do = arrayPool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean encode(@NonNull InputStream inputStream, @NonNull File file, @NonNull f81 f81Var) throws Throwable {
        byte[] bArr = (byte[]) this.f7037do.get(65536, byte[].class);
        boolean z = false;
        ?? r1 = 0;
        r1 = 0;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i = inputStream.read(bArr);
                            r1 = -1;
                            if (i == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i);
                        } catch (IOException unused) {
                            r1 = fileOutputStream;
                            Log.isLoggable(f7036if, 3);
                            if (r1 != 0) {
                                r1.close();
                                r1 = r1;
                            }
                            this.f7037do.put(bArr);
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            r1 = fileOutputStream;
                            if (r1 != 0) {
                                try {
                                    r1.close();
                                } catch (IOException unused2) {
                                }
                            }
                            this.f7037do.put(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    z = true;
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
            }
            this.f7037do.put(bArr);
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
