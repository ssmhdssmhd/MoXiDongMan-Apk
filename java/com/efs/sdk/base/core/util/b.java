package com.efs.sdk.base.core.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* loaded from: classes.dex */
public final class b {
    private static final Random a = new Random();

    public static boolean a(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                a(fileOutputStream2);
                return true;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    d.b("efs.util.file", "write file error, filename is " + file.getName(), th);
                    a(fileOutputStream);
                    return false;
                } catch (Throwable th2) {
                    a(fileOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void b(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                b(file2);
            }
        }
        file.delete();
    }

    public static long c(File file) {
        long jC = 0;
        if (!file.isDirectory()) {
            return 0 + file.length();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0L;
        }
        for (File file2 : fileArrListFiles) {
            jC += c(file2);
        }
        return jC;
    }

    public static List<File> d(File file) {
        if (file.isFile()) {
            return Collections.emptyList();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                arrayList.add(file2);
            } else {
                arrayList.addAll(d(file2));
            }
        }
        return arrayList;
    }

    private static String e(File file) {
        String string = "";
        if (!file.exists()) {
            return "";
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[1024];
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i = fileInputStream2.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    sb.append(new String(bArr, 0, i));
                }
                string = sb.toString();
                a(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    d.b("efs.util.file", "read file error", th);
                    return string;
                } finally {
                    a(fileInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return string;
    }

    public static boolean a(File file, String str) {
        return a(file, str.getBytes());
    }

    public static String a(File file) {
        return e(file);
    }

    public static com.efs.sdk.base.core.d.b b(String str) {
        String[] strArrSplit = str.split("_");
        if (strArrSplit.length != 7) {
            d.a("efs.util.file", "File name error, name is ".concat(str), null);
            return null;
        }
        String str2 = strArrSplit[0];
        String str3 = strArrSplit[1];
        byte bByteValue = Byte.valueOf(strArrSplit[2]).byteValue();
        com.efs.sdk.base.core.d.b bVar = new com.efs.sdk.base.core.d.b(str2, Byte.valueOf(strArrSplit[3]).byteValue());
        bVar.a(str3);
        bVar.a(bByteValue);
        return bVar;
    }

    public static byte[] a(String str) throws Throwable {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[0];
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            a(fileInputStream);
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            d.b("efs.util.file", "read data error", e);
            a(fileInputStream2);
            return bArr;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            a(fileInputStream2);
            throw th;
        }
        return bArr;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                d.b("efs.util.file", "safe close error", th);
            }
        }
    }

    public static String a(com.efs.sdk.base.core.d.b bVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(bVar.a.a);
        sb.append("_");
        sb.append(bVar.a.d);
        sb.append("_");
        sb.append(bVar.a.e);
        sb.append("_");
        sb.append((int) bVar.a.b);
        sb.append("_");
        sb.append(e.a());
        sb.append("_");
        sb.append(a.nextInt(FastDtoa.kTen4));
        sb.append("_");
        com.efs.sdk.base.core.a.a.a();
        sb.append(com.efs.sdk.base.core.a.a.b());
        return sb.toString();
    }

    public static void a(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[524288];
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file2.isDirectory()) {
            file2 = new File(file2, file.getName());
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int i = fileInputStream2.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    } catch (Exception e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        try {
                            d.b("efs.util.file", "error when copy", e);
                            a(fileInputStream);
                            a(fileOutputStream);
                            b(file);
                        } catch (Throwable th) {
                            th = th;
                            a(fileInputStream);
                            a(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        a(fileInputStream);
                        a(fileOutputStream);
                        throw th;
                    }
                }
                a(fileInputStream2);
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
        a(fileOutputStream);
        b(file);
    }
}
