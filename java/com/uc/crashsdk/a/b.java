package com.uc.crashsdk.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes2.dex */
public final class b {
    private static final int[] a = {126, 147, 115, 241, 101, 198, 215, 134};
    private static final int[] b = {125, 185, 233, 226, 129, 142, 151, 176};
    private static final int[] c = {238, 185, 233, 179, 129, 142, 151, 167};

    public static String a(String str) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        File file = new File(str);
        FileInputStream fileInputStream3 = null;
        if (!file.exists()) {
            return null;
        }
        try {
            fileInputStream2 = new FileInputStream(file);
        } catch (Exception e) {
            e = e;
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream2.read(bArr);
            g.a(fileInputStream2);
            byte[] bArrA = a(bArr, a);
            if (bArrA == null || bArrA.length <= 0) {
                g.a((Closeable) null);
                return null;
            }
            int length = bArrA.length - 1;
            String str2 = bArrA[length] == 10 ? new String(bArrA, 0, length) : new String(bArrA);
            g.a((Closeable) null);
            return str2;
        } catch (Exception e2) {
            fileInputStream = fileInputStream2;
            e = e2;
            try {
                g.a(e);
                g.a(fileInputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream3 = fileInputStream;
                g.a(fileInputStream3);
                throw th;
            }
        } catch (Throwable th3) {
            fileInputStream3 = fileInputStream2;
            th = th3;
            g.a(fileInputStream3);
            throw th;
        }
    }

    private static byte[] b(byte[] bArr, int[] iArr) {
        if (bArr != null && iArr != null && iArr.length == 8) {
            int length = bArr.length;
            try {
                byte[] bArr2 = new byte[length + 2];
                byte b2 = 0;
                for (int i = 0; i < length; i++) {
                    byte b3 = bArr[i];
                    bArr2[i] = (byte) (iArr[i % 8] ^ b3);
                    b2 = (byte) (b2 ^ b3);
                }
                bArr2[length] = (byte) (iArr[0] ^ b2);
                bArr2[length + 1] = (byte) (iArr[1] ^ b2);
                return bArr2;
            } catch (Exception e) {
                g.a(e);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        r1 = com.uc.crashsdk.a.g.e(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(String str, String str2, boolean z) {
        byte[] bArrE;
        String str3;
        boolean z2;
        String str4;
        boolean z3;
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        boolean z4;
        if (!z || g.a(str)) {
            return str;
        }
        File file = new File(str);
        if (file.exists() && file.length() <= 3145728 && bArrE != null && bArrE.length > 0) {
            boolean z5 = true;
            if (z) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream.write(bArrE);
                            byteArrayOutputStream.flush();
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                g.a(th);
                                bArrE = byteArrayOutputStream.toByteArray();
                                z4 = true;
                                if (z4) {
                                }
                                return str;
                            } finally {
                                g.a(byteArrayOutputStream);
                                g.a(gZIPOutputStream);
                            }
                        }
                    } catch (Throwable th3) {
                        gZIPOutputStream = null;
                        th = th3;
                    }
                } catch (Throwable th4) {
                    gZIPOutputStream = null;
                    th = th4;
                    byteArrayOutputStream = null;
                }
                try {
                    bArrE = byteArrayOutputStream.toByteArray();
                    z4 = true;
                } catch (Throwable th5) {
                    g.a(th5);
                    z4 = false;
                }
                if (z4 || bArrE == null || bArrE.length <= 0) {
                    return str;
                }
                str3 = str + str2;
                z2 = true;
            } else {
                str3 = str;
                z2 = false;
            }
            if (z2) {
                if (str3.equals(file.getName())) {
                    str4 = str3 + ".tmp";
                    z3 = true;
                } else {
                    str4 = str3;
                    z3 = false;
                }
                File file2 = new File(str4);
                if (!g.a(file2, bArrE)) {
                    z5 = false;
                } else if (z3) {
                    file.delete();
                    file2.renameTo(file);
                }
                if (z5) {
                    return str3;
                }
            }
        }
        return str;
    }

    private static byte[] a(byte[] bArr, int[] iArr) {
        if (bArr.length - 0 >= 2 && iArr != null && iArr.length == 8) {
            int length = (bArr.length - 2) - 0;
            try {
                byte[] bArr2 = new byte[length];
                byte b2 = 0;
                for (int i = 0; i < length; i++) {
                    byte b3 = (byte) (bArr[i + 0] ^ iArr[i % 8]);
                    bArr2[i] = b3;
                    b2 = (byte) (b2 ^ b3);
                }
                if (bArr[length + 0] == ((byte) ((iArr[0] ^ b2) & 255)) && bArr[length + 1 + 0] == ((byte) ((iArr[1] ^ b2) & 255))) {
                    return bArr2;
                }
                return null;
            } catch (Exception e) {
                g.a(e);
            }
        }
        return null;
    }

    public static boolean a(String str, String str2) {
        FileOutputStream fileOutputStream;
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            fileOutputStream = new FileOutputStream(file);
        } catch (Throwable th) {
            g.a(th);
            fileOutputStream = null;
        }
        boolean z = false;
        if (fileOutputStream == null) {
            return false;
        }
        byte[] bArrB = b(str2.getBytes(), a);
        if (bArrB == null) {
            return false;
        }
        try {
            fileOutputStream.write(bArrB);
            z = true;
        } finally {
            try {
                return z;
            } finally {
            }
        }
        return z;
    }
}
