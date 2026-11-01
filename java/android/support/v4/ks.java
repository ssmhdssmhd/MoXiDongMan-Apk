package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;

/* loaded from: classes3.dex */
public class ks {

    /* renamed from: do, reason: not valid java name */
    private static final int f3463do = 16384;

    /* renamed from: do, reason: not valid java name */
    public static long m4482do(File file, uf1 uf1Var) throws IOException {
        if (file == null || !file.exists() || !file.canRead()) {
            throw new rj2("input file is null or does not exist or cannot read. Cannot calculate CRC for the file");
        }
        byte[] bArr = new byte[16384];
        CRC32 crc32 = new CRC32();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    long value = crc32.getValue();
                    fileInputStream.close();
                    return value;
                }
                crc32.update(bArr, 0, i);
                if (uf1Var != null) {
                    uf1Var.m8427throws(i);
                    if (uf1Var.m8410class()) {
                        uf1Var.m8421return(uf1.Cdo.CANCELLED);
                        uf1Var.m8422static(uf1.Cif.READY);
                        fileInputStream.close();
                        return 0L;
                    }
                }
            } finally {
            }
        }
    }
}
