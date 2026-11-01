package android.support.v4;

import java.io.File;
import java.util.Calendar;

/* loaded from: classes3.dex */
public class mj2 {
    /* renamed from: case, reason: not valid java name */
    public static long m4934case(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        if (calendar.get(1) < 1980) {
            return 2162688L;
        }
        return (calendar.get(13) >> 1) | ((r5 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m4935do(char[] cArr) {
        byte[] bArr = new byte[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static long m4936for(long j) {
        int i = (int) ((j & 31) * 2);
        int i2 = (int) ((j >> 5) & 63);
        int i3 = (int) ((j >> 11) & 31);
        int i4 = (int) (31 & (j >> 16));
        int i5 = (int) (((j >> 21) & 15) - 1);
        int i6 = (int) (((j >> 25) & 127) + 1980);
        Calendar calendar = Calendar.getInstance();
        calendar.set(i6, i5, i4, i3, i2, i);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m4937if(File file) throws rj2 {
        if (file == null) {
            throw new rj2("output path is null");
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            throw new rj2("output directory is not valid");
        }
        if (file.mkdirs()) {
            return true;
        }
        throw new rj2("Cannot create output directories");
    }

    /* renamed from: new, reason: not valid java name */
    public static hq m4938new(mu0 mu0Var) {
        if (mu0Var.m8100try() != hq.AES_INTERNAL_ONLY) {
            return mu0Var.m8100try();
        }
        if (mu0Var.m8078for() != null) {
            return mu0Var.m8078for().m2762try();
        }
        throw new RuntimeException("AesExtraDataRecord not present in local header for aes encrypted data");
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m4939try(String str) {
        return str != null && str.trim().length() > 0;
    }
}
