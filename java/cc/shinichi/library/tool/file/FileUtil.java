package cc.shinichi.library.tool.file;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.mk;
import android.support.v4.pk0;
import android.support.v4.rd1;
import android.support.v4.ur;
import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import fi.iki.elonen.NanoHTTPD;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class FileUtil {

    /* renamed from: do, reason: not valid java name */
    public static final String[][] f8749do = {new String[]{".3gp", "video/3gpp"}, new String[]{".apk", "application/vnd.android.package-archive"}, new String[]{".asf", "video/x-ms-asf"}, new String[]{".avi", "video/x-msvideo"}, new String[]{".bin", "application/octet-stream"}, new String[]{".bmp", "image/bmp"}, new String[]{".c", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".class", "application/octet-stream"}, new String[]{".conf", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".cpp", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".doc", "application/msword"}, new String[]{".docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}, new String[]{".xls", "application/vnd.ms-excel"}, new String[]{".xlsx", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}, new String[]{".exe", "application/octet-stream"}, new String[]{".gif", "image/gif"}, new String[]{".gtar", "application/x-gtar"}, new String[]{".gz", "application/x-gzip"}, new String[]{".h", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".htm", NanoHTTPD.MIME_HTML}, new String[]{".html", NanoHTTPD.MIME_HTML}, new String[]{".jar", "application/java-archive"}, new String[]{".java", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".jpeg", "image/jpeg"}, new String[]{".jpg", "image/jpeg"}, new String[]{".js", "application/x-javascript"}, new String[]{".log", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".m3u", "audio/x-mpegurl"}, new String[]{".m4a", "audio/mp4a-latm"}, new String[]{".m4b", "audio/mp4a-latm"}, new String[]{".m4p", "audio/mp4a-latm"}, new String[]{".m4u", "video/vnd.mpegurl"}, new String[]{".m4v", "video/x-m4v"}, new String[]{".mov", "video/quicktime"}, new String[]{".mp2", "audio/x-mpeg"}, new String[]{".mp3", "audio/x-mpeg"}, new String[]{com.luck.picture.lib.tools.Cdo.f18873for, "video/mp4"}, new String[]{".mpc", "application/vnd.mpohun.certificate"}, new String[]{".mpe", "video/mpeg"}, new String[]{".mpeg", "video/mpeg"}, new String[]{".mpg", "video/mpeg"}, new String[]{".mpg4", "video/mp4"}, new String[]{".mpga", "audio/mpeg"}, new String[]{".msg", "application/vnd.ms-outlook"}, new String[]{".ogg", "audio/ogg"}, new String[]{".pdf", "application/pdf"}, new String[]{rd1.f5753if, "image/png"}, new String[]{".pps", "application/vnd.ms-powerpoint"}, new String[]{".ppt", "application/vnd.ms-powerpoint"}, new String[]{".pptx", "application/vnd.openxmlformats-officedocument.presentationml.presentation"}, new String[]{".prop", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".rc", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".rmvb", "audio/x-pn-realaudio"}, new String[]{".rtf", "application/rtf"}, new String[]{".sh", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".tar", "application/x-tar"}, new String[]{".tgz", "application/x-compressed"}, new String[]{".txt", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".wav", "audio/x-wav"}, new String[]{".wma", "audio/x-ms-wma"}, new String[]{".wmv", "audio/x-ms-wmv"}, new String[]{".wps", "application/vnd.ms-works"}, new String[]{".xml", NanoHTTPD.MIME_PLAINTEXT}, new String[]{".z", "application/x-compress"}, new String[]{MultiDexExtractor.EXTRACTED_SUFFIX, "application/x-zip-compressed"}, new String[]{"", "*/*"}};

    /* renamed from: if, reason: not valid java name */
    private static final String f8751if = System.getProperty("line.separator");

    /* renamed from: for, reason: not valid java name */
    private static final char[] f8750for = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: new, reason: not valid java name */
    private static int f8752new = 8192;

    public interface OnReplaceListener {
        boolean onReplace();
    }

    /* renamed from: cc.shinichi.library.tool.file.FileUtil$do, reason: invalid class name */
    public class Cdo implements OnReplaceListener {
        @Override // cc.shinichi.library.tool.file.FileUtil.OnReplaceListener
        public boolean onReplace() {
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.tool.file.FileUtil$for, reason: invalid class name */
    public class Cfor implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.tool.file.FileUtil$if, reason: invalid class name */
    public class Cif implements OnReplaceListener {
        @Override // cc.shinichi.library.tool.file.FileUtil.OnReplaceListener
        public boolean onReplace() {
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.tool.file.FileUtil$new, reason: invalid class name */
    public class Cnew implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isFile();
        }
    }

    /* renamed from: cc.shinichi.library.tool.file.FileUtil$try, reason: invalid class name */
    public class Ctry implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return true;
        }
    }

    public FileUtil() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean A(String str) {
        return z(m10455instanceof(str));
    }

    public static boolean A0(File file, InputStream inputStream) {
        return B0(file, inputStream, false);
    }

    private static boolean B(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean B0(File file, InputStream inputStream, boolean z) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        if (!m10462public(file) || inputStream == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[f8752new];
            while (true) {
                int i = inputStream.read(bArr, 0, f8752new);
                if (i == -1) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, i);
            }
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            try {
                bufferedOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            return true;
        } catch (IOException e4) {
            e = e4;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            try {
                inputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            try {
                inputStream.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            if (bufferedOutputStream2 == null) {
                throw th;
            }
            try {
                bufferedOutputStream2.close();
                throw th;
            } catch (IOException e8) {
                e8.printStackTrace();
                throw th;
            }
        }
    }

    public static List<File> C(File file) {
        return D(file, false);
    }

    public static boolean C0(String str, InputStream inputStream) {
        return B0(m10455instanceof(str), inputStream, false);
    }

    public static List<File> D(File file, boolean z) {
        return H(file, new Ctry(), z);
    }

    public static boolean D0(String str, InputStream inputStream, boolean z) {
        return B0(m10455instanceof(str), inputStream, z);
    }

    public static List<File> E(String str) {
        return F(str, false);
    }

    public static boolean E0(File file, String str) {
        return F0(file, str, false);
    }

    public static List<File> F(String str, boolean z) {
        return D(m10455instanceof(str), z);
    }

    public static boolean F0(File file, String str, boolean z) throws Throwable {
        BufferedWriter bufferedWriter;
        if (file == null || str == null || !m10462public(file)) {
            return false;
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file, z));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            bufferedWriter.write(str);
            try {
                bufferedWriter.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return true;
        } catch (IOException e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static List<File> G(File file, FileFilter fileFilter) {
        return H(file, fileFilter, false);
    }

    public static boolean G0(String str, String str2) {
        return F0(m10455instanceof(str), str2, false);
    }

    public static List<File> H(File file, FileFilter fileFilter, boolean z) {
        if (!v(file)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    arrayList.add(file2);
                }
                if (z && file2.isDirectory()) {
                    arrayList.addAll(H(file2, fileFilter, true));
                }
            }
        }
        return arrayList;
    }

    public static boolean H0(String str, String str2, boolean z) {
        return F0(m10455instanceof(str), str2, z);
    }

    public static List<File> I(String str, FileFilter fileFilter) {
        return H(m10455instanceof(str), fileFilter, false);
    }

    public static List<File> J(String str, FileFilter fileFilter, boolean z) {
        return H(m10455instanceof(str), fileFilter, z);
    }

    public static boolean K(File file, File file2) {
        return m10442const(file, file2, true);
    }

    public static boolean L(File file, File file2, OnReplaceListener onReplaceListener) {
        return m10441class(file, file2, onReplaceListener, true);
    }

    public static boolean M(String str, String str2) {
        return K(m10455instanceof(str), m10455instanceof(str2));
    }

    public static boolean N(String str, String str2, OnReplaceListener onReplaceListener) {
        return L(m10455instanceof(str), m10455instanceof(str2), onReplaceListener);
    }

    public static boolean O(File file, File file2) {
        return m10466super(file, file2, true);
    }

    public static boolean P(File file, File file2, OnReplaceListener onReplaceListener) {
        return m10448final(file, file2, onReplaceListener, true);
    }

    public static boolean Q(String str, String str2) {
        return O(m10455instanceof(str), m10455instanceof(str2));
    }

    public static boolean R(String str, String str2, OnReplaceListener onReplaceListener) {
        return P(m10455instanceof(str), m10455instanceof(str2), onReplaceListener);
    }

    public static void S(Context context, File file) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(file), t(file));
        context.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static byte[] T(File file) throws Throwable {
        FileChannel channel;
        FileChannel fileChannel = 0;
        try {
            if (!z(file)) {
                return null;
            }
            try {
                channel = new RandomAccessFile(file, "r").getChannel();
                try {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) channel.size());
                    while (channel.read(byteBufferAllocate) > 0) {
                    }
                    byte[] bArrArray = byteBufferAllocate.array();
                    try {
                        channel.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return bArrArray;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (IOException e4) {
                e = e4;
                channel = null;
            } catch (Throwable th) {
                th = th;
                if (fileChannel != 0) {
                    try {
                        fileChannel.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = file;
        }
    }

    public static byte[] U(String str) {
        return T(m10455instanceof(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] V(File file) throws Throwable {
        FileChannel channel;
        FileChannel fileChannel = null;
        if (!z(file)) {
            return null;
        }
        try {
            channel = new RandomAccessFile(file, "r").getChannel();
            try {
                try {
                    int size = (int) channel.size();
                    byte[] bArr = new byte[size];
                    channel.map(FileChannel.MapMode.READ_ONLY, 0L, size).load().get(bArr, 0, size);
                    try {
                        channel.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return bArr;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileChannel = channel;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            channel = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileChannel != null) {
            }
            throw th;
        }
    }

    public static byte[] W(String str) {
        return V(m10455instanceof(str));
    }

    public static byte[] X(File file) {
        if (!z(file)) {
            return null;
        }
        try {
            return u(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] Y(String str) {
        return X(m10455instanceof(str));
    }

    public static List<String> Z(File file) {
        return b0(file, 0, Integer.MAX_VALUE, null);
    }

    public static String a(String str) {
        return m10468synchronized(m10455instanceof(str));
    }

    public static List<String> a0(File file, int i, int i2) {
        return b0(file, i, i2, null);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m10437abstract(File file, FileFilter fileFilter) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    if (file2.isFile()) {
                        if (!file2.delete()) {
                            return false;
                        }
                    } else if (file2.isDirectory() && !m10471throws(file2)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static String b(File file) {
        return file == null ? "" : c(file.getPath());
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> b0(File file, int i, int i2, String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        if (!z(file) || i > i2) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            int i3 = 1;
            bufferedReader = B(str) ? new BufferedReader(new InputStreamReader(new FileInputStream(file))) : new BufferedReader(new InputStreamReader(new FileInputStream(file), str));
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null && i3 <= i2) {
                            if (i <= i3 && i3 <= i2) {
                                arrayList.add(line);
                            }
                            i3++;
                        }
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            try {
                bufferedReader.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return arrayList;
        } catch (IOException e5) {
            e = e5;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader2 != null) {
            }
            throw th;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m10438break(String str, String str2) {
        return m10446else(m10455instanceof(str), m10455instanceof(str2));
    }

    public static String c(String str) {
        if (B(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || str.lastIndexOf(File.separator) >= iLastIndexOf) ? "" : str.substring(iLastIndexOf + 1);
    }

    public static List<String> c0(File file, String str) {
        return b0(file, 0, Integer.MAX_VALUE, str);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m10439case(String str, String str2, OnReplaceListener onReplaceListener) {
        return m10458new(m10455instanceof(str), m10455instanceof(str2), onReplaceListener);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m10440catch(String str, String str2, OnReplaceListener onReplaceListener) {
        return m10451goto(m10455instanceof(str), m10455instanceof(str2), onReplaceListener);
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m10441class(File file, File file2, OnReplaceListener onReplaceListener, boolean z) {
        if (file == null || file2 == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(file.getPath());
        String str = File.separator;
        sb.append(str);
        String string = sb.toString();
        String str2 = file2.getPath() + str;
        if (str2.contains(string) || !file.exists() || !file.isDirectory()) {
            return false;
        }
        if (file2.exists()) {
            if (onReplaceListener != null && !onReplaceListener.onReplace()) {
                return true;
            }
            if (!m10464static(file2)) {
                return false;
            }
        }
        if (!m10454import(file2)) {
            return false;
        }
        for (File file3 : file.listFiles()) {
            File file4 = new File(str2 + file3.getName());
            if (file3.isFile()) {
                if (!m10448final(file3, file4, onReplaceListener, z)) {
                    return false;
                }
            } else if (file3.isDirectory() && !m10441class(file3, file4, onReplaceListener, z)) {
                return false;
            }
        }
        return !z || m10471throws(file);
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m10442const(File file, File file2, boolean z) {
        return m10441class(file, file2, new Cdo(), z);
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m10443continue(String str, FileFilter fileFilter) {
        return m10437abstract(m10455instanceof(str), fileFilter);
    }

    public static long d(File file) {
        if (file == null) {
            return -1L;
        }
        return file.lastModified();
    }

    public static List<String> d0(String str) {
        return c0(m10455instanceof(str), null);
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m10444default(String str) {
        return m10471throws(m10455instanceof(str));
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: do, reason: not valid java name */
    private static String m10445do(long j) {
        if (j < 0) {
            return "shouldn't be less than zero!";
        }
        if (j < 1024) {
            return String.format("%.3fB", Double.valueOf(j));
        }
        if (j < 1048576) {
            double d = j;
            Double.isNaN(d);
            return String.format("%.3fKB", Double.valueOf(d / 1024.0d));
        }
        if (j < ur.f6966do) {
            double d2 = j;
            Double.isNaN(d2);
            return String.format("%.3fMB", Double.valueOf(d2 / 1048576.0d));
        }
        double d3 = j;
        Double.isNaN(d3);
        return String.format("%.3fGB", Double.valueOf(d3 / 1.073741824E9d));
    }

    public static long e(String str) {
        return d(m10455instanceof(str));
    }

    public static List<String> e0(String str, int i, int i2) {
        return b0(m10455instanceof(str), i, i2, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m10446else(File file, File file2) {
        return m10466super(file, file2, false);
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m10447extends(File file) {
        return file != null && (!file.exists() || (file.isFile() && file.delete()));
    }

    public static long f(File file) {
        if (x(file)) {
            return file.length();
        }
        return -1L;
    }

    public static List<String> f0(String str, int i, int i2, String str2) {
        return b0(m10455instanceof(str), i, i2, str2);
    }

    /* renamed from: final, reason: not valid java name */
    private static boolean m10448final(File file, File file2, OnReplaceListener onReplaceListener, boolean z) {
        if (file != null && file2 != null && !file.equals(file2) && file.exists() && file.isFile()) {
            if (file2.exists()) {
                if (onReplaceListener != null && !onReplaceListener.onReplace()) {
                    return true;
                }
                if (!file2.delete()) {
                    return false;
                }
            }
            if (!m10454import(file2.getParentFile())) {
                return false;
            }
            try {
                if (!B0(file2, new FileInputStream(file), false)) {
                    return false;
                }
                if (z) {
                    if (!m10447extends(file)) {
                        return false;
                    }
                }
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m10449finally(String str) {
        return m10447extends(m10455instanceof(str));
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m10450for(File file, File file2) {
        return m10442const(file, file2, false);
    }

    public static long g(String str) {
        if (str.matches("[a-zA-z]+://[^\\s]*")) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestProperty(pk0.f5041break, "identity");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    return httpURLConnection.getContentLength();
                }
                return -1L;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return f(m10455instanceof(str));
    }

    public static List<String> g0(String str, String str2) {
        return c0(m10455instanceof(str), str2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m10451goto(File file, File file2, OnReplaceListener onReplaceListener) {
        return m10448final(file, file2, onReplaceListener, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0049 -> B:47:0x005e). Please report as a decompilation issue!!! */
    public static int h(File file) throws Throwable {
        BufferedInputStream bufferedInputStream;
        int i = 1;
        ?? r1 = 0;
        r1 = 0;
        r1 = 0;
        try {
            try {
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                } catch (IOException e) {
                    e.printStackTrace();
                    r1 = r1;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            if (!f8751if.endsWith("\n")) {
                while (true) {
                    int i2 = bufferedInputStream.read(bArr, 0, 1024);
                    if (i2 == -1) {
                        break;
                    }
                    for (int i3 = 0; i3 < i2; i3++) {
                        if (bArr[i3] == 13) {
                            i++;
                        }
                    }
                }
            } else {
                while (true) {
                    int i4 = bufferedInputStream.read(bArr, 0, 1024);
                    if (i4 == -1) {
                        break;
                    }
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (bArr[i5] == 10) {
                            i++;
                        }
                    }
                }
            }
            bufferedInputStream.close();
            r1 = bArr;
        } catch (IOException e3) {
            e = e3;
            r1 = bufferedInputStream;
            e.printStackTrace();
            if (r1 != 0) {
                r1.close();
                r1 = r1;
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
            r1 = bufferedInputStream;
            if (r1 != 0) {
                try {
                    r1.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        return i;
    }

    public static String h0(File file) {
        return i0(file, null);
    }

    public static int i(String str) {
        return h(m10455instanceof(str));
    }

    public static String i0(File file, String str) {
        byte[] bArrX = X(file);
        if (bArrX == null) {
            return null;
        }
        if (B(str)) {
            return new String(bArrX);
        }
        try {
            return new String(bArrX, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static String m10452if(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return "";
        }
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = f8750for;
            cArr[i] = cArr2[(bArr[i2] >> 4) & 15];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    /* renamed from: implements, reason: not valid java name */
    public static String m10453implements(String str) {
        return m10472transient(m10455instanceof(str));
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m10454import(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static File m10455instanceof(String str) {
        if (B(str)) {
            return null;
        }
        return new File(str);
    }

    /* renamed from: interface, reason: not valid java name */
    public static String m10456interface(File file) {
        return file == null ? "" : m10461protected(file.getAbsolutePath());
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0048: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:34:0x0048 */
    /* JADX WARN: Removed duplicated region for block: B:46:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] j(File file) throws Throwable {
        DigestInputStream digestInputStream;
        DigestInputStream digestInputStream2;
        DigestInputStream digestInputStream3 = null;
        try {
            if (file == null) {
                return null;
            }
            try {
                digestInputStream2 = new DigestInputStream(new FileInputStream(file), MessageDigest.getInstance("MD5"));
                try {
                    while (digestInputStream2.read(new byte[262144]) > 0) {
                    }
                    byte[] bArrDigest = digestInputStream2.getMessageDigest().digest();
                    try {
                        digestInputStream2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return bArrDigest;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (digestInputStream2 != null) {
                        try {
                            digestInputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                } catch (NoSuchAlgorithmException e4) {
                    e = e4;
                    e.printStackTrace();
                    if (digestInputStream2 != null) {
                    }
                    return null;
                }
            } catch (IOException e5) {
                e = e5;
                digestInputStream2 = null;
                e.printStackTrace();
                if (digestInputStream2 != null) {
                }
                return null;
            } catch (NoSuchAlgorithmException e6) {
                e = e6;
                digestInputStream2 = null;
                e.printStackTrace();
                if (digestInputStream2 != null) {
                }
                return null;
            } catch (Throwable th) {
                th = th;
                if (digestInputStream3 != null) {
                    try {
                        digestInputStream3.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            digestInputStream3 = digestInputStream;
        }
    }

    public static String j0(String str) {
        return i0(m10455instanceof(str), null);
    }

    public static byte[] k(String str) {
        return j(m10455instanceof(str));
    }

    public static String k0(String str, String str2) {
        return i0(m10455instanceof(str), str2);
    }

    public static String l(File file) {
        return m10452if(j(file));
    }

    public static boolean l0(File file, String str) {
        if (file == null || !file.exists() || B(str)) {
            return false;
        }
        if (str.equals(file.getName())) {
            return true;
        }
        File file2 = new File(file.getParent() + File.separator + str);
        return !file2.exists() && file.renameTo(file2);
    }

    public static String m(String str) {
        return l(B(str) ? null : new File(str));
    }

    public static boolean m0(String str, String str2) {
        return l0(m10455instanceof(str), str2);
    }

    public static String n(File file) {
        return file == null ? "" : o(file.getAbsolutePath());
    }

    public static void n0(int i) {
        f8752new = i;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m10457native(String str) {
        return m10454import(m10455instanceof(str));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m10458new(File file, File file2, OnReplaceListener onReplaceListener) {
        return m10441class(file, file2, onReplaceListener, false);
    }

    public static String o(String str) {
        if (B(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(File.separator);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    public static boolean o0(File file, byte[] bArr, boolean z) {
        return p0(file, bArr, false, z);
    }

    public static String p(File file) {
        return file == null ? "" : q(file.getPath());
    }

    public static boolean p0(File file, byte[] bArr, boolean z, boolean z2) {
        if (bArr == null) {
            return false;
        }
        FileChannel channel = null;
        try {
            try {
                channel = new FileOutputStream(file, z).getChannel();
                channel.position(channel.size());
                channel.write(ByteBuffer.wrap(bArr));
                if (z2) {
                    channel.force(true);
                }
                try {
                    channel.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return false;
            }
        } catch (Throwable th) {
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m10459package(File file) {
        return m10437abstract(file, new Cnew());
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m10460private(String str) {
        return m10459package(m10455instanceof(str));
    }

    /* renamed from: protected, reason: not valid java name */
    public static String m10461protected(String str) {
        int iLastIndexOf;
        return (B(str) || (iLastIndexOf = str.lastIndexOf(File.separator)) == -1) ? "" : str.substring(0, iLastIndexOf + 1);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m10462public(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!m10454import(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String q(String str) {
        if (B(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        int iLastIndexOf2 = str.lastIndexOf(File.separator);
        return iLastIndexOf2 == -1 ? iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf) : (iLastIndexOf == -1 || iLastIndexOf2 > iLastIndexOf) ? str.substring(iLastIndexOf2 + 1) : str.substring(iLastIndexOf2 + 1, iLastIndexOf);
    }

    public static boolean q0(String str, byte[] bArr, boolean z) {
        return p0(m10455instanceof(str), bArr, false, z);
    }

    public static String r(File file) {
        long jF = f(file);
        return jF == -1 ? "" : m10445do(jF);
    }

    public static boolean r0(String str, byte[] bArr, boolean z, boolean z2) {
        return p0(m10455instanceof(str), bArr, z, z2);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m10463return(String str) {
        return m10462public(m10455instanceof(str));
    }

    public static String s(String str) {
        long jG = g(str);
        return jG == -1 ? "" : m10445do(jG);
    }

    public static boolean s0(File file, byte[] bArr, boolean z) {
        return t0(file, bArr, false, z);
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m10464static(File file) {
        return m10437abstract(file, new Cfor());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static long m10465strictfp(File file) {
        if (!v(file)) {
            return -1L;
        }
        long jM10465strictfp = 0;
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                jM10465strictfp += file2.isDirectory() ? m10465strictfp(file2) : file2.length();
            }
        }
        return jM10465strictfp;
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m10466super(File file, File file2, boolean z) {
        return m10448final(file, file2, new Cif(), z);
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m10467switch(String str) {
        return m10464static(m10455instanceof(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004e A[RETURN] */
    /* renamed from: synchronized, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m10468synchronized(File file) throws Throwable {
        int i;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            i = (bufferedInputStream.read() << 8) + bufferedInputStream.read();
            try {
                bufferedInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (IOException e3) {
            e = e3;
            bufferedInputStream2 = bufferedInputStream;
            e.printStackTrace();
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            i = 0;
            if (i == 61371) {
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return i == 61371 ? i != 65279 ? i != 65534 ? "GBK" : "Unicode" : mk.f3932new : "UTF-8";
    }

    public static String t(File file) {
        String lowerCase;
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(".");
        String str = "*/*";
        if (iLastIndexOf < 0 || (lowerCase = name.substring(iLastIndexOf, name.length()).toLowerCase()) == "") {
            return "*/*";
        }
        int i = 0;
        while (true) {
            String[][] strArr = f8749do;
            if (i >= strArr.length) {
                return str;
            }
            if (lowerCase.equals(strArr[i][0])) {
                str = strArr[i][1];
            }
            i++;
        }
    }

    public static boolean t0(File file, byte[] bArr, boolean z, boolean z2) {
        if (bArr == null || !m10462public(file)) {
            return false;
        }
        FileChannel channel = null;
        try {
            try {
                channel = new FileOutputStream(file, z).getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, channel.size(), bArr.length);
                map.put(bArr);
                if (z2) {
                    map.force();
                }
                try {
                    channel.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return false;
            }
        } catch (Throwable th) {
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m10469this(File file, String str, String str2) throws IOException {
        if (file != null && !TextUtils.isEmpty(str)) {
            File file2 = new File(str);
            if (file2.exists()) {
                file2.delete();
            } else {
                try {
                    file2.mkdirs();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            File file3 = new File(str.concat(str2));
            if (file3.exists()) {
                file3.delete();
            } else {
                try {
                    file3.createNewFile();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            try {
                FileChannel channel = new FileInputStream(file).getChannel();
                FileChannel channel2 = new FileOutputStream(file3).getChannel();
                channel.transferTo(0L, channel.size(), channel2);
                try {
                    channel.close();
                    channel2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                return true;
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
            } catch (IOException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m10470throw(File file) {
        if (file == null) {
            return false;
        }
        if ((file.exists() && !file.delete()) || !m10454import(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m10471throws(File file) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (!file2.delete()) {
                        return false;
                    }
                } else if (file2.isDirectory() && !m10471throws(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* renamed from: transient, reason: not valid java name */
    public static String m10472transient(File file) {
        long jM10465strictfp = m10465strictfp(file);
        return jM10465strictfp == -1 ? "" : m10445do(jM10465strictfp);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m10473try(String str, String str2) {
        return m10450for(m10455instanceof(str), m10455instanceof(str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] u(InputStream inputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        if (inputStream == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                try {
                    byte[] bArr = new byte[f8752new];
                    while (true) {
                        int i = inputStream.read(bArr, 0, f8752new);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return byteArray;
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                if (byteArrayOutputStream != null) {
                    throw th;
                }
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e7) {
                    e7.printStackTrace();
                    throw th;
                }
            }
        } catch (IOException e8) {
            e = e8;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
            inputStream.close();
            if (byteArrayOutputStream != null) {
            }
        }
    }

    public static boolean u0(String str, byte[] bArr, boolean z) {
        return v0(str, bArr, false, z);
    }

    public static boolean v(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    public static boolean v0(String str, byte[] bArr, boolean z, boolean z2) {
        return t0(m10455instanceof(str), bArr, z, z2);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static long m10474volatile(String str) {
        return m10465strictfp(m10455instanceof(str));
    }

    public static boolean w(String str) {
        return v(m10455instanceof(str));
    }

    public static boolean w0(File file, byte[] bArr) {
        return x0(file, bArr, false);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m10475while(String str) {
        return m10470throw(m10455instanceof(str));
    }

    public static boolean x(File file) {
        return file != null && file.exists() && file.isFile();
    }

    public static boolean x0(File file, byte[] bArr, boolean z) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        if (bArr == null || !m10462public(file)) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedOutputStream.write(bArr);
            try {
                bufferedOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return true;
        } catch (IOException e3) {
            e = e3;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean y(String str) {
        return x(m10455instanceof(str));
    }

    public static boolean y0(String str, byte[] bArr) {
        return x0(m10455instanceof(str), bArr, false);
    }

    public static boolean z(File file) {
        return file != null && file.exists();
    }

    public static boolean z0(String str, byte[] bArr, boolean z) {
        return x0(m10455instanceof(str), bArr, z);
    }
}
