package com.uc.crashsdk;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StatFs;
import android.os.StrictMode;
import android.support.v4.cs1;
import android.support.v4.l80;
import android.support.v4.on0;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.scwang.smartrefresh.header.TaurusHeader;
import com.uc.crashsdk.a.h;
import com.uc.crashsdk.export.LogType;
import freemarker.core.k;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.Cdo;

/* loaded from: classes2.dex */
public class e implements Thread.UncaughtExceptionHandler {
    private static long b;
    private static String i;
    private final List<FileInputStream> e = new ArrayList();
    public static final /* synthetic */ boolean a = true;
    private static final AtomicBoolean c = new AtomicBoolean(false);
    private static boolean d = false;
    private static long f = 0;
    private static long g = -1;
    private static boolean h = true;
    private static String j = "";
    private static String k = null;
    private static String l = null;
    private static String m = null;
    private static final Object n = new Object();
    private static final Object o = new Object();
    private static final Object p = new Object();
    private static final Object q = new Object();
    private static final ArrayList<String> r = new ArrayList<>();
    private static int s = 0;
    private static String t = null;
    private static boolean u = false;
    private static String v = null;
    private static String w = null;
    private static final Object x = new Object();
    private static final Object y = new Object();
    private static Map<String, Integer> z = null;
    private static String A = null;
    private static int B = -1;
    private static int C = -1;
    private static int D = -1;
    private static int E = -1;
    private static int F = -1;
    private static int G = -1;
    private static int H = -1;
    private static String I = "?";

    /* renamed from: J, reason: collision with root package name */
    private static boolean f36261J = false;
    private static boolean K = false;
    private static int L = 0;
    private static int M = 0;
    private static boolean N = false;
    private static com.uc.crashsdk.a.e O = new com.uc.crashsdk.a.e(l80.f3574this);
    private static c P = new c(0);
    private static boolean Q = false;
    private static final com.uc.crashsdk.a.e R = new com.uc.crashsdk.a.e(412);
    private static Thread.UncaughtExceptionHandler S = null;
    private static Throwable T = null;
    private static boolean U = false;
    private static boolean V = false;
    private static Runnable W = null;
    private static final Object X = new Object();
    private static int Y = 101;
    private static Runnable Z = new com.uc.crashsdk.a.e(407);
    private static final Object aa = new Object();
    private static volatile boolean ab = false;
    private static ParcelFileDescriptor ac = null;
    private static boolean ad = false;
    private static boolean ae = false;

    public static class b implements Comparator<File> {
        private b() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            File file3 = file;
            File file4 = file2;
            if (file3.lastModified() > file4.lastModified()) {
                return 1;
            }
            return file3.lastModified() < file4.lastModified() ? -1 : 0;
        }

        public /* synthetic */ b(byte b) {
            this();
        }
    }

    public static class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!"android.intent.action.BATTERY_CHANGED".equals(action)) {
                if ("android.intent.action.BATTERY_LOW".equals(action) || "android.intent.action.BATTERY_OKAY".equals(action)) {
                    boolean unused = e.f36261J = "android.intent.action.BATTERY_LOW".equals(action);
                    e.K();
                    return;
                } else {
                    if ("android.intent.action.ANR".equals(action)) {
                        try {
                            e.d(context);
                            return;
                        } catch (Throwable th) {
                            com.uc.crashsdk.a.g.a(th);
                            return;
                        }
                    }
                    return;
                }
            }
            int unused2 = e.B = intent.getIntExtra("level", -1);
            int unused3 = e.C = intent.getIntExtra("scale", -1);
            int unused4 = e.D = intent.getIntExtra("voltage", -1);
            int unused5 = e.E = intent.getIntExtra("health", -1);
            int unused6 = e.F = intent.getIntExtra("plugged", -1);
            int unused7 = e.G = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
            int unused8 = e.H = intent.getIntExtra("temperature", -1);
            String unused9 = e.I = intent.getStringExtra("technology");
            if (e.J() >= 2) {
                e.K();
                e.L();
            }
        }

        public /* synthetic */ c(byte b) {
            this();
        }
    }

    public e() {
        try {
            M();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void A() {
        if (g.q()) {
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(403), 10000L);
        }
    }

    public static void B() {
        if (ab || com.uc.crashsdk.b.L()) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(408), 1000L);
    }

    public static void C() {
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(l80.f3561break), 7000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void D() {
        int iL = g.L();
        boolean z2 = true;
        boolean z3 = false;
        if (iL == 0 || iL == 3 || iL == 4) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21 && i2 <= 25) {
                boolean z4 = iL != 0;
                if (iL == 3) {
                    z4 = System.currentTimeMillis() % 10 == 0;
                }
                if (iL != 4) {
                    z2 = z4;
                } else if (System.currentTimeMillis() % 3 != 0) {
                    z2 = false;
                }
            }
        } else if (iL == 1) {
        }
        if (!z2) {
            com.uc.crashsdk.a.a.a("crashsdk", "SIG 3 is disabled by settings");
        }
        boolean zL = com.uc.crashsdk.b.L();
        if (Looper.getMainLooper() == Looper.myLooper() || !z2) {
            z3 = z2;
        } else {
            com.uc.crashsdk.a.f.a(2, new com.uc.crashsdk.a.e(413));
        }
        JNIBridge.nativeCmd(7, zL ? 1L : 0L, null, null);
        if (z3) {
            JNIBridge.cmd(8);
        }
    }

    public static ParcelFileDescriptor E() {
        if (!com.uc.crashsdk.b.d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return null;
        }
        ParcelFileDescriptor parcelFileDescriptor = ac;
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor;
        }
        int iCmd = (int) JNIBridge.cmd(14);
        if (iCmd == -1) {
            return null;
        }
        ParcelFileDescriptor parcelFileDescriptorAdoptFd = ParcelFileDescriptor.adoptFd(iCmd);
        ac = parcelFileDescriptorAdoptFd;
        ad = true;
        return parcelFileDescriptorAdoptFd;
    }

    public static boolean F() {
        return ae;
    }

    public static void G() {
        String strV = g.V();
        File file = new File(strV);
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                com.uc.crashsdk.a.a.b("Ucebu can not list folder: " + strV);
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && file2.getName().contains("ucebu")) {
                    a(false, false);
                    return;
                }
            }
        }
    }

    public static /* synthetic */ int J() {
        int i2 = L + 1;
        L = i2;
        return i2;
    }

    public static /* synthetic */ void K() {
        StringBuilder sbY;
        if (com.uc.crashsdk.b.d && (sbY = Y()) != null) {
            JNIBridge.set(125, sbY.toString());
        }
        K = true;
        Z();
    }

    public static /* synthetic */ int L() {
        L = 0;
        return 0;
    }

    private void M() {
        int iG = g.G();
        for (int i2 = 0; i2 < iG; i2++) {
            try {
                this.e.add(new FileInputStream("/dev/null"));
            } catch (Exception e) {
                com.uc.crashsdk.a.g.a(e);
                return;
            }
        }
    }

    private void N() {
        Iterator<FileInputStream> it = this.e.iterator();
        while (it.hasNext()) {
            com.uc.crashsdk.a.g.a(it.next());
        }
        this.e.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean O() {
        if (g.N()) {
            return true;
        }
        return a();
    }

    private static String P() {
        return g.e() + "_";
    }

    private static String Q() {
        return com.uc.crashsdk.b.B() ? "fg" : "bg";
    }

    private static byte[] R() {
        byte[] bArr = null;
        int i2 = 1024;
        while (bArr == null && i2 > 0) {
            try {
                bArr = new byte[i2];
            } catch (Throwable unused) {
                i2 /= 2;
                if (i2 < 16) {
                    break;
                }
            }
        }
        return bArr;
    }

    private static String S() {
        return (!com.uc.crashsdk.b.F() || d) ? LogType.JAVA_TYPE : "ucebujava";
    }

    private static void T() {
        String strTrim;
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        String strTrim2 = "-";
        try {
            strTrim = Build.HARDWARE;
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            strTrim = "-";
        }
        try {
            fileReader = new FileReader(new File("/proc/cpuinfo"));
            try {
                bufferedReader = new BufferedReader(fileReader, 512);
                int i2 = 0;
                do {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.startsWith("Hardware")) {
                            strTrim = line.substring(line.indexOf(":") + 1).trim();
                        } else if (line.startsWith("Processor")) {
                            strTrim2 = line.substring(line.indexOf(":") + 1).trim();
                        }
                        i2++;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            com.uc.crashsdk.a.g.a(th);
                            com.uc.crashsdk.a.g.a(fileReader);
                            com.uc.crashsdk.a.g.a(bufferedReader);
                            k = strTrim;
                            l = strTrim2;
                        } catch (Throwable th4) {
                            com.uc.crashsdk.a.g.a(fileReader);
                            com.uc.crashsdk.a.g.a(bufferedReader);
                            throw th4;
                        }
                    }
                } while (i2 < 2);
                com.uc.crashsdk.a.g.a(fileReader);
            } catch (Throwable th5) {
                bufferedReader = null;
                th = th5;
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            fileReader = null;
        }
        com.uc.crashsdk.a.g.a(bufferedReader);
        k = strTrim;
        l = strTrim2;
    }

    private static String U() {
        return g.U() + "bytes";
    }

    private static boolean V() {
        return Build.VERSION.SDK_INT < 29;
    }

    private static void W() {
        if (N || com.uc.crashsdk.b.F() || com.uc.crashsdk.b.L()) {
            return;
        }
        JNIBridge.cmd(18);
    }

    private static void X() {
        com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(414), 1000L);
    }

    private static StringBuilder Y() {
        String str;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("level: ");
            sb.append(B);
            sb.append("\n");
            sb.append("scale: ");
            sb.append(C);
            sb.append("\n");
            switch (E) {
                case 1:
                    str = " (Unknown)";
                    break;
                case 2:
                    str = " (Good)";
                    break;
                case 3:
                    str = " (Overheat)";
                    break;
                case 4:
                    str = " (Dead)";
                    break;
                case 5:
                    str = " (Over voltage)";
                    break;
                case 6:
                    str = " (Unspecified failure)";
                    break;
                case 7:
                    str = " (Cold)";
                    break;
                default:
                    str = " (?)";
                    break;
            }
            sb.append("health: ");
            sb.append(E);
            sb.append(str);
            sb.append("\n");
            int i2 = F;
            String str2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 4 ? " (?)" : " (Wireless)" : " (USB port)" : " (AC charger)" : " (None)";
            sb.append("pluged: ");
            sb.append(F);
            sb.append(str2);
            sb.append("\n");
            int i3 = G;
            String str3 = i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? i3 != 5 ? " (?)" : " (Full)" : " (Not charging)" : " (Discharging)" : " (Charging)" : " (Unknown)";
            sb.append("status: ");
            sb.append(G);
            sb.append(str3);
            sb.append("\n");
            sb.append("voltage: ");
            sb.append(D);
            sb.append("\n");
            sb.append("temperature: ");
            sb.append(H);
            sb.append("\n");
            sb.append("technology: ");
            sb.append(I);
            sb.append("\n");
            sb.append("battery low: ");
            sb.append(f36261J);
            sb.append("\n");
            return sb;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return null;
        }
    }

    private static void Z() {
        if (com.uc.crashsdk.b.c && K && com.uc.crashsdk.a.c) {
            K = false;
            if (com.uc.crashsdk.a.f.b(O)) {
                return;
            }
            com.uc.crashsdk.a.f.a(0, O, 2000L);
        }
    }

    public static boolean a() {
        if (f == 0) {
            f = 2L;
            if (h(com.uc.crashsdk.b.b("logs")) == 1) {
                f = 1L;
            }
        }
        return f == 1;
    }

    private static boolean aa() {
        return com.uc.crashsdk.b.d && JNIBridge.nativeIsCrashing();
    }

    private static void ab() {
        String strW = g.W();
        File file = new File(strW);
        if (file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length > 150) {
                    Arrays.sort(fileArrListFiles, new b((byte) 0));
                    int length = fileArrListFiles.length - 150;
                    int i2 = length < 0 ? 0 : length;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (i3 < fileArrListFiles.length) {
                        File file2 = fileArrListFiles[i3];
                        boolean z2 = i3 < i2;
                        if (!z2 && jCurrentTimeMillis - file2.lastModified() >= 432000000) {
                            z2 = true;
                        }
                        if (!z2) {
                            break;
                        }
                        try {
                            file2.delete();
                            i4++;
                            i5 = 0;
                        } catch (Throwable th) {
                            i5++;
                            com.uc.crashsdk.a.g.a(th);
                        }
                        if (i5 >= 3) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    com.uc.crashsdk.a.a.a("Removed " + i4 + " logs in " + strW);
                }
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
    }

    public static long b() {
        if (g == -1) {
            g = h(com.uc.crashsdk.b.b("local"));
        }
        return g;
    }

    private static String j(String str) {
        if (str == null) {
            str = String.valueOf(System.currentTimeMillis()) + new Random().nextInt(65536);
        }
        return String.format(Locale.US, "%s%s_%s_%s_%s_%s_", P(), g.R(), g.T(), i(Build.MODEL), i(Build.VERSION.RELEASE), str);
    }

    private static String k(String str) {
        return String.format(Locale.US, "%s%s_%s_%s.log", d(), n(), Q(), str);
    }

    private static String l(String str) {
        if (!com.uc.crashsdk.a.g.b(str)) {
            return "";
        }
        int iIndexOf = str.indexOf(0);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.trim();
    }

    private static String m(String str) {
        String strA = com.uc.crashsdk.a.b.a(str, g.w(), g.v());
        if (!str.equals(strA)) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
        return strA;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean[] n(String str) {
        boolean zV = g.v();
        boolean zX = g.x();
        if (zV || zX) {
            if (str.endsWith(".tmp") || str.contains(".ec")) {
                zV = false;
                zX = false;
            } else {
                int iLastIndexOf = str.lastIndexOf(File.separatorChar);
                if (iLastIndexOf < 0) {
                    iLastIndexOf = 0;
                }
                int i2 = 0;
                do {
                    iLastIndexOf = str.indexOf(95, iLastIndexOf);
                    if (iLastIndexOf >= 0) {
                        i2++;
                        iLastIndexOf++;
                    }
                } while (iLastIndexOf >= 0);
                if (i2 == 8) {
                    String strW = g.w();
                    if (str.endsWith(".log")) {
                        if (com.uc.crashsdk.a.g.a(strW) || str.indexOf(".log", str.lastIndexOf(95)) != str.lastIndexOf(".log")) {
                        }
                    } else if (com.uc.crashsdk.a.g.a(strW) || !str.endsWith(strW)) {
                    }
                    zV = false;
                }
            }
        }
        return new boolean[]{zV, zX};
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean o(String str) {
        boolean z2;
        boolean z3;
        FileWriter fileWriter;
        int i2;
        synchronized (q) {
            File file = new File(g.U() + "customlog");
            String strA = com.uc.crashsdk.a.g.a(file, 1024, false);
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringBuffer stringBuffer = new StringBuffer();
            if (strA != null) {
                stringBuffer.append(strA);
                Matcher matcher = Pattern.compile("([^\\n\\r\\t\\s]+) (\\d+) (\\d+)").matcher(stringBuffer);
                for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
                    if (str.equals(matcher.group(1))) {
                        long j2 = Long.parseLong(matcher.group(2));
                        if (jCurrentTimeMillis - j2 < 86400000) {
                            try {
                                i2 = Integer.parseInt(matcher.group(3));
                            } catch (Exception e) {
                                com.uc.crashsdk.a.g.a(e);
                            }
                            int iD = g.D();
                            z3 = iD < 0 && i2 >= iD;
                            stringBuffer.replace(matcher.start(), matcher.end(), String.format(Locale.US, "%s %d %d", str, Long.valueOf(j2), Integer.valueOf(i2 + 1)));
                            z2 = true;
                        } else {
                            j2 = jCurrentTimeMillis;
                        }
                        i2 = 0;
                        int iD2 = g.D();
                        if (iD2 < 0) {
                            stringBuffer.replace(matcher.start(), matcher.end(), String.format(Locale.US, "%s %d %d", str, Long.valueOf(j2), Integer.valueOf(i2 + 1)));
                            z2 = true;
                        }
                    }
                }
                z2 = false;
                z3 = false;
            } else {
                z2 = false;
                z3 = false;
            }
            if (!z2) {
                stringBuffer.append(String.format(Locale.US, "%s %d 1\n", str, Long.valueOf(jCurrentTimeMillis)));
            }
            FileWriter fileWriter2 = null;
            try {
                try {
                    fileWriter = new FileWriter(file);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                String string = stringBuffer.toString();
                fileWriter.write(string, 0, string.length());
                com.uc.crashsdk.a.g.a(fileWriter);
            } catch (Exception e3) {
                e = e3;
                fileWriter2 = fileWriter;
                com.uc.crashsdk.a.g.a(e);
                com.uc.crashsdk.a.g.a(fileWriter2);
                return z3;
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                com.uc.crashsdk.a.g.a(fileWriter2);
                throw th;
            }
        }
        return z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ae A[Catch: all -> 0x0106, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:49:0x00d3, B:56:0x00ee, B:52:0x00de, B:63:0x00fa, B:66:0x0104, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:73:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean p(String str) {
        boolean z2;
        int iIntValue;
        Integer num;
        synchronized (y) {
            z2 = false;
            if (z == null) {
                z = q(com.uc.crashsdk.a.g.a(com.uc.crashsdk.b.l(), "all:1", false));
            }
            if (z.containsKey("all")) {
                num = z.get("all");
            } else if (z.containsKey(str)) {
                num = z.get(str);
            } else {
                boolean z3 = LogType.JAVA_TYPE.equals(str) || LogType.NATIVE_TYPE.equals(str) || LogType.ANR_TYPE.equals(str) || LogType.UNEXP_TYPE.equals(str);
                if (z3 && z.containsKey("crash")) {
                    num = z.get("crash");
                } else if (!z3 && z.containsKey("nocrash")) {
                    num = z.get("nocrash");
                } else if (z.containsKey("other")) {
                    num = z.get("other");
                } else {
                    iIntValue = 1;
                    if (iIntValue != 0) {
                        long j2 = iIntValue;
                        if (j2 < 0) {
                            long j3 = 30;
                            if (j2 == -2) {
                                j3 = 7;
                            } else if (j2 == -3) {
                                j3 = 15;
                            } else if (j2 == -4) {
                                j3 = 60;
                            }
                            long jB = com.uc.crashsdk.a.b();
                            long jCurrentTimeMillis = jB == 0 ? -1L : (System.currentTimeMillis() - jB) / 86400000;
                            j2 = jCurrentTimeMillis <= j3 ? 1L : jCurrentTimeMillis - j3;
                        }
                        if (j2 == 1 || j2 <= 0 || System.currentTimeMillis() % j2 == 0) {
                            z2 = true;
                        }
                    }
                }
            }
            iIntValue = num.intValue();
            if (iIntValue != 0) {
            }
        }
        return z2;
    }

    private static Map<String, Integer> q(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("\\|", 30)) {
            String[] strArrSplit = str2.split(":", 3);
            if (strArrSplit.length == 2) {
                String strTrim = strArrSplit[0].trim();
                if (!com.uc.crashsdk.a.g.a(strTrim)) {
                    int i2 = 1;
                    try {
                        i2 = Integer.parseInt(strArrSplit[1].trim(), 10);
                    } catch (Throwable th) {
                        com.uc.crashsdk.a.g.a(th);
                    }
                    map.put(strTrim, Integer.valueOf(i2));
                }
            }
        }
        return map;
    }

    private static void r(String str) {
        if (g.q()) {
            try {
                ab();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                File file = new File(g.W());
                if (!file.exists()) {
                    file.mkdirs();
                }
                com.uc.crashsdk.a.a.a("crashsdk", "copy log to: " + file);
                com.uc.crashsdk.a.g.a(new File(str), file);
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
    }

    private static String s(String str) {
        return String.format("$^%s^$", str);
    }

    public static void t() {
        Thread.setDefaultUncaughtExceptionHandler(S);
    }

    public static boolean u() {
        return c.get() || aa();
    }

    public static Throwable v() {
        return T;
    }

    public static int w() {
        if (com.uc.crashsdk.b.I() == 5) {
            return Y;
        }
        return 100;
    }

    public static void x() {
        long jO = g.o();
        if (jO < 0) {
            return;
        }
        boolean z2 = com.uc.crashsdk.b.I() == 5;
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(401));
        if (z2) {
            com.uc.crashsdk.a.e eVar = new com.uc.crashsdk.a.e(TypedValues.Cycle.TYPE_VISIBILITY);
            W = eVar;
            com.uc.crashsdk.a.f.a(0, eVar, jO);
        }
    }

    public static void y() {
        if (com.uc.crashsdk.b.c && com.uc.crashsdk.a.c && !com.uc.crashsdk.a.f.b(Z)) {
            com.uc.crashsdk.a.f.a(0, Z, 1000L);
        }
    }

    public static boolean z() {
        synchronized (X) {
            Runnable runnable = W;
            if (runnable == null || V) {
                return false;
            }
            com.uc.crashsdk.a.f.a(runnable);
            W = null;
            return true;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(thread, th, false);
    }

    public static String d() {
        String str = i;
        if (str != null) {
            return str;
        }
        String strJ = j(null);
        i = strJ;
        return strJ;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:39|(2:71|40)|48|65|49|(1:53)|54|(1:58)|62|63) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0142, code lost:
    
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x00d1, TRY_LEAVE, TryCatch #1 {all -> 0x00d1, blocks: (B:37:0x0098, B:39:0x00ad), top: B:67:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00de A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:49:0x00d8, B:51:0x00de, B:53:0x00e6, B:54:0x010c, B:56:0x0112, B:58:0x011a), top: B:65:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0112 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:49:0x00d8, B:51:0x00de, B:53:0x00e6, B:54:0x010c, B:56:0x0112, B:58:0x011a), top: B:65:0x00d8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String e() {
        String str;
        String str2;
        boolean z2;
        String str3;
        String str4;
        Method declaredMethod;
        if (!com.uc.crashsdk.a.g.a(j)) {
            return j;
        }
        String str5 = null;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                Field declaredField = Build.class.getDeclaredField("SUPPORTED_ABIS");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                if (obj != null && (obj instanceof String[])) {
                    String[] strArr = (String[]) obj;
                    StringBuilder sb = new StringBuilder();
                    int length = strArr.length;
                    int i2 = 0;
                    boolean z3 = true;
                    while (i2 < length) {
                        String str6 = strArr[i2];
                        if (!z3) {
                            sb.append(",");
                        }
                        sb.append(str6);
                        i2++;
                        z3 = false;
                    }
                    j = sb.toString();
                }
            }
        } catch (Throwable unused) {
        }
        if (com.uc.crashsdk.a.g.a(j)) {
            try {
                str = Build.CPU_ABI;
            } catch (Throwable unused2) {
                str = null;
            }
            try {
                str2 = Build.CPU_ABI2;
            } catch (Throwable unused3) {
                str2 = null;
                z2 = !com.uc.crashsdk.a.g.a(str);
                if (z2) {
                }
                if (!com.uc.crashsdk.a.g.a(str2)) {
                }
                declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
                if (declaredMethod != null) {
                }
            }
            z2 = !com.uc.crashsdk.a.g.a(str);
            if (z2) {
                j = str;
            }
            if (!com.uc.crashsdk.a.g.a(str2)) {
                if (z2) {
                    j += ",";
                    j += str2;
                } else {
                    j = str2;
                }
            }
        }
        try {
            declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
        } catch (Throwable th) {
            th = th;
            str3 = null;
        }
        if (declaredMethod != null) {
            str4 = null;
            if (!com.uc.crashsdk.a.g.a(str5)) {
                j += ",";
                j += str5;
            }
            if (!com.uc.crashsdk.a.g.a(str4)) {
                j += ",";
                j += str4;
            }
            return j;
        }
        declaredMethod.setAccessible(true);
        str3 = (String) declaredMethod.invoke(null, "ro.product.cpu.abi", null);
        try {
            str4 = (String) declaredMethod.invoke(null, "ro.product.cpu.abi2", null);
        } catch (Throwable th2) {
            th = th2;
            com.uc.crashsdk.a.g.a(th);
            str4 = null;
            str5 = str3;
            if (!com.uc.crashsdk.a.g.a(str5)) {
            }
            if (!com.uc.crashsdk.a.g.a(str4)) {
            }
            return j;
        }
        str5 = str3;
        if (!com.uc.crashsdk.a.g.a(str5) && !j.contains(str5)) {
            j += ",";
            j += str5;
        }
        if (!com.uc.crashsdk.a.g.a(str4) && !j.contains(str4)) {
            j += ",";
            j += str4;
        }
        return j;
    }

    public static String f() {
        if (com.uc.crashsdk.a.g.a(k)) {
            T();
        }
        return k;
    }

    private static long h(String str) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getLong", String.class, Long.TYPE);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                return ((Long) declaredMethod.invoke(null, str, 0L)).longValue();
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return 0L;
    }

    private static String i(String str) {
        try {
            return str.replaceAll("[^0-9a-zA-Z-.]", "-");
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static void s() {
        S = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new e());
    }

    public static void c() {
        i = null;
    }

    public static boolean i() {
        return d;
    }

    public static boolean b(int i2, Object[] objArr) {
        if (i2 == 451) {
            if (a || objArr != null) {
                return a((String) objArr[0], (d) objArr[1]);
            }
            throw new AssertionError();
        }
        if (i2 != 452) {
            if (a) {
                return false;
            }
            throw new AssertionError();
        }
        if (!a && objArr == null) {
            throw new AssertionError();
        }
        String str = (String) objArr[0];
        d dVar = (d) objArr[1];
        return com.uc.crashsdk.a.g.a(new File(str), String.format(Locale.US, "%d %d %d %d", Long.valueOf(dVar.a), Long.valueOf(dVar.b), Integer.valueOf(dVar.c), Integer.valueOf(dVar.d)).getBytes());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006e A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:24:0x004d, B:26:0x0065, B:28:0x006b, B:30:0x006e, B:32:0x0076), top: B:38:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void c(OutputStream outputStream) {
        HashSet hashSet;
        Throwable th;
        File file;
        File[] fileArrListFiles;
        try {
            outputStream.write("disk info:\n".getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        if (ae) {
            h = false;
            try {
                outputStream.write(s("FSSTAT").getBytes("UTF-8"));
            } catch (Throwable th3) {
                a(th3, outputStream);
            }
            h = true;
        } else {
            try {
                hashSet = new HashSet();
                try {
                    a(outputStream, a(new File(com.uc.crashsdk.a.g.b())), hashSet);
                } catch (Throwable th4) {
                    th = th4;
                    a(th, outputStream);
                    a(outputStream, a(Environment.getExternalStorageDirectory()), hashSet);
                    file = new File("/storage");
                    if (file.exists()) {
                        while (i < r3) {
                        }
                    }
                    a(outputStream);
                }
            } catch (Throwable th5) {
                hashSet = null;
                th = th5;
            }
            try {
                a(outputStream, a(Environment.getExternalStorageDirectory()), hashSet);
                file = new File("/storage");
                if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                    for (File file2 : fileArrListFiles) {
                        if (file2.isDirectory()) {
                            a(outputStream, a(file2), hashSet);
                        }
                    }
                }
            } catch (Throwable th6) {
                a(th6, outputStream);
            }
        }
        a(outputStream);
    }

    public static String g() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("JavaMax:    ");
            sb.append(Runtime.getRuntime().maxMemory() / 1024);
            sb.append(" kB\n");
            sb.append("JavaTotal:  ");
            sb.append(Runtime.getRuntime().totalMemory() / 1024);
            sb.append(" kB\n");
            sb.append("JavaFree:   ");
            sb.append(Runtime.getRuntime().freeMemory() / 1024);
            sb.append(" kB\n");
            sb.append("NativeHeap: ");
            sb.append(Debug.getNativeHeapSize() / 1024);
            sb.append(" kB\n");
            sb.append("NativeAllocated: ");
            sb.append(Debug.getNativeHeapAllocatedSize() / 1024);
            sb.append(" kB\n");
            sb.append("NativeFree: ");
            sb.append(Debug.getNativeHeapFreeSize() / 1024);
            sb.append(" kB\n");
            try {
                ActivityManager activityManager = (ActivityManager) com.uc.crashsdk.a.g.a().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                if (activityManager != null) {
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    sb.append("availMem:   ");
                    sb.append(memoryInfo.availMem / 1024);
                    sb.append(" kB\n");
                    sb.append("threshold:  ");
                    sb.append(memoryInfo.threshold / 1024);
                    sb.append(" kB\n");
                    sb.append("lowMemory:  ");
                    sb.append(memoryInfo.lowMemory);
                    sb.append("\n");
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            return sb.toString();
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            return "";
        }
    }

    private static void d(OutputStream outputStream) {
        if (com.uc.crashsdk.b.d) {
            String strO = com.uc.crashsdk.b.o();
            h = false;
            if (1 == JNIBridge.cmd(17, strO)) {
                File file = new File(strO);
                try {
                    byte[] bArrE = com.uc.crashsdk.a.g.e(file);
                    if (bArrE != null) {
                        outputStream.write(bArrE);
                    }
                } catch (Throwable th) {
                    a(th, outputStream);
                }
                try {
                    file.delete();
                } catch (Throwable th2) {
                    a(th2, outputStream);
                }
                h = true;
                a(outputStream);
            }
            h = true;
            return;
        }
        File[] fileArrListFiles = null;
        int iH = TypedValues.Custom.TYPE_INT;
        try {
            iH = g.H();
            fileArrListFiles = new File("/proc/self/fd").listFiles();
            if (fileArrListFiles != null) {
                outputStream.write(String.format(Locale.US, "opened file count: %d, write limit: %d.\n", Integer.valueOf(fileArrListFiles.length), Integer.valueOf(iH)).getBytes("UTF-8"));
            } else {
                outputStream.write("[DEBUG] listFiles failed!\n".getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        if (fileArrListFiles != null) {
            try {
                if (fileArrListFiles.length >= iH) {
                    outputStream.write("opened files:\n".getBytes("UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    try {
                        for (File file2 : fileArrListFiles) {
                            sb.append(file2.getName());
                            sb.append(" -> ");
                            sb.append(file2.getCanonicalPath());
                            sb.append("\n");
                        }
                    } catch (Throwable th4) {
                        a(th4, outputStream);
                    }
                    outputStream.write(sb.toString().getBytes("UTF-8"));
                }
            } catch (Throwable th5) {
                a(th5, outputStream);
            }
        }
        a(outputStream);
    }

    private static void f(OutputStream outputStream) {
        BufferedReader bufferedReader;
        int iIndexOf;
        if (com.uc.crashsdk.b.d) {
            try {
                outputStream.write("solib build id:\n".getBytes("UTF-8"));
            } catch (Throwable th) {
                a(th, outputStream);
            }
            FileReader fileReader = null;
            try {
                ArrayList arrayList = new ArrayList();
                FileReader fileReader2 = new FileReader(new File("/proc/self/maps"));
                try {
                    bufferedReader = new BufferedReader(fileReader2, 512);
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            if (line.endsWith(".so") && (iIndexOf = line.indexOf(47)) != -1) {
                                String strSubstring = line.substring(iIndexOf);
                                if ((strSubstring.contains("/data/") || strSubstring.contains(com.uc.crashsdk.a.a)) && !arrayList.contains(strSubstring)) {
                                    arrayList.add(strSubstring);
                                    if (ae) {
                                        try {
                                            outputStream.write((String.format("$^%s`%s^$", "SOBUILDID", strSubstring) + "\n").getBytes("UTF-8"));
                                        } catch (Throwable th2) {
                                            a(th2, outputStream);
                                        }
                                    } else {
                                        outputStream.write(String.format(Locale.US, "%s: %s\n", strSubstring, JNIBridge.nativeGet(3, 0L, strSubstring)).getBytes("UTF-8"));
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileReader = fileReader2;
                            try {
                                a(th, outputStream);
                                com.uc.crashsdk.a.g.a(fileReader);
                                com.uc.crashsdk.a.g.a(bufferedReader);
                                a(outputStream);
                            } catch (Throwable th4) {
                                com.uc.crashsdk.a.g.a(fileReader);
                                com.uc.crashsdk.a.g.a(bufferedReader);
                                throw th4;
                            }
                        }
                    }
                    com.uc.crashsdk.a.g.a(fileReader2);
                } catch (Throwable th5) {
                    th = th5;
                    bufferedReader = null;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedReader = null;
            }
            com.uc.crashsdk.a.g.a(bufferedReader);
            a(outputStream);
        }
    }

    public static String k() {
        String strA = w;
        if (com.uc.crashsdk.a.g.a(strA)) {
            synchronized (x) {
                strA = com.uc.crashsdk.a.g.a(com.uc.crashsdk.b.i(), g.P() ? "https://errlogos.umeng.com/upload" : "https://errlog.umeng.com/upload", true);
                w = strA;
            }
        }
        return strA;
    }

    public static void l() {
        synchronized (x) {
            w = null;
        }
    }

    public static void a(int i2, Object[] objArr) {
        int i3;
        switch (i2) {
            case 401:
                JNIBridge.nativeCmd(10, com.uc.crashsdk.b.I() == 5 ? 1L : 0L, null, null);
                com.uc.crashsdk.a.c = true;
                com.uc.crashsdk.a.a(false);
                K = true;
                Z();
                y();
                return;
            case TypedValues.Cycle.TYPE_VISIBILITY /* 402 */:
                Object obj = X;
                synchronized (obj) {
                    if (W == null) {
                        return;
                    }
                    V = true;
                    if (com.uc.crashsdk.b.q()) {
                        return;
                    }
                    if (!com.uc.crashsdk.a.d.e()) {
                        com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
                        return;
                    }
                    if (!d(LogType.UNEXP_TYPE)) {
                        com.uc.crashsdk.a.a.d("DEBUG", "unexp sample miss");
                        return;
                    }
                    int iNativeGenerateUnexpLog = JNIBridge.nativeGenerateUnexpLog(g.o(), g.p());
                    if (iNativeGenerateUnexpLog != 0) {
                        f.a(11);
                        if ((iNativeGenerateUnexpLog & 4352) != 0) {
                            Y = 105;
                            i3 = 30;
                        } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_EXIT) != 0) {
                            Y = 104;
                            i3 = 31;
                        } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_RESTART) != 0) {
                            Y = 106;
                            i3 = 32;
                        } else {
                            if ((iNativeGenerateUnexpLog & LogType.UNEXP_ANR) != 0) {
                                Y = 103;
                                f.a(10);
                            } else if ((iNativeGenerateUnexpLog & LogType.UNEXP_LOW_MEMORY) != 0) {
                                Y = 107;
                                f.a(29);
                            } else {
                                Y = 102;
                            }
                            a(true);
                        }
                        f.a(i3);
                        a(true);
                    }
                    synchronized (obj) {
                        W = null;
                    }
                    return;
                }
            case 403:
                ab();
                return;
            case l80.f3570goto /* 404 */:
            default:
                if (!a) {
                    throw new AssertionError();
                }
                return;
            case l80.f3574this /* 405 */:
                K = false;
                StringBuilder sbY = Y();
                String strG = com.uc.crashsdk.b.g();
                if (sbY != null) {
                    com.uc.crashsdk.a.g.a(new File(strG), sbY.toString());
                    return;
                }
                return;
            case 406:
                if (!a && objArr == null) {
                    throw new AssertionError();
                }
                a((String) objArr[0], ((Boolean) objArr[1]).booleanValue(), ((Boolean) objArr[2]).booleanValue());
                return;
            case 407:
                try {
                    com.uc.crashsdk.a.d();
                    return;
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                    return;
                }
            case 408:
                synchronized (aa) {
                    if (!ab && g.O() && com.uc.crashsdk.b.z()) {
                        com.uc.crashsdk.b.s();
                        h.f();
                        f.c();
                        if (com.uc.crashsdk.b.F()) {
                            C();
                        }
                        if (g.O()) {
                            a(Calendar.getInstance());
                        }
                        ab = true;
                        return;
                    }
                    return;
                }
            case l80.f3561break /* 409 */:
                d(false);
                return;
            case 410:
                a(false, true);
                return;
            case 411:
                if (com.uc.crashsdk.b.d) {
                    JNIBridge.set(28, d(LogType.NATIVE_TYPE));
                    JNIBridge.set(29, d(LogType.ANR_TYPE));
                    return;
                }
                return;
            case 412:
                if (!Q && com.uc.crashsdk.b.B() && g.K()) {
                    b(com.uc.crashsdk.a.g.a());
                    return;
                }
                if (Q) {
                    if (com.uc.crashsdk.b.B() && g.K()) {
                        return;
                    }
                    try {
                        com.uc.crashsdk.a.g.a().unregisterReceiver(P);
                        Q = false;
                        return;
                    } catch (Throwable th2) {
                        com.uc.crashsdk.a.g.a(th2);
                        return;
                    }
                }
                return;
            case 413:
                JNIBridge.cmd(8);
                return;
            case 414:
                try {
                    if (d(com.uc.crashsdk.a.g.a())) {
                        return;
                    }
                    int i4 = M + 1;
                    M = i4;
                    if (i4 < 10) {
                        X();
                        return;
                    } else {
                        if (com.uc.crashsdk.b.d) {
                            JNIBridge.set(130, "(get failed)");
                            return;
                        }
                        return;
                    }
                } catch (Throwable th3) {
                    com.uc.crashsdk.a.g.a(th3);
                    return;
                }
            case 415:
                if (!a && objArr == null) {
                    throw new AssertionError();
                }
                long jLongValue = ((Long) objArr[0]).longValue();
                Calendar calendar = Calendar.getInstance();
                if (calendar.getTimeInMillis() >= jLongValue) {
                    h.g();
                    f.a(100);
                    d(true);
                    f.a(true);
                    h.b();
                } else {
                    h.h();
                    h.i();
                    h.c();
                }
                a(calendar);
                break;
            case TypedValues.Cycle.TYPE_PATH_ROTATE /* 416 */:
                break;
        }
        W();
    }

    public static class a extends OutputStream {
        private final long a;
        private final OutputStream b;
        private int c = 0;
        private int d = 0;
        private boolean e = false;

        public a(long j, OutputStream outputStream) {
            this.a = j;
            this.b = outputStream;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int a(byte[] bArr, int i, int i2) throws IOException {
            int i3;
            this.d += i2;
            if (this.e) {
                return 0;
            }
            int iY = g.y();
            if (iY > 0) {
                int i4 = this.c;
                i3 = i4 + i2 > iY ? iY - i4 : i2;
            }
            this.c += i3;
            if (this.a != 0) {
                b(new String(bArr, i, i3));
            } else {
                this.b.write(bArr, i, i3);
            }
            if (i3 < i2) {
                this.e = true;
            }
            return i3;
        }

        private void b(String str) {
            if (com.uc.crashsdk.b.d) {
                JNIBridge.nativeClientWriteData(this.a, str);
            }
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            if (e.h && e.O()) {
                com.uc.crashsdk.a.a.d("DEBUG", String.format(Locale.US, "%c", Integer.valueOf(i)));
            }
            if (this.a != 0) {
                b(String.format(Locale.US, "%c", Integer.valueOf(i)));
            } else {
                this.b.write(i);
            }
            this.c++;
            this.d++;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            if (e.h && e.O()) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
                if (i2 != 1 || bArr2[0] != 10) {
                    try {
                        com.uc.crashsdk.a.a.d("DEBUG", new String(bArr2));
                    } catch (Throwable unused) {
                    }
                }
            }
            a(bArr, i, i2);
        }

        public final void a() {
            try {
                if (this.d - this.c > 0) {
                    a("\n");
                    a("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                }
                a(String.format(Locale.US, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n", Integer.valueOf(this.d), Integer.valueOf(this.c), Integer.valueOf(g.y()), Integer.valueOf(this.d - this.c)));
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            if (e.h && e.O() && (bArr.length != 1 || bArr[0] != 10)) {
                try {
                    com.uc.crashsdk.a.a.d("DEBUG", new String(bArr));
                } catch (Throwable unused) {
                }
            }
            a(bArr, 0, bArr.length);
        }

        public final void a(String str) throws IOException {
            if (e.h && e.O()) {
                com.uc.crashsdk.a.a.d("DEBUG", str);
            }
            if (this.a != 0) {
                b(str);
            } else {
                this.b.write(str.getBytes("UTF-8"));
            }
        }
    }

    public static String h() {
        String str = m;
        if (str != null) {
            return str;
        }
        String strA = a(Process.myPid());
        m = strA;
        return strA;
    }

    public static class d {
        public long a;
        public long b;
        public int c;
        public int d;
        public boolean e;
        public boolean f;
        public boolean g;

        private d() {
            this.a = 0L;
            this.b = 0L;
            this.c = 0;
            this.d = 0;
            this.e = false;
            this.f = false;
            this.g = false;
        }

        public /* synthetic */ d(byte b) {
            this();
        }
    }

    public static void j() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitNetwork().build());
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void m() {
        if (ae) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(411), 1000L);
    }

    public static void p() {
        String strA;
        Throwable th;
        File file;
        if (com.uc.crashsdk.a.g.a(A)) {
            String string = null;
            try {
                file = new File(g.U() + "unique");
            } catch (Throwable th2) {
                strA = string;
                th = th2;
            }
            if (file.exists()) {
                strA = com.uc.crashsdk.a.g.a(file, 48, false);
                try {
                    if (strA != null) {
                        try {
                            if (strA.length() == 36) {
                                string = strA.replaceAll("[^0-9a-zA-Z-]", "-");
                            }
                        } catch (Exception e) {
                            com.uc.crashsdk.a.g.a(e);
                        }
                    } else {
                        string = strA;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    com.uc.crashsdk.a.g.a(th);
                    string = strA;
                    A = string;
                }
                A = string;
            }
            if (com.uc.crashsdk.a.g.a(string)) {
                com.uc.crashsdk.b.G();
                string = UUID.randomUUID().toString();
                if (!com.uc.crashsdk.a.g.a(string)) {
                    com.uc.crashsdk.a.g.a(file, string.getBytes());
                }
            }
            A = string;
        }
    }

    public static String q() {
        return A;
    }

    public static void r() {
        N = false;
        if (!com.uc.crashsdk.b.B()) {
            com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(TypedValues.Cycle.TYPE_PATH_ROTATE), 11000L);
        }
        if (V()) {
            return;
        }
        M = 0;
        X();
    }

    private static void b(OutputStream outputStream, String str, String str2) {
        String strS;
        String strNativeGet;
        try {
            outputStream.write("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "Basic Information: 'pid: %d/tid: %d/time: %s'\n", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()), n()).getBytes("UTF-8"));
            Object[] objArr = new Object[3];
            objArr[0] = e();
            if (com.uc.crashsdk.a.g.a(l)) {
                T();
            }
            objArr[1] = l;
            objArr[2] = f();
            outputStream.write(String.format(locale, "Cpu Information: 'abi: %s/processor: %s/hardware: %s'\n", objArr).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            Locale locale2 = Locale.US;
            outputStream.write(String.format(locale2, "Mobile Information: 'model: %s/version: %s/sdk: %d'\n", Build.MODEL, Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT)).getBytes("UTF-8"));
            outputStream.write(("Build fingerprint: '" + Build.FINGERPRINT + "'\n").getBytes("UTF-8"));
            Object[] objArr2 = new Object[4];
            objArr2[0] = a(new Date(b));
            objArr2[1] = Long.valueOf(Runtime.getRuntime().maxMemory());
            objArr2[2] = com.uc.crashsdk.a.g.d();
            objArr2[3] = com.uc.crashsdk.b.B() ? "fg" : "bg";
            outputStream.write(String.format(locale2, "Runtime Information: 'start: %s/maxheap: %s/primaryabi: %s/ground: %s'\n", objArr2).getBytes("UTF-8"));
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        try {
            Locale locale3 = Locale.US;
            outputStream.write(String.format(locale3, "Application Information: 'version: %s/subversion: %s/buildseq: %s/versioncode: %d'\n", g.R(), g.S(), g.T(), Integer.valueOf(com.uc.crashsdk.a.c())).getBytes("UTF-8"));
            String str3 = "0";
            String str4 = "";
            if (com.uc.crashsdk.b.d) {
                String strNativeGet2 = JNIBridge.nativeGet(1, 0L, null);
                strNativeGet = JNIBridge.nativeGet(2, 0L, null);
                str3 = strNativeGet2;
            } else {
                strNativeGet = "";
            }
            outputStream.write(String.format(locale3, "CrashSDK Information: 'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s'\n", "3.3.0.0", str3, "210719141901", strNativeGet, "umeng").getBytes("UTF-8"));
            if (str != null) {
                str4 = str;
            }
            outputStream.write(("Report Name: " + str4.substring(str4.lastIndexOf(47) + 1) + "\n").getBytes("UTF-8"));
        } catch (Throwable th4) {
            a(th4, outputStream);
        }
        try {
            if (ae) {
                strS = s("UUID");
            } else {
                strS = A;
            }
            outputStream.write(String.format("UUID: %s\n", strS).getBytes("UTF-8"));
            outputStream.write(("Log Type: " + str2 + "\n").getBytes("UTF-8"));
        } catch (Throwable th5) {
            a(th5, outputStream);
        }
        try {
            String strE = com.uc.crashsdk.b.E();
            if (com.uc.crashsdk.a.g.a(strE)) {
                strE = "(none)";
            }
            outputStream.write(("Activity: " + strE + "\n").getBytes("UTF-8"));
        } catch (Throwable th6) {
            a(th6, outputStream);
        }
        a(outputStream);
        try {
            com.uc.crashsdk.a.a(outputStream, "UTF-8");
            if (ae) {
                h = false;
                outputStream.write(s("HEADER").getBytes("UTF-8"));
                h = true;
            }
        } catch (Throwable th7) {
            a(th7, outputStream);
        }
        a(outputStream);
    }

    public static String n() {
        return a(new Date());
    }

    private static void g(OutputStream outputStream) {
        String strM;
        try {
            outputStream.write("recent status:\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            if (ae) {
                strM = s("LASTVER");
            } else {
                strM = com.uc.crashsdk.a.m();
            }
            outputStream.write(String.format(Locale.US, "last version: '%s'\n", strM).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            ArrayList<String> arrayList = r;
            synchronized (arrayList) {
                if (t != null) {
                    outputStream.write(String.format(Locale.US, "generating log: %s\n", t).getBytes("UTF-8"));
                }
                if (s > 0 || arrayList.size() > 0) {
                    outputStream.write(String.format(Locale.US, "generated %d logs, recent are:\n", Integer.valueOf(s)).getBytes("UTF-8"));
                    Iterator<String> it = arrayList.iterator();
                    while (it.hasNext()) {
                        outputStream.write(String.format(Locale.US, "* %s\n", it.next()).getBytes("UTF-8"));
                    }
                }
            }
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "dumping all threads: %s\n", Boolean.valueOf(u)).getBytes("UTF-8"));
            String str = v;
            if (str != null) {
                outputStream.write(String.format(locale, "dumping threads: %s\n", str).getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        a(outputStream);
    }

    public static void c(String str) {
        synchronized (y) {
            com.uc.crashsdk.a.b.a(com.uc.crashsdk.b.l(), str + "\n");
        }
    }

    public static void c(boolean z2) {
        boolean z3 = true;
        if (!Q ? !z2 || !g.K() : z2 && g.K()) {
            z3 = false;
        }
        if (z3) {
            com.uc.crashsdk.a.e eVar = R;
            if (com.uc.crashsdk.a.f.b(eVar)) {
                com.uc.crashsdk.a.f.a(eVar);
            }
            com.uc.crashsdk.a.f.a(0, eVar, 3000L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(boolean z2) {
        File[] fileArrListFiles;
        try {
            if (com.uc.crashsdk.b.y() && (fileArrListFiles = new File(g.V()).listFiles()) != null) {
                int iL = g.l();
                int iM = g.m();
                if (fileArrListFiles.length < Math.min(iL, iM)) {
                    return;
                }
                Object[] objArr = 0;
                int i2 = 0;
                int i3 = 0;
                for (File file : fileArrListFiles) {
                    if (b(file)) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                int i4 = (!z2 || i2 < iL) ? 0 : (i2 - iL) + 1;
                int i5 = (z2 || i3 < iM) ? 0 : (i3 - iM) + 1;
                if (i4 == 0 && i5 == 0) {
                    return;
                }
                Arrays.sort(fileArrListFiles, new b(objArr == true ? 1 : 0));
                int i6 = i4;
                int i7 = i5;
                for (File file2 : fileArrListFiles) {
                    boolean zB = b(file2);
                    if (zB && i6 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest crash log: " + file2.getPath());
                        file2.delete();
                        i6 += -1;
                    } else if (!zB && i7 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest custom log: " + file2.getPath());
                        file2.delete();
                        i7 += -1;
                    }
                    if (i6 == 0 && i7 == 0) {
                        break;
                    }
                }
                f.a(16, i4 + i5);
                if (i4 > 0) {
                    f.a(22, i4);
                }
                if (i5 > 0) {
                    f.a(23, i5);
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static int f(boolean z2) {
        int iB;
        if (z2) {
            iB = f.a(com.uc.crashsdk.b.c()) ? 1 : 0;
        } else {
            iB = f.b();
        }
        int iB2 = f.b(z2);
        return iB2 > iB ? iB2 : iB;
    }

    public static void o() {
        b = System.currentTimeMillis();
    }

    public static StringBuilder f(String str) {
        return a(Thread.currentThread().getStackTrace(), str);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void e(OutputStream outputStream) {
        int I2;
        int length;
        File[] fileArrListFiles = null;
        try {
            I2 = g.I();
            try {
                fileArrListFiles = new File("/proc/self/task").listFiles();
            } catch (Throwable th) {
                th = th;
                com.uc.crashsdk.a.g.a(th);
                length = 0;
                if (fileArrListFiles != null) {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            I2 = TaurusHeader.a;
        }
        if (fileArrListFiles == null) {
            return;
        }
        length = fileArrListFiles.length;
        if (length < I2) {
            return;
        }
        if (fileArrListFiles != null) {
            return;
        }
        try {
            outputStream.write("threads info:\n".getBytes("UTF-8"));
            outputStream.write(String.format(Locale.US, "threads count: %d, dump limit: %d.\n", Integer.valueOf(length), Integer.valueOf(I2)).getBytes("UTF-8"));
            outputStream.write(" tid     name\n".getBytes("UTF-8"));
            for (File file : fileArrListFiles) {
                outputStream.write(String.format(Locale.US, "%5s %s\n", file.getName(), l(com.uc.crashsdk.a.g.a(new File(file.getPath(), "comm"), 128, false))).getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        a(outputStream);
    }

    public static boolean d(String str) {
        if (ae) {
            return true;
        }
        try {
            return p(str);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Context context) {
        List<ActivityManager.ProcessErrorStateInfo> processesInErrorState;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        boolean z2 = false;
        if (activityManager == null || (processesInErrorState = activityManager.getProcessesInErrorState()) == null) {
            return false;
        }
        int iMyPid = Process.myPid();
        Iterator<ActivityManager.ProcessErrorStateInfo> it = processesInErrorState.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ActivityManager.ProcessErrorStateInfo next = it.next();
            if (next.pid == iMyPid) {
                N = true;
                if (O()) {
                    com.uc.crashsdk.a.a.d("crashsdk", "ANR occurred in process: " + next.processName);
                }
                if (com.uc.crashsdk.b.d) {
                    JNIBridge.set(130, next.longMsg);
                }
                z2 = true;
            }
        }
        if (!z2 && com.uc.crashsdk.b.d) {
            W();
        }
        return true;
    }

    public static String a(String str, String str2) {
        String[] strArr;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                strArr = new String[]{"ps", "-ef"};
            } else {
                strArr = new String[]{"ps"};
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream()));
            boolean zB = com.uc.crashsdk.a.g.b(str);
            boolean zB2 = com.uc.crashsdk.a.g.b(str2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    boolean z2 = true;
                    if ((!zB || !line.contains(str)) && ((!zB2 || !line.contains(str2)) && (line.indexOf(47) >= 0 || line.indexOf(46) <= 0))) {
                        z2 = false;
                    }
                    if (z2) {
                        byteArrayOutputStream.write(line.getBytes("UTF-8"));
                        byteArrayOutputStream.write("\n".getBytes("UTF-8"));
                    }
                } else {
                    return byteArrayOutputStream.toString("UTF-8");
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "exception exists.";
        }
    }

    public static void d(boolean z2) {
        f.d(false);
        if (z2) {
            f.a(com.uc.crashsdk.b.c(), false);
            h.i();
        } else {
            f.a();
            h.i();
        }
    }

    public static boolean e(String str) {
        try {
            if (!com.uc.crashsdk.a.g.b(str) || !str.startsWith("lib") || !str.endsWith(".so")) {
                return false;
            }
            System.loadLibrary(str.substring(3, str.length() - 3));
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    public static int e(boolean z2) {
        return f.a(z2);
    }

    private static BufferedReader a(InputStreamReader inputStreamReader) {
        BufferedReader bufferedReader = null;
        int i2 = 8192;
        while (bufferedReader == null && i2 > 0) {
            try {
                bufferedReader = new BufferedReader(inputStreamReader, i2);
            } catch (Throwable unused) {
                i2 /= 2;
                if (i2 < 512) {
                    break;
                }
            }
        }
        return bufferedReader;
    }

    private static void a(OutputStream outputStream) {
        try {
            outputStream.write("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
    }

    private static String a(File file) {
        String canonicalPath;
        try {
            canonicalPath = file.getCanonicalPath();
        } catch (Throwable unused) {
            canonicalPath = null;
        }
        return com.uc.crashsdk.a.g.a(canonicalPath) ? file.getPath() : canonicalPath;
    }

    private static void a(OutputStream outputStream, String str, Set<String> set) {
        if (com.uc.crashsdk.a.g.a(str) || set.contains(str) || str.equals("/storage/emulated")) {
            return;
        }
        set.add(str);
        try {
            StatFs statFs = new StatFs(str);
            long jA = a(statFs, "getBlockCountLong", "getBlockCount");
            long jA2 = a(statFs, "getBlockSizeLong", "getBlockSize");
            if ((jA / 1024) * jA2 < 10240) {
                return;
            }
            long jA3 = a(statFs, "getAvailableBlocksLong", "getAvailableBlocks");
            long jA4 = a(statFs, "getFreeBlocksLong", "getFreeBlocks");
            try {
                Locale locale = Locale.US;
                outputStream.write(String.format(locale, "%s:\n", str).getBytes("UTF-8"));
                Object[] objArr = new Object[1];
                double d2 = jA;
                Double.isNaN(d2);
                double d3 = jA2;
                Double.isNaN(d3);
                objArr[0] = Long.valueOf((long) (((d2 * 1.0d) * d3) / 1024.0d));
                outputStream.write(String.format(locale, "  total:      %d kB\n", objArr).getBytes("UTF-8"));
                Object[] objArr2 = new Object[1];
                double d4 = jA3;
                Double.isNaN(d4);
                Double.isNaN(d3);
                objArr2[0] = Long.valueOf((long) (((d4 * 1.0d) * d3) / 1024.0d));
                outputStream.write(String.format(locale, "  available:  %d kB\n", objArr2).getBytes("UTF-8"));
                Object[] objArr3 = new Object[1];
                double d5 = jA4;
                Double.isNaN(d5);
                Double.isNaN(d3);
                objArr3[0] = Long.valueOf((long) (((d5 * 1.0d) * d3) / 1024.0d));
                outputStream.write(String.format(locale, "  free:       %d kB\n", objArr3).getBytes("UTF-8"));
                outputStream.write(String.format(locale, "  block size: %d B\n\n", Long.valueOf(jA2)).getBytes("UTF-8"));
            } catch (Throwable th) {
                a(th, outputStream);
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(OutputStream outputStream) {
        BufferedReader bufferedReaderA = null;
        try {
            outputStream.write("logcat:\n".getBytes("UTF-8"));
        } finally {
        }
        try {
            if (g.n() <= 0) {
                try {
                    outputStream.write("[DEBUG] custom java logcat lines count is 0!\n".getBytes("UTF-8"));
                } catch (Throwable th) {
                    a(th, outputStream);
                }
                a(outputStream);
                return;
            }
            int iN = g.n();
            bufferedReaderA = a(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"logcat", "-d", "-b", com.umeng.analytics.pro.d.ar, "-b", k.f23949while, "-v", "threadtime", "-t", String.valueOf(iN)}).getInputStream()));
            if (bufferedReaderA == null) {
                try {
                    outputStream.write("[DEBUG] alloc buffer failed!\n".getBytes("UTF-8"));
                } catch (Throwable th2) {
                    a(th2, outputStream);
                }
                a(outputStream);
                return;
            }
            h = false;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                String line = bufferedReaderA.readLine();
                if (line != null) {
                    i2++;
                    if (i3 < iN && !line.contains(" I auditd ") && !line.contains(" I liblog ")) {
                        outputStream.write(line.getBytes("UTF-8"));
                        outputStream.write("\n".getBytes("UTF-8"));
                        i3++;
                    }
                } else {
                    try {
                        break;
                    } catch (Throwable th3) {
                        a(th3, outputStream);
                    }
                }
            }
            outputStream.write(String.format(Locale.US, "[DEBUG] Read %d lines, wrote %d lines.\n", Integer.valueOf(i2), Integer.valueOf(i3)).getBytes("UTF-8"));
            h = true;
            com.uc.crashsdk.a.g.a(bufferedReaderA);
            a(outputStream);
            return;
            com.uc.crashsdk.a.g.a(bufferedReaderA);
            a(outputStream);
            return;
        } finally {
        }
    }

    private static long a(StatFs statFs, String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                Method declaredMethod = StatFs.class.getDeclaredMethod(str, new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(statFs, new Object[0]);
                if (objInvoke != null && (objInvoke instanceof Long)) {
                    return ((Long) objInvoke).longValue();
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Method declaredMethod2 = StatFs.class.getDeclaredMethod(str2, new Class[0]);
            declaredMethod2.setAccessible(true);
            Object objInvoke2 = declaredMethod2.invoke(statFs, new Object[0]);
            if (objInvoke2 == null || !(objInvoke2 instanceof Integer)) {
                return 0L;
            }
            return ((Integer) objInvoke2).intValue();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return 0L;
        }
    }

    private static void b(a aVar) {
        h = false;
        try {
            aVar.write((s("LOG_END") + "\n").getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        h = true;
    }

    public static int b(OutputStream outputStream, String str, int i2) {
        int i3;
        DataInputStream dataInputStream;
        int i4;
        DataInputStream dataInputStream2 = null;
        int i5 = 0;
        try {
            File file = new File(str);
            if (file.exists()) {
                byte[] bArrR = R();
                if (bArrR == null) {
                    outputStream.write("(alloc buffer failed!)\n".getBytes("UTF-8"));
                    return 0;
                }
                dataInputStream = new DataInputStream(new FileInputStream(file));
                i4 = 0;
                i3 = 0;
                loop0: while (true) {
                    boolean z2 = false;
                    while (true) {
                        try {
                            int i6 = dataInputStream.read(bArrR);
                            if (i6 == -1) {
                                break loop0;
                            }
                            i4 += i6;
                            int i7 = i2 - i3;
                            if (i6 <= i7 + 32) {
                                i7 = i6;
                            }
                            if (i7 > 0 && !z2) {
                                outputStream.write(bArrR, 0, i7);
                                i3 += i7;
                            }
                            if (!z2) {
                                if (i7 < i6 || i3 >= i2) {
                                    z2 = true;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            i5 = i3;
                            dataInputStream2 = dataInputStream;
                            try {
                                a(th, outputStream);
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                                i3 = i5;
                                a(outputStream);
                                return i3;
                            } finally {
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                            }
                        }
                    }
                }
            } else {
                outputStream.write(("file: '" + str + "' not exists!\n").getBytes("UTF-8"));
                dataInputStream = null;
                i4 = 0;
                i3 = 0;
            }
            if (i3 > 0) {
                outputStream.write("\n".getBytes("UTF-8"));
            }
            if (i3 < i4) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(i4 - i3)).getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(outputStream);
        return i3;
    }

    private static void a(a aVar) {
        try {
            aVar.a(String.format(Locale.US, "log end: %s\n", n()));
        } catch (Throwable th) {
            a(th, aVar);
        }
    }

    public static int a(OutputStream outputStream, String str, int i2) {
        int i3 = 0;
        if (str == null) {
            a(outputStream);
            return 0;
        }
        try {
            String strA = com.uc.crashsdk.a.b.a(str);
            if (strA == null) {
                strA = "file: '" + str + "' not found or decode failed!";
            }
            int length = strA.length();
            if (length <= i2 + 32) {
                i2 = length;
            }
            if (i2 > 0) {
                try {
                    outputStream.write(strA.getBytes("UTF-8"), 0, i2);
                    outputStream.write("\n".getBytes("UTF-8"));
                } catch (Throwable th) {
                    th = th;
                    i3 = i2;
                    a(th, outputStream);
                    i2 = i3;
                    a(outputStream);
                    return i2;
                }
            }
            if (i2 < strA.length()) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(strA.length() - i2)).getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(outputStream);
        return i2;
    }

    public static void b(boolean z2) {
        try {
            boolean zS = g.r() && com.uc.crashsdk.b.F() && !d;
            if (!zS) {
                zS = g.s();
            }
            if (zS) {
                if (z2) {
                    String strK = k();
                    if (com.uc.crashsdk.a.g.a(strK)) {
                        return;
                    }
                    j();
                    a(strK, false, false);
                    return;
                }
                a(true, false);
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static String a(int i2) {
        try {
            String strA = com.uc.crashsdk.a.g.a(new File(String.format(Locale.US, "/proc/%d/cmdline", Integer.valueOf(i2))), 128, false);
            return com.uc.crashsdk.a.g.b(strA) ? l(strA) : "unknown";
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "unknown";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x02d6 A[Catch: all -> 0x0335, TRY_LEAVE, TryCatch #12 {all -> 0x0335, blocks: (B:18:0x003d, B:52:0x0104, B:83:0x0180, B:89:0x018f, B:91:0x0193, B:96:0x01a7, B:95:0x01a4, B:102:0x01b2, B:121:0x01f8, B:126:0x020c, B:150:0x02c0, B:156:0x02d2, B:158:0x02d6, B:163:0x02ea, B:162:0x02e7, B:174:0x02fe, B:176:0x0302, B:181:0x0316, B:180:0x0313, B:182:0x0318, B:187:0x0326, B:173:0x02fb, B:168:0x02f2, B:155:0x02cf, B:131:0x0224, B:125:0x0209, B:120:0x01f5, B:111:0x01c9, B:107:0x01bb, B:101:0x01af, B:88:0x018c, B:82:0x017d, B:78:0x015c, B:73:0x0136, B:68:0x0121, B:62:0x0116, B:57:0x010d, B:51:0x0101, B:47:0x00f3, B:43:0x00e6, B:28:0x008d, B:24:0x004c, B:17:0x003a, B:92:0x0195, B:183:0x031e, B:29:0x0090, B:36:0x00bc, B:38:0x00c2, B:40:0x00cc, B:35:0x00b9, B:30:0x0099, B:32:0x00aa, B:159:0x02d8, B:97:0x01a9, B:164:0x02ec, B:44:0x00e9, B:112:0x01cc, B:114:0x01d0, B:115:0x01e2, B:117:0x01e8, B:70:0x0126, B:169:0x02f5, B:103:0x01b5, B:12:0x002f, B:14:0x0033, B:79:0x015f, B:48:0x00f6, B:122:0x01fe, B:108:0x01be, B:84:0x0186, B:20:0x0046, B:53:0x0107, B:25:0x004f, B:151:0x02c9, B:177:0x0304, B:58:0x0110, B:75:0x013a, B:64:0x011b), top: B:246:0x002f, inners: #1, #2, #3, #4, #6, #8, #9, #10, #11, #15, #16, #17, #19, #21, #22, #23, #24, #25, #26, #27, #28, #29, #30, #31, #32 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0302 A[Catch: all -> 0x0335, TRY_LEAVE, TryCatch #12 {all -> 0x0335, blocks: (B:18:0x003d, B:52:0x0104, B:83:0x0180, B:89:0x018f, B:91:0x0193, B:96:0x01a7, B:95:0x01a4, B:102:0x01b2, B:121:0x01f8, B:126:0x020c, B:150:0x02c0, B:156:0x02d2, B:158:0x02d6, B:163:0x02ea, B:162:0x02e7, B:174:0x02fe, B:176:0x0302, B:181:0x0316, B:180:0x0313, B:182:0x0318, B:187:0x0326, B:173:0x02fb, B:168:0x02f2, B:155:0x02cf, B:131:0x0224, B:125:0x0209, B:120:0x01f5, B:111:0x01c9, B:107:0x01bb, B:101:0x01af, B:88:0x018c, B:82:0x017d, B:78:0x015c, B:73:0x0136, B:68:0x0121, B:62:0x0116, B:57:0x010d, B:51:0x0101, B:47:0x00f3, B:43:0x00e6, B:28:0x008d, B:24:0x004c, B:17:0x003a, B:92:0x0195, B:183:0x031e, B:29:0x0090, B:36:0x00bc, B:38:0x00c2, B:40:0x00cc, B:35:0x00b9, B:30:0x0099, B:32:0x00aa, B:159:0x02d8, B:97:0x01a9, B:164:0x02ec, B:44:0x00e9, B:112:0x01cc, B:114:0x01d0, B:115:0x01e2, B:117:0x01e8, B:70:0x0126, B:169:0x02f5, B:103:0x01b5, B:12:0x002f, B:14:0x0033, B:79:0x015f, B:48:0x00f6, B:122:0x01fe, B:108:0x01be, B:84:0x0186, B:20:0x0046, B:53:0x0107, B:25:0x004f, B:151:0x02c9, B:177:0x0304, B:58:0x0110, B:75:0x013a, B:64:0x011b), top: B:246:0x002f, inners: #1, #2, #3, #4, #6, #8, #9, #10, #11, #15, #16, #17, #19, #21, #22, #23, #24, #25, #26, #27, #28, #29, #30, #31, #32 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0359 A[Catch: all -> 0x0369, TryCatch #5 {all -> 0x0369, blocks: (B:207:0x0355, B:209:0x0359, B:211:0x0363), top: B:233:0x0355 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0362  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a(Throwable th, String str, long j2, boolean z2) {
        FileOutputStream fileOutputStream;
        a aVar = null;
        try {
            if (!com.uc.crashsdk.b.L()) {
                g.a();
                a(true);
            }
            fileOutputStream = j2 == 0 ? new FileOutputStream(str) : null;
            try {
                a aVar2 = new a(j2, fileOutputStream);
                try {
                    try {
                        if (com.uc.crashsdk.b.d) {
                            JNIBridge.set(126, str);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        aVar = aVar2;
                        try {
                            a(th, aVar);
                            if (j2 != 0) {
                                b(aVar);
                            }
                            com.uc.crashsdk.a.g.a(aVar);
                            com.uc.crashsdk.a.g.a(fileOutputStream);
                            if (!ae) {
                            }
                            b(ae ? a(m(str)) : str, LogType.JAVA_TYPE);
                            return str;
                        } catch (Throwable th3) {
                            if (j2 != 0) {
                                b(aVar);
                            }
                            com.uc.crashsdk.a.g.a(aVar);
                            com.uc.crashsdk.a.g.a(fileOutputStream);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    com.uc.crashsdk.a.g.a(th4);
                }
                b(aVar2, str, S());
                if (z2) {
                    try {
                        aVar2.flush();
                    } catch (Throwable th5) {
                        com.uc.crashsdk.a.g.a(th5);
                    }
                }
                try {
                    aVar2.write(("Process Name: '" + h() + "'\n").getBytes("UTF-8"));
                    aVar2.write(("Thread Name: '" + Thread.currentThread().getName() + "'\n").getBytes("UTF-8"));
                } catch (Throwable th6) {
                    com.uc.crashsdk.a.g.a(th6);
                }
                try {
                    aVar2.write("Back traces starts.\n".getBytes("UTF-8"));
                    try {
                        Field declaredField = Throwable.class.getDeclaredField("detailMessage");
                        declaredField.setAccessible(true);
                        Object obj = declaredField.get(th);
                        if (obj != null) {
                            declaredField.set(th, ((String) obj).replaceAll("\n\t", "\n->  "));
                        }
                    } catch (Throwable th7) {
                        com.uc.crashsdk.a.g.a(th7);
                    }
                    String message = th.getMessage();
                    if (message != null && !message.equals(th.getLocalizedMessage())) {
                        aVar2.write(("Message: " + message + "\n").getBytes("UTF-8"));
                    }
                } catch (Throwable th8) {
                    com.uc.crashsdk.a.g.a(th8);
                }
                try {
                    th.printStackTrace(new PrintStream(aVar2));
                } catch (Throwable th9) {
                    com.uc.crashsdk.a.g.a(th9);
                }
                try {
                    aVar2.write("Back traces ends.\n".getBytes("UTF-8"));
                } catch (Throwable th10) {
                    com.uc.crashsdk.a.g.a(th10);
                }
                a((OutputStream) aVar2);
                try {
                    aVar2.flush();
                } catch (Throwable th11) {
                    com.uc.crashsdk.a.g.a(th11);
                }
                try {
                    com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                } catch (Throwable th12) {
                    com.uc.crashsdk.a.g.a(th12);
                }
                if (z2) {
                    try {
                        aVar2.flush();
                    } catch (Throwable th13) {
                        com.uc.crashsdk.a.g.a(th13);
                    }
                }
                try {
                    aVar2.write("meminfo:\n".getBytes("UTF-8"));
                    b(aVar2, "/proc/meminfo", 10240);
                } catch (Throwable th14) {
                    a(th14, aVar2);
                }
                try {
                    String str2 = String.format(Locale.US, "/proc/%d/status", Integer.valueOf(Process.myPid()));
                    aVar2.write("status:\n".getBytes("UTF-8"));
                    b(aVar2, str2, 10240);
                } catch (Throwable th15) {
                    a(th15, aVar2);
                }
                try {
                    aVar2.write(("memory info:\n" + g()).getBytes("UTF-8"));
                } catch (Throwable th16) {
                    a(th16, aVar2);
                }
                a((OutputStream) aVar2);
                g(aVar2);
                try {
                    com.uc.crashsdk.a.a(aVar2, "UTF-8", (ArrayList<String>) null);
                } catch (Throwable th17) {
                    a(th17, aVar2);
                }
                if (ae) {
                    h = false;
                    try {
                        aVar2.write(s("JAVADUMPFILES").getBytes("UTF-8"));
                    } catch (Throwable th18) {
                        a(th18, aVar2);
                    }
                    h = true;
                }
                try {
                    aVar2.flush();
                } catch (Throwable th19) {
                    com.uc.crashsdk.a.g.a(th19);
                }
                b((OutputStream) aVar2);
                try {
                    aVar2.flush();
                } catch (Throwable th20) {
                    com.uc.crashsdk.a.g.a(th20);
                }
                try {
                    aVar2.write("battery info:\n".getBytes("UTF-8"));
                } catch (Throwable th21) {
                    a(th21, aVar2);
                }
                try {
                    if (ae) {
                        h = false;
                        aVar2.write(s("BATTERYINFO").getBytes("UTF-8"));
                        h = true;
                    } else {
                        StringBuilder sbY = Y();
                        if (sbY != null) {
                            aVar2.write(sbY.toString().getBytes("UTF-8"));
                        }
                    }
                } catch (Throwable th22) {
                    a(th22, aVar2);
                }
                a((OutputStream) aVar2);
                c(aVar2);
                try {
                    aVar2.write("device status:\n".getBytes("UTF-8"));
                } catch (Throwable th23) {
                    a(th23, aVar2);
                }
                if (ae) {
                    try {
                        h = false;
                        aVar2.write(s("DEVICESTATUS").getBytes("UTF-8"));
                        h = true;
                    } catch (Throwable th24) {
                        th = th24;
                        a(th, aVar2);
                        a((OutputStream) aVar2);
                        d(aVar2);
                        e(aVar2);
                        com.uc.crashsdk.a.b(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                        if (ae) {
                        }
                        aVar2.flush();
                        com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                        if (ae) {
                        }
                        aVar2.a();
                        a(aVar2);
                        aVar2.flush();
                        if (j2 != 0) {
                        }
                        com.uc.crashsdk.a.g.a(aVar2);
                        com.uc.crashsdk.a.g.a(fileOutputStream);
                        if (!ae) {
                        }
                        b(ae ? a(m(str)) : str, LogType.JAVA_TYPE);
                        return str;
                    }
                    a((OutputStream) aVar2);
                    d(aVar2);
                    e(aVar2);
                    try {
                        com.uc.crashsdk.a.b(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                    } catch (Throwable th25) {
                        a(th25, aVar2);
                    }
                    if (ae) {
                        h = false;
                        try {
                            aVar2.write(s("JAVACACHEDINFOS").getBytes("UTF-8"));
                        } catch (Throwable th26) {
                            a(th26, aVar2);
                        }
                        h = true;
                    }
                    try {
                        aVar2.flush();
                    } catch (Throwable th27) {
                        com.uc.crashsdk.a.g.a(th27);
                    }
                    try {
                        com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                    } catch (Throwable th28) {
                        a(th28, aVar2);
                    }
                    if (ae) {
                        h = false;
                        try {
                            aVar2.write(s("JAVACALLBACKINFOS").getBytes("UTF-8"));
                        } catch (Throwable th29) {
                            a(th29, aVar2);
                        }
                        h = true;
                    }
                    aVar2.a();
                    a(aVar2);
                    try {
                        aVar2.flush();
                    } catch (Throwable th30) {
                        com.uc.crashsdk.a.g.a(th30);
                    }
                    if (j2 != 0) {
                        b(aVar2);
                    }
                    com.uc.crashsdk.a.g.a(aVar2);
                } else {
                    try {
                        Locale locale = Locale.US;
                        aVar2.write(String.format(locale, "has root: %s\n", Boolean.valueOf(com.uc.crashsdk.a.g.e())).getBytes("UTF-8"));
                        String str3 = Build.TAGS;
                        String str4 = str3 != null ? str3 : "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("build tags: ");
                        sb.append(str4);
                        if (com.uc.crashsdk.a.g.f()) {
                            sb.append(" (default root)");
                        }
                        sb.append("\n");
                        aVar2.write(sb.toString().getBytes("UTF-8"));
                        String strH = com.uc.crashsdk.a.g.h();
                        if (com.uc.crashsdk.a.g.b(strH)) {
                            aVar2.write(String.format(locale, "su binary: %s\n", strH).getBytes("UTF-8"));
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("su permission: ");
                            sb2.append(com.uc.crashsdk.a.g.g() ? "valid (" : "invalid (");
                            sb2.append(com.uc.crashsdk.a.g.i());
                            sb2.append(")\n");
                            aVar2.write(sb2.toString().getBytes("UTF-8"));
                        }
                    } catch (Throwable th31) {
                        th = th31;
                        a(th, aVar2);
                        a((OutputStream) aVar2);
                        d(aVar2);
                        e(aVar2);
                        com.uc.crashsdk.a.b(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                        if (ae) {
                        }
                        aVar2.flush();
                        com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                        if (ae) {
                        }
                        aVar2.a();
                        a(aVar2);
                        aVar2.flush();
                        if (j2 != 0) {
                        }
                        com.uc.crashsdk.a.g.a(aVar2);
                        com.uc.crashsdk.a.g.a(fileOutputStream);
                        if (!ae) {
                        }
                        b(ae ? a(m(str)) : str, LogType.JAVA_TYPE);
                        return str;
                    }
                    a((OutputStream) aVar2);
                    d(aVar2);
                    e(aVar2);
                    com.uc.crashsdk.a.b(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                    if (ae) {
                    }
                    aVar2.flush();
                    com.uc.crashsdk.a.a(aVar2, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", null);
                    if (ae) {
                    }
                    aVar2.a();
                    a(aVar2);
                    aVar2.flush();
                    if (j2 != 0) {
                    }
                    com.uc.crashsdk.a.g.a(aVar2);
                }
            } catch (Throwable th32) {
                th = th32;
            }
        } catch (Throwable th33) {
            th = th33;
            fileOutputStream = null;
        }
        com.uc.crashsdk.a.g.a(fileOutputStream);
        if (!ae) {
            r(str);
        }
        try {
            b(ae ? a(m(str)) : str, LogType.JAVA_TYPE);
        } catch (Throwable th34) {
            com.uc.crashsdk.a.g.a(th34);
        }
        return str;
    }

    private static boolean b(File file) {
        int iIndexOf;
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(95);
        if (iLastIndexOf <= 0 || (iIndexOf = name.indexOf(46, iLastIndexOf)) <= 0) {
            return false;
        }
        String strSubstring = name.substring(iLastIndexOf + 1, iIndexOf);
        return LogType.JAVA_TYPE.equals(strSubstring) || "ucebujava".equals(strSubstring) || LogType.NATIVE_TYPE.equals(strSubstring) || "ucebujni".equals(strSubstring) || LogType.UNEXP_TYPE.equals(strSubstring) || LogType.ANR_TYPE.equals(strSubstring);
    }

    private static String b(String str, boolean z2, boolean z3) {
        if (z2) {
            try {
                str = m(str);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        if (!z3) {
            return str;
        }
        try {
            return a(str);
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            return str;
        }
    }

    public static void b(String str, String str2, boolean z2) {
        h.a(str, str2, false, z2);
    }

    public static void b(String str) {
        synchronized (x) {
            w = str;
            com.uc.crashsdk.a.b.a(com.uc.crashsdk.b.i(), str + "\n");
        }
    }

    private static void b(String str, String str2) {
        try {
            com.uc.crashsdk.d.a(str, h(), str2);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void b(Context context) {
        if (g.K()) {
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                intentFilter.addAction("android.intent.action.BATTERY_LOW");
                intentFilter.addAction("android.intent.action.BATTERY_OKAY");
                context.registerReceiver(P, intentFilter, null, com.uc.crashsdk.a.f.a(1));
                Q = true;
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
    }

    public static void b(int i2) {
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(410), i2 * 1000);
    }

    public static String a(String str) {
        int iLastIndexOf;
        int iIndexOf;
        int i2;
        int iIndexOf2;
        File file;
        byte[] bArrE;
        if (!g.x() || (iLastIndexOf = str.lastIndexOf(47)) <= 0 || (iIndexOf = str.indexOf(95, iLastIndexOf)) <= iLastIndexOf || (iIndexOf2 = str.indexOf(95, (i2 = iIndexOf + 1))) <= iIndexOf) {
            return str;
        }
        String strD = com.uc.crashsdk.a.g.d("CrashSDK" + str.substring(iLastIndexOf + 1, iIndexOf) + str.substring(i2, iIndexOf2));
        if (strD == null || (bArrE = com.uc.crashsdk.a.g.e((file = new File(str)))) == null || bArrE.length <= 0) {
            return str;
        }
        byte[] bArrB = null;
        try {
            bArrB = com.uc.crashsdk.a.c.b(bArrE, strD.substring(0, 16).getBytes());
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        if (bArrB == null) {
            return str;
        }
        String str2 = str + ".ec";
        File file2 = new File(str2 + ".tmp");
        if (!com.uc.crashsdk.a.g.a(file2, bArrB)) {
            return str;
        }
        if (!file2.renameTo(new File(str2))) {
            file2.delete();
            return str;
        }
        file.delete();
        return str2;
    }

    public static void a(Throwable th, OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.write("[DEBUG] CrashHandler occurred new exception:\n".getBytes("UTF-8"));
                th.printStackTrace(new PrintStream(outputStream));
                outputStream.write("\n\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
        com.uc.crashsdk.a.g.a(th);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02f2 A[Catch: all -> 0x0432, TryCatch #0 {all -> 0x0432, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d8 A[Catch: all -> 0x0432, TryCatch #0 {all -> 0x0432, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020d A[Catch: all -> 0x0432, TryCatch #0 {all -> 0x0432, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0223 A[Catch: all -> 0x0432, TryCatch #0 {all -> 0x0432, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(String str, boolean z2, boolean z3) {
        Object obj;
        int i2;
        boolean z4;
        boolean z5;
        int i3;
        String path;
        String strB;
        File fileA;
        int i4;
        String str2;
        int i5;
        File file;
        com.uc.crashsdk.a.a.a("crashsdk", "crashsdk uploading logs");
        synchronized (n) {
            try {
                try {
                } catch (Throwable th) {
                    try {
                        com.uc.crashsdk.a.g.a(th);
                        if (z3) {
                            obj = n;
                        }
                    } finally {
                    }
                }
                if (com.uc.crashsdk.a.g.b(str)) {
                    String strV = g.V();
                    File file2 = new File(strV);
                    if (file2.exists()) {
                        File[] fileArrListFiles = file2.listFiles();
                        if (fileArrListFiles == null) {
                            com.uc.crashsdk.a.a.b("List folder failed: " + strV);
                        } else {
                            int length = fileArrListFiles.length;
                            int i6 = 0;
                            int i7 = 0;
                            int i8 = 0;
                            int i9 = 0;
                            int i10 = 0;
                            int i11 = 0;
                            int i12 = 0;
                            int i13 = 0;
                            int i14 = 0;
                            boolean z6 = false;
                            boolean z7 = false;
                            boolean z8 = false;
                            while (true) {
                                if (i6 >= length) {
                                    i2 = i9;
                                    z4 = z6;
                                    z5 = z7;
                                    break;
                                }
                                File file3 = fileArrListFiles[i6];
                                File[] fileArr = fileArrListFiles;
                                if (file3.isFile()) {
                                    String name = file3.getName();
                                    if (name.endsWith(".tmp")) {
                                        if ((System.currentTimeMillis() - file3.lastModified()) / 1000 > 30) {
                                            i3 = length;
                                            com.uc.crashsdk.a.a.b("delete legacy tmp file: " + name);
                                            i8++;
                                            com.uc.crashsdk.a.g.a(file3);
                                        }
                                        i2 = i9;
                                        z4 = z6;
                                        i6++;
                                        fileArrListFiles = fileArr;
                                        length = i3;
                                        z6 = z4;
                                        i9 = i2;
                                    } else {
                                        i3 = length;
                                        z4 = z6;
                                        z5 = z7;
                                        if (file3.length() == 0) {
                                            i7++;
                                            com.uc.crashsdk.a.g.a(file3);
                                        } else {
                                            if (z2) {
                                                long jCurrentTimeMillis = (System.currentTimeMillis() - file3.lastModified()) / 1000;
                                                boolean z9 = jCurrentTimeMillis < 0 || (jCurrentTimeMillis >= 2 && (jCurrentTimeMillis >= 5 || !file3.getName().endsWith(".log")));
                                                com.uc.crashsdk.a.a.a(String.format(Locale.US, "file: %s, modify interval: %d s, safe upload: %s", file3.getName(), Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(z9)));
                                                if (!z9) {
                                                    i9++;
                                                }
                                            }
                                            try {
                                            } catch (Throwable th2) {
                                                th = th2;
                                                i2 = i9;
                                            }
                                            if (g.k()) {
                                                Matcher matcher = Pattern.compile("([^_]+)_([^_]+)_([^_]+)\\.crashsdk").matcher(file3.getName());
                                                if (matcher.matches()) {
                                                    i2 = i9;
                                                    try {
                                                        file = new File(g.V() + String.format(Locale.US, "%s%s_%s_%s.%s", j(matcher.group(2)), n(), Q(), matcher.group(1), matcher.group(3)));
                                                        com.uc.crashsdk.a.a.a("crashsdk", "File " + file3.getPath() + " matches, rename to " + file.getPath());
                                                        file3.renameTo(file);
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        com.uc.crashsdk.a.g.a(th);
                                                        path = file3.getPath();
                                                        boolean[] zArrN = n(path);
                                                        strB = b(path, zArrN[0], zArrN[1]);
                                                        if (path != strB) {
                                                        }
                                                        fileA = com.uc.crashsdk.d.a(file3);
                                                        if (fileA != null) {
                                                        }
                                                        if (fileA != null) {
                                                        }
                                                        z7 = z5;
                                                        i6++;
                                                        fileArrListFiles = fileArr;
                                                        length = i3;
                                                        z6 = z4;
                                                        i9 = i2;
                                                    }
                                                } else {
                                                    i2 = i9;
                                                    file = file3;
                                                }
                                                if (file != file3) {
                                                    i13++;
                                                }
                                                file3 = file;
                                                path = file3.getPath();
                                                boolean[] zArrN2 = n(path);
                                                strB = b(path, zArrN2[0], zArrN2[1]);
                                                if (path != strB) {
                                                    if (zArrN2[0]) {
                                                        i12++;
                                                    }
                                                    if (zArrN2[1]) {
                                                        i10++;
                                                    }
                                                    file3 = new File(strB);
                                                }
                                                fileA = com.uc.crashsdk.d.a(file3);
                                                if (fileA != null) {
                                                    fileA = null;
                                                } else if (file3 != fileA && !file3.getName().equals(fileA.getName()) && file3.exists()) {
                                                    file3.delete();
                                                }
                                                if (fileA != null) {
                                                    com.uc.crashsdk.a.a.b("onBeforeUploadLog return null, skip upload: " + file3.getAbsolutePath());
                                                } else {
                                                    int iZ = g.z();
                                                    if (iZ <= 0 || fileA.length() < iZ) {
                                                        d dVar = new d((byte) 0);
                                                        dVar.b = 0L;
                                                        dVar.a = System.currentTimeMillis();
                                                        String strU = U();
                                                        if (new File(strU).exists()) {
                                                            a(strU, new com.uc.crashsdk.a.e(451, new Object[]{strU, dVar}));
                                                        }
                                                        long jA = g.A();
                                                        int iB = g.B();
                                                        int iC = g.C();
                                                        if (jA >= 0) {
                                                            i4 = i10;
                                                            if (dVar.b + fileA.length() > jA) {
                                                                dVar.e = true;
                                                                str2 = "Reach max upload bytes: " + jA;
                                                            }
                                                            com.uc.crashsdk.a.a.b(str2);
                                                            if (!dVar.e) {
                                                                i10 = i4;
                                                                z7 = z5;
                                                                z4 = true;
                                                            } else if (dVar.g) {
                                                                i10 = i4;
                                                                z7 = true;
                                                            } else if (dVar.f) {
                                                                i10 = i4;
                                                                z7 = z5;
                                                                z8 = true;
                                                            } else {
                                                                String name2 = fileA.getName();
                                                                if (name2.startsWith(P())) {
                                                                    String[] strArrSplit = name2.split("_", 10);
                                                                    String str3 = strArrSplit.length == 9 ? strArrSplit[1] : null;
                                                                    boolean z10 = str3 != null && str3.equals(g.R());
                                                                    if (com.uc.crashsdk.a.c.a(fileA, fileA.getName(), str)) {
                                                                        com.uc.crashsdk.a.a.a("crashsdk", "Uploaded log: " + fileA.getName(), null);
                                                                        if (z10) {
                                                                            f.a(13);
                                                                        }
                                                                        dVar.b += fileA.length();
                                                                        if (b(fileA)) {
                                                                            dVar.c++;
                                                                        } else {
                                                                            dVar.d++;
                                                                        }
                                                                        String strU2 = U();
                                                                        a(strU2, new com.uc.crashsdk.a.e(452, new Object[]{strU2, dVar}));
                                                                        fileA.delete();
                                                                        i5 = 3;
                                                                        i14 = 0;
                                                                    } else {
                                                                        i14++;
                                                                        if (z10) {
                                                                            f.a(14);
                                                                        }
                                                                        i5 = 3;
                                                                    }
                                                                    if (i14 >= i5) {
                                                                        com.uc.crashsdk.a.a.a("crashsdk", "Upload failed 3 times continuously, abort upload!", null);
                                                                        i10 = i4;
                                                                        break;
                                                                    } else {
                                                                        i10 = i4;
                                                                        z7 = z5;
                                                                    }
                                                                }
                                                            }
                                                            i6++;
                                                            fileArrListFiles = fileArr;
                                                            length = i3;
                                                            z6 = z4;
                                                            i9 = i2;
                                                        } else {
                                                            i4 = i10;
                                                        }
                                                        if (!g.f()) {
                                                            if (b(fileA)) {
                                                                if (iB >= 0 && dVar.c >= iB) {
                                                                    dVar.g = true;
                                                                    str2 = "Reach max upload builtin log count: " + iB;
                                                                    com.uc.crashsdk.a.a.b(str2);
                                                                }
                                                            } else if (iC >= 0 && dVar.d >= iC) {
                                                                dVar.f = true;
                                                                str2 = "Reach max upload custom log count: " + iC;
                                                                com.uc.crashsdk.a.a.b(str2);
                                                            }
                                                        }
                                                        if (!dVar.e) {
                                                        }
                                                        i6++;
                                                        fileArrListFiles = fileArr;
                                                        length = i3;
                                                        z6 = z4;
                                                        i9 = i2;
                                                    } else {
                                                        i11++;
                                                        com.uc.crashsdk.a.g.a(fileA);
                                                    }
                                                }
                                                z7 = z5;
                                                i6++;
                                                fileArrListFiles = fileArr;
                                                length = i3;
                                                z6 = z4;
                                                i9 = i2;
                                            }
                                        }
                                        i2 = i9;
                                        z7 = z5;
                                        i6++;
                                        fileArrListFiles = fileArr;
                                        length = i3;
                                        z6 = z4;
                                        i9 = i2;
                                    }
                                } else {
                                    com.uc.crashsdk.a.g.a(file3);
                                }
                                i3 = length;
                                i2 = i9;
                                z4 = z6;
                                i6++;
                                fileArrListFiles = fileArr;
                                length = i3;
                                z6 = z4;
                                i9 = i2;
                            }
                            if (i8 > 0) {
                                f.a(200, i8);
                            }
                            if (i7 > 0) {
                                f.a(15, i7);
                            }
                            if (i11 > 0) {
                                f.a(17, i11);
                            }
                            if (z4) {
                                f.a(19);
                            }
                            if (z5) {
                                f.a(20);
                            }
                            if (z8) {
                                f.a(21);
                            }
                            if (z4 || z5 || z8) {
                                f.a(18);
                            }
                            if (i12 > 0) {
                                f.a(24, i12);
                            }
                            if (i10 > 0) {
                                f.a(201, i10);
                            }
                            if (i13 > 0) {
                                f.a(25, i13);
                            }
                            if (i2 > 0) {
                                f.a(26, i2);
                            }
                        }
                    } else {
                        com.uc.crashsdk.a.a.a("crashsdk", "Folder not exist: " + strV);
                    }
                } else {
                    com.uc.crashsdk.a.a.a("crashsdk", "upload url is empty!");
                }
                if (z3) {
                    obj = n;
                    obj.notify();
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public static boolean a(boolean z2, boolean z3) {
        if (!d) {
            if (com.uc.crashsdk.b.d) {
                JNIBridge.set(1, true);
            }
            d = true;
        }
        try {
            String strK = k();
            if (com.uc.crashsdk.a.g.a(strK)) {
                com.uc.crashsdk.a.a.a("crashsdk", "CrashHandler url is empty!");
                return false;
            }
            Object obj = n;
            synchronized (obj) {
                if (com.uc.crashsdk.a.f.a(z2 ? 1 : 0, new com.uc.crashsdk.a.e(406, new Object[]{strK, Boolean.valueOf(z3), Boolean.valueOf(z2)})) && z2) {
                    try {
                        obj.wait();
                    } catch (InterruptedException e) {
                        com.uc.crashsdk.a.g.a(e);
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7 */
    private static boolean a(String str, com.uc.crashsdk.a.e eVar) {
        boolean zA;
        FileChannel channel;
        Exception e;
        synchronized (o) {
            File file = new File(str);
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e2) {
                    com.uc.crashsdk.a.g.a(e2);
                }
            }
            ?? r5 = 0;
            fileLockLock = null;
            FileLock fileLockLock = null;
            zA = false;
            try {
                try {
                    try {
                        channel = new RandomAccessFile(file, "rw").getChannel();
                    } catch (Throwable th) {
                        th = th;
                        r5 = file;
                        com.uc.crashsdk.a.g.a((Closeable) r5);
                        throw th;
                    }
                } catch (Exception e3) {
                    try {
                        com.uc.crashsdk.a.g.a(e3);
                        channel = null;
                    } catch (Exception e4) {
                        channel = null;
                        e = e4;
                        com.uc.crashsdk.a.g.a(e);
                        com.uc.crashsdk.a.g.a(channel);
                        return zA;
                    }
                }
                if (channel != null) {
                    try {
                        fileLockLock = channel.lock();
                    } catch (Exception e5) {
                        try {
                            com.uc.crashsdk.a.g.a(e5);
                        } catch (Exception e6) {
                            e = e6;
                            com.uc.crashsdk.a.g.a(e);
                            com.uc.crashsdk.a.g.a(channel);
                            return zA;
                        }
                    }
                }
                try {
                    zA = eVar.a();
                    com.uc.crashsdk.a.g.a(channel);
                } finally {
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (Exception e7) {
                            com.uc.crashsdk.a.g.a(e7);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return zA;
    }

    private static boolean a(String str, d dVar) {
        String strA = com.uc.crashsdk.a.g.a(new File(str), 64, false);
        if (strA == null) {
            return false;
        }
        try {
            Matcher matcher = Pattern.compile("(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)").matcher(strA);
            if (matcher.find()) {
                long j2 = Long.parseLong(matcher.group(1));
                if (System.currentTimeMillis() - j2 < 86400000) {
                    dVar.b = Long.parseLong(matcher.group(2));
                    dVar.c = Integer.parseInt(matcher.group(3));
                    dVar.d = Integer.parseInt(matcher.group(4));
                    dVar.a = j2;
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static boolean a(StringBuffer stringBuffer, String str, long j2, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str2) {
        long j3;
        boolean z2;
        boolean zA;
        if (c.get()) {
            com.uc.crashsdk.a.a.b("Processing java crash, skip generate custom log: " + str);
            return false;
        }
        boolean z3 = ae || com.uc.crashsdk.b.L();
        if (!z3 && !com.uc.crashsdk.a.d.e()) {
            com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
            return false;
        }
        if (!d(str)) {
            com.uc.crashsdk.a.a.d("DEBUG", "custom log sample miss: " + str);
            return false;
        }
        if (aa()) {
            com.uc.crashsdk.a.a.b("Processing native crash, skip generate custom log: " + str);
            return false;
        }
        if (stringBuffer == null || str == null) {
            return false;
        }
        String strA = g.V() + k(str);
        ?? r11 = (j2 & 32) != 0 ? 1 : 0;
        if (z3) {
            long jNativeClientCreateConnection = com.uc.crashsdk.b.d ? JNIBridge.nativeClientCreateConnection(strA, cs1.F5, str, r11) : 0L;
            if (jNativeClientCreateConnection == 0) {
                com.uc.crashsdk.a.a.d("DEBUG", "skip custom log: " + str);
                return false;
            }
            j3 = jNativeClientCreateConnection;
        } else {
            if (a(h(), str, (boolean) r11)) {
                return false;
            }
            g.a();
            a(false);
            j3 = 0;
        }
        synchronized (p) {
            z2 = r11;
            zA = a(strA, j3, stringBuffer, str, j2, arrayList, arrayList2, arrayList3, str2);
        }
        if (zA && !z3) {
            b(h(), str, z2);
        }
        if (j3 != 0) {
            JNIBridge.nativeClientCloseConnection(j3);
        }
        if (!zA) {
            return false;
        }
        if (!z3) {
            r(strA);
        }
        if (!z3) {
            strA = a(m(strA));
        }
        b(strA, str);
        if (!z2 || z3) {
            return true;
        }
        try {
            a(true, false);
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return true;
        }
    }

    public static boolean a(String str, String str2, boolean z2) {
        if (!o(str2)) {
            return false;
        }
        h.a(str, str2, true, z2);
        com.uc.crashsdk.a.a.b(String.format(Locale.US, "Custom log '%s' has reach max count!", str2));
        return true;
    }

    private static void a(a aVar, String str, long j2) {
        String strNativeDumpThreads;
        String str2 = null;
        if (com.uc.crashsdk.b.d) {
            try {
                aVar.flush();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            strNativeDumpThreads = JNIBridge.nativeDumpThreads(str, j2);
            if (ae || strNativeDumpThreads == null || strNativeDumpThreads.length() >= 512 || !strNativeDumpThreads.startsWith(on0.f4694final) || strNativeDumpThreads.indexOf(10) >= 0) {
                str2 = strNativeDumpThreads;
            } else {
                if (!new File(strNativeDumpThreads).exists()) {
                    str2 = "Can not found " + strNativeDumpThreads;
                }
                String str3 = str2;
                str2 = strNativeDumpThreads;
                strNativeDumpThreads = str3;
            }
        } else {
            strNativeDumpThreads = "Native not initialized, skip dump!";
        }
        if (strNativeDumpThreads != null) {
            try {
                aVar.write(strNativeDumpThreads.getBytes("UTF-8"));
                aVar.write("\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
            a((OutputStream) aVar);
        } else if (str2 != null && !ae) {
            b(aVar, str2, 1048576);
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
        }
        try {
            aVar.flush();
        } catch (Throwable th3) {
            com.uc.crashsdk.a.g.a(th3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0043 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(String str, long j2, StringBuffer stringBuffer, String str2, long j3, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str3) {
        FileOutputStream fileOutputStream;
        a aVar;
        ArrayList<String> arrayList4;
        if (j2 == 0) {
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                aVar = null;
                com.uc.crashsdk.a.g.a(th);
                if (aVar == null) {
                }
            }
        } else {
            fileOutputStream = null;
        }
        try {
            aVar = new a(j2, fileOutputStream);
            try {
                synchronized (r) {
                    t = str;
                    if (com.uc.crashsdk.b.d) {
                        JNIBridge.set(126, t);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                com.uc.crashsdk.a.g.a(th);
                if (aVar == null) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            aVar = null;
        }
        if (aVar == null) {
            return false;
        }
        if ((j3 & 1) != 0) {
            try {
                b(aVar, str, str2);
            } finally {
                try {
                    arrayList4 = r;
                    synchronized (arrayList4) {
                    }
                } finally {
                }
            }
        }
        try {
            aVar.write(stringBuffer.toString().getBytes());
            aVar.write("\n".getBytes("UTF-8"));
            aVar.flush();
        } catch (Throwable th4) {
            a(th4, aVar);
        }
        a((OutputStream) aVar);
        if ((j3 & 4) != 0) {
            b((OutputStream) aVar);
            try {
                aVar.flush();
            } catch (Throwable th5) {
                com.uc.crashsdk.a.g.a(th5);
            }
        }
        if (arrayList != null && arrayList.size() > 0) {
            com.uc.crashsdk.a.a(aVar, "UTF-8", arrayList);
        }
        if (arrayList2 != null && arrayList2.size() > 0) {
            com.uc.crashsdk.a.a(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList2);
        }
        if (arrayList3 != null && arrayList3.size() > 0) {
            com.uc.crashsdk.a.b(aVar, "UTF-8", "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n", arrayList3);
        }
        if (str3 != null) {
            try {
                aVar.flush();
            } catch (Throwable th6) {
                a(th6, aVar);
            }
            try {
                aVar.write("threads dump:\n".getBytes("UTF-8"));
            } catch (Throwable th7) {
                a(th7, aVar);
            }
            h = false;
            v = str3;
            try {
                a(aVar, str3, j2);
            } catch (Throwable th8) {
                a(th8, aVar);
            }
            v = null;
            h = true;
        }
        if ((j3 & 8) != 0 && j2 == 0) {
            try {
                aVar.flush();
            } catch (Throwable th9) {
                a(th9, aVar);
            }
            try {
                aVar.write("all threads dump:\n".getBytes("UTF-8"));
            } catch (Throwable th10) {
                a(th10, aVar);
            }
            u = true;
            try {
                a(aVar, "all", 0L);
            } catch (Throwable th11) {
                a(th11, aVar);
            }
            u = false;
        }
        if ((j3 & 16) != 0) {
            f(aVar);
        }
        if ((j3 & 2) != 0) {
            aVar.a();
            a(aVar);
        }
        if (j2 != 0) {
            b(aVar);
        }
        try {
            arrayList4 = r;
            synchronized (arrayList4) {
                s++;
                String str4 = t;
                if (str4 != null) {
                    arrayList4.add(str4);
                    if (arrayList4.size() > 3) {
                        arrayList4.remove(0);
                    }
                    if (com.uc.crashsdk.b.d) {
                        JNIBridge.set(127, t);
                    }
                    t = null;
                }
                if (com.uc.crashsdk.b.d) {
                    JNIBridge.set(25, s);
                }
            }
        } catch (Throwable th12) {
            com.uc.crashsdk.a.g.a(th12);
        }
        return true;
    }

    private static String a(Date date) {
        return String.format(Locale.US, "%d%02d%02d%02d%02d%02d", Integer.valueOf(date.getYear() + 1900), Integer.valueOf(date.getMonth() + 1), Integer.valueOf(date.getDate()), Integer.valueOf(date.getHours()), Integer.valueOf(date.getMinutes()), Integer.valueOf(date.getSeconds()));
    }

    public static void a(OutputStream outputStream, String str, String str2, int i2, boolean z2, boolean z3) {
        h = false;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[5];
            objArr[0] = str;
            objArr[1] = str2;
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = Integer.valueOf(z2 ? 1 : 0);
            objArr[4] = Integer.valueOf(z3 ? 1 : 0);
            outputStream.write(String.format(locale, "$^%s`%s`%d`%d,%d^$", objArr).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        h = true;
        a(outputStream);
    }

    public static void a(OutputStream outputStream, String str, String str2) {
        h = false;
        try {
            outputStream.write(String.format(Locale.US, "$^%s`%s^$", str, str2).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        h = true;
    }

    public static void a(Context context) {
        try {
            if (V()) {
                context.registerReceiver(new c((byte) 0), new IntentFilter("android.intent.action.ANR"), null, com.uc.crashsdk.a.f.a(3));
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x045e A[Catch: all -> 0x052c, TryCatch #6 {all -> 0x052c, blocks: (B:329:0x042e, B:332:0x0440, B:334:0x0446, B:336:0x045e, B:337:0x0461, B:343:0x048f, B:342:0x048c, B:241:0x032c, B:338:0x0486), top: B:501:0x01f1, inners: #32 }] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x04d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0500 A[Catch: all -> 0x0517, TryCatch #42 {all -> 0x0517, blocks: (B:369:0x04e4, B:372:0x04ef, B:374:0x0500, B:376:0x0504, B:377:0x0507, B:380:0x050f), top: B:570:0x04e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x050d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0605 A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0620 A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0656 A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x01f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:554:0x04ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:585:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:586:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:587:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:588:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:589:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:590:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:591:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:592:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:593:? A[DONT_GENERATE, FINALLY_INSNS, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0109  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Thread thread, Throwable th, boolean z2) {
        boolean z3;
        ?? r12;
        Throwable th2;
        boolean z4;
        boolean zI;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        boolean zT;
        String str;
        boolean z5;
        boolean zI2;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2;
        boolean z6;
        boolean zI3;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler3;
        Throwable th3;
        boolean z7;
        boolean zI4;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler4;
        File file;
        boolean z8;
        boolean zI5;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler5;
        boolean z9;
        boolean zI6;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler6;
        boolean z10;
        boolean zI7;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler7;
        boolean z11;
        boolean zI8;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler8;
        boolean z12 = (ae && com.uc.crashsdk.b.d) || com.uc.crashsdk.b.L();
        try {
            r12 = 4;
            if (c.getAndSet(true) && Process.myPid() > 0) {
                com.uc.crashsdk.a.a.d("DEBUG", "another thread is generating java report!");
                com.uc.crashsdk.a.a.d("DEBUG", "current thread exception is:");
                a(th);
                int i2 = 0;
                while (!U) {
                    try {
                        Thread.sleep(1000L);
                    } catch (Throwable th4) {
                        com.uc.crashsdk.a.g.a(th4);
                    }
                    i2++;
                    if (i2 >= 4) {
                        break;
                    }
                }
                Process.killProcess(Process.myPid());
                if (z2) {
                    try {
                        if (!g.r() || z12) {
                            z11 = false;
                        } else {
                            try {
                                a(true, false);
                                z11 = true;
                            } catch (Throwable th5) {
                                th = th5;
                                z11 = true;
                                com.uc.crashsdk.a.g.a(th);
                                if (!z11) {
                                    b(false);
                                }
                                f.c(false);
                                zI8 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI8);
                                if (zI8) {
                                    uncaughtExceptionHandler8.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B()) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                                U = true;
                                if (Process.myPid() <= 0) {
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        z11 = false;
                    }
                }
                if (!z11 && !z12) {
                    b(false);
                }
                try {
                    f.c(false);
                } catch (Throwable th7) {
                    com.uc.crashsdk.a.g.a(th7);
                }
                try {
                    zI8 = g.i();
                    if (!com.uc.crashsdk.a.d.e()) {
                        zI8 = true;
                    }
                    com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI8);
                    if (zI8 && (uncaughtExceptionHandler8 = S) != null) {
                        uncaughtExceptionHandler8.uncaughtException(thread, th);
                    }
                    if (com.uc.crashsdk.b.B() && !z12) {
                        com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                    }
                } catch (Throwable th8) {
                    com.uc.crashsdk.a.g.a(th8);
                }
                U = true;
                if (Process.myPid() <= 0) {
                    Process.killProcess(Process.myPid());
                    return;
                }
                return;
            }
            T = th;
            if (!z12 && !com.uc.crashsdk.a.d.e()) {
                com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
                if (z2) {
                    try {
                        if (!g.r() || z12) {
                            z10 = false;
                        } else {
                            try {
                                a(true, false);
                                z10 = true;
                            } catch (Throwable th9) {
                                th = th9;
                                z10 = true;
                                com.uc.crashsdk.a.g.a(th);
                                if (!z10) {
                                    b(false);
                                }
                                f.c(false);
                                zI7 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI7);
                                if (zI7) {
                                    uncaughtExceptionHandler7.uncaughtException(thread, th);
                                }
                                if (com.uc.crashsdk.b.B()) {
                                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                }
                                U = true;
                                if (Process.myPid() <= 0) {
                                }
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        z10 = false;
                    }
                }
                if (!z10 && !z12) {
                    b(false);
                }
                try {
                    f.c(false);
                } catch (Throwable th11) {
                    com.uc.crashsdk.a.g.a(th11);
                }
                try {
                    zI7 = g.i();
                    if (!com.uc.crashsdk.a.d.e()) {
                        zI7 = true;
                    }
                    com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI7);
                    if (zI7 && (uncaughtExceptionHandler7 = S) != null) {
                        uncaughtExceptionHandler7.uncaughtException(thread, th);
                    }
                    if (com.uc.crashsdk.b.B() && !z12) {
                        com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                    }
                } catch (Throwable th12) {
                    com.uc.crashsdk.a.g.a(th12);
                }
                U = true;
                if (Process.myPid() <= 0) {
                    Process.killProcess(Process.myPid());
                    return;
                }
                return;
            }
            com.uc.crashsdk.a.a.d("DEBUG", "encryptLog: " + g.x() + ", zipCrashLog: " + g.x());
            if (g.a != null) {
                com.uc.crashsdk.a.a.d("DEBUG", "the set zip log to false stack is:");
                g.a.printStackTrace();
            }
            if (g.b != null) {
                com.uc.crashsdk.a.a.d("DEBUG", "the set encrypt to true stack is:");
                g.b.printStackTrace();
            }
            com.uc.crashsdk.a.a.d("DEBUG", "begin to generate java report");
            try {
                N();
            } catch (Throwable th13) {
                com.uc.crashsdk.a.g.a(th13);
            }
            try {
                zT = g.t();
                try {
                    String strG = g.g();
                    if (strG == null || strG.equals("")) {
                        strG = k(S());
                    }
                    str = g.V() + strG;
                    z3 = false;
                } catch (Throwable th14) {
                    th = th14;
                    com.uc.crashsdk.a.a.d("DEBUG", "get java log name failed: " + th);
                    a(th);
                    com.uc.crashsdk.a.a.d("DEBUG", "original exception is: " + th);
                    a(th);
                    str = null;
                    z3 = true;
                    try {
                        if (z12) {
                        }
                        boolean z13 = th instanceof OutOfMemoryError;
                        a(th, str, r12, z13);
                        com.uc.crashsdk.a.a.d("DEBUG", "generate java report finished");
                        if (!com.uc.crashsdk.b.L()) {
                            String name = new File(str).getName();
                            String strW = g.W();
                            file = new File(strW);
                            if (!file.exists()) {
                            }
                            String str2 = String.format(Locale.US, "%s%s.hprof", strW, name);
                            com.uc.crashsdk.a.a.d("DEBUG", "begin dump hprof: " + str2);
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                Debug.dumpHprofData(str2);
                            } catch (Throwable th15) {
                                com.uc.crashsdk.a.g.a(th15);
                            }
                            com.uc.crashsdk.a.a.d("DEBUG", "end dump hprof, use " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                        }
                        if (r12 != 0) {
                            JNIBridge.nativeClientCloseConnection(r12);
                        }
                        if (!z2) {
                        }
                        if (!z7) {
                            b(false);
                        }
                        f.c(false);
                        zI4 = g.i();
                        if (!com.uc.crashsdk.a.d.e()) {
                        }
                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI4);
                        if (zI4) {
                            uncaughtExceptionHandler4.uncaughtException(thread, th);
                        }
                        if (com.uc.crashsdk.b.B()) {
                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                        }
                        U = true;
                        if (Process.myPid() > 0) {
                        }
                    } catch (Throwable th16) {
                        th = th16;
                    }
                }
            } catch (Throwable th17) {
                th = th17;
                zT = false;
            }
            try {
                if (z12) {
                    try {
                        g.a();
                        try {
                            if (com.uc.crashsdk.b.B()) {
                                f.a(3);
                            } else {
                                f.a(4);
                            }
                        } catch (Throwable th18) {
                            com.uc.crashsdk.a.g.a(th18);
                        }
                    } catch (Throwable th19) {
                        com.uc.crashsdk.a.g.a(th19);
                    }
                    try {
                        new File(com.uc.crashsdk.b.b()).createNewFile();
                    } catch (Throwable th20) {
                        com.uc.crashsdk.a.g.a(th20);
                    }
                    if (zT) {
                        com.uc.crashsdk.a.a.d("DEBUG", "omit java crash");
                        if (z2) {
                            try {
                                if (!g.r() || z12) {
                                    z6 = false;
                                } else {
                                    try {
                                        a(true, false);
                                        z6 = true;
                                    } catch (Throwable th21) {
                                        th = th21;
                                        z6 = true;
                                        com.uc.crashsdk.a.g.a(th);
                                        if (!z6) {
                                            b(false);
                                        }
                                        f.c(false);
                                        zI3 = g.i();
                                        if (!com.uc.crashsdk.a.d.e()) {
                                        }
                                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI3);
                                        if (zI3) {
                                            uncaughtExceptionHandler3.uncaughtException(thread, th);
                                        }
                                        if (com.uc.crashsdk.b.B()) {
                                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                        }
                                        U = true;
                                        if (Process.myPid() <= 0) {
                                        }
                                    }
                                }
                            } catch (Throwable th22) {
                                th = th22;
                                z6 = false;
                            }
                        }
                        if (!z6 && !z12) {
                            b(false);
                        }
                        try {
                            f.c(false);
                        } catch (Throwable th23) {
                            com.uc.crashsdk.a.g.a(th23);
                        }
                        try {
                            zI3 = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                                zI3 = true;
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI3);
                            if (zI3 && (uncaughtExceptionHandler3 = S) != null) {
                                uncaughtExceptionHandler3.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B() && !z12) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                        } catch (Throwable th24) {
                            com.uc.crashsdk.a.g.a(th24);
                        }
                        U = true;
                        if (Process.myPid() <= 0) {
                            Process.killProcess(Process.myPid());
                            return;
                        }
                        return;
                    }
                    if (!d(LogType.JAVA_TYPE)) {
                        com.uc.crashsdk.a.a.d("DEBUG", "java log sample miss");
                        if (z2) {
                            try {
                                if (!g.r() || z12) {
                                    z5 = false;
                                } else {
                                    try {
                                        a(true, false);
                                        z5 = true;
                                    } catch (Throwable th25) {
                                        th = th25;
                                        z5 = true;
                                        com.uc.crashsdk.a.g.a(th);
                                        if (!z5) {
                                            b(false);
                                        }
                                        f.c(false);
                                        zI2 = g.i();
                                        if (!com.uc.crashsdk.a.d.e()) {
                                        }
                                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI2);
                                        if (zI2) {
                                            uncaughtExceptionHandler2.uncaughtException(thread, th);
                                        }
                                        if (com.uc.crashsdk.b.B()) {
                                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                        }
                                        U = true;
                                        if (Process.myPid() <= 0) {
                                        }
                                    }
                                }
                            } catch (Throwable th26) {
                                th = th26;
                                z5 = false;
                            }
                        }
                        if (!z5 && !z12) {
                            b(false);
                        }
                        try {
                            f.c(false);
                        } catch (Throwable th27) {
                            com.uc.crashsdk.a.g.a(th27);
                        }
                        try {
                            zI2 = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                                zI2 = true;
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI2);
                            if (zI2 && (uncaughtExceptionHandler2 = S) != null) {
                                uncaughtExceptionHandler2.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B() && !z12) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                        } catch (Throwable th28) {
                            com.uc.crashsdk.a.g.a(th28);
                        }
                        U = true;
                        if (Process.myPid() <= 0) {
                            Process.killProcess(Process.myPid());
                            return;
                        }
                        return;
                    }
                    r12 = 0;
                } else {
                    if (zT) {
                        str = "omit";
                        com.uc.crashsdk.a.a.d("DEBUG", "omit java crash");
                    }
                    long jNativeClientCreateConnection = com.uc.crashsdk.b.d ? JNIBridge.nativeClientCreateConnection(str, LogType.JAVA_TYPE, null, 0) : 0L;
                    r12 = jNativeClientCreateConnection;
                    if (jNativeClientCreateConnection == 0) {
                        com.uc.crashsdk.a.a.d("DEBUG", "skip java crash:");
                        a(th);
                        if (jNativeClientCreateConnection != 0 && com.uc.crashsdk.b.d) {
                            JNIBridge.nativeClientCloseConnection(jNativeClientCreateConnection);
                        }
                        if (z2) {
                            try {
                                if (!g.r() || z12) {
                                    z9 = false;
                                } else {
                                    try {
                                        a(true, false);
                                        z9 = true;
                                    } catch (Throwable th29) {
                                        th = th29;
                                        z9 = true;
                                        com.uc.crashsdk.a.g.a(th);
                                        if (!z9) {
                                            b(false);
                                        }
                                        f.c(false);
                                        zI6 = g.i();
                                        if (!com.uc.crashsdk.a.d.e()) {
                                        }
                                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI6);
                                        if (zI6) {
                                            uncaughtExceptionHandler6.uncaughtException(thread, th);
                                        }
                                        if (com.uc.crashsdk.b.B()) {
                                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                        }
                                        U = true;
                                        if (Process.myPid() <= 0) {
                                        }
                                    }
                                }
                            } catch (Throwable th30) {
                                th = th30;
                                z9 = false;
                            }
                        }
                        if (!z9 && !z12) {
                            b(false);
                        }
                        try {
                            f.c(false);
                        } catch (Throwable th31) {
                            com.uc.crashsdk.a.g.a(th31);
                        }
                        try {
                            zI6 = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                                zI6 = true;
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI6);
                            if (zI6 && (uncaughtExceptionHandler6 = S) != null) {
                                uncaughtExceptionHandler6.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B() && !z12) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                        } catch (Throwable th32) {
                            com.uc.crashsdk.a.g.a(th32);
                        }
                        U = true;
                        if (Process.myPid() <= 0) {
                            Process.killProcess(Process.myPid());
                            return;
                        }
                        return;
                    }
                    if (zT) {
                        if (jNativeClientCreateConnection != 0 && com.uc.crashsdk.b.d) {
                            JNIBridge.nativeClientCloseConnection(jNativeClientCreateConnection);
                        }
                        if (z2) {
                            try {
                                if (!g.r() || z12) {
                                    z8 = false;
                                } else {
                                    try {
                                        a(true, false);
                                        z8 = true;
                                    } catch (Throwable th33) {
                                        th = th33;
                                        z8 = true;
                                        com.uc.crashsdk.a.g.a(th);
                                        if (!z8) {
                                            b(false);
                                        }
                                        f.c(false);
                                        zI5 = g.i();
                                        if (!com.uc.crashsdk.a.d.e()) {
                                        }
                                        com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI5);
                                        if (zI5) {
                                            uncaughtExceptionHandler5.uncaughtException(thread, th);
                                        }
                                        if (com.uc.crashsdk.b.B()) {
                                            com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                                        }
                                        U = true;
                                        if (Process.myPid() <= 0) {
                                        }
                                    }
                                }
                            } catch (Throwable th34) {
                                th = th34;
                                z8 = false;
                            }
                        }
                        if (!z8 && !z12) {
                            b(false);
                        }
                        try {
                            f.c(false);
                        } catch (Throwable th35) {
                            com.uc.crashsdk.a.g.a(th35);
                        }
                        try {
                            zI5 = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                                zI5 = true;
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI5);
                            if (zI5 && (uncaughtExceptionHandler5 = S) != null) {
                                uncaughtExceptionHandler5.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B() && !z12) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                        } catch (Throwable th36) {
                            com.uc.crashsdk.a.g.a(th36);
                        }
                        U = true;
                        if (Process.myPid() <= 0) {
                            Process.killProcess(Process.myPid());
                            return;
                        }
                        return;
                    }
                }
                boolean z132 = th instanceof OutOfMemoryError;
                a(th, str, r12, z132);
                com.uc.crashsdk.a.a.d("DEBUG", "generate java report finished");
                if (!com.uc.crashsdk.b.L() && z132 && g.j()) {
                    String name2 = new File(str).getName();
                    String strW2 = g.W();
                    file = new File(strW2);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    String str22 = String.format(Locale.US, "%s%s.hprof", strW2, name2);
                    com.uc.crashsdk.a.a.d("DEBUG", "begin dump hprof: " + str22);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    Debug.dumpHprofData(str22);
                    com.uc.crashsdk.a.a.d("DEBUG", "end dump hprof, use " + (System.currentTimeMillis() - jCurrentTimeMillis2) + " ms");
                }
                if (r12 != 0 && com.uc.crashsdk.b.d) {
                    JNIBridge.nativeClientCloseConnection(r12);
                }
                if (!z2) {
                    try {
                        if (!g.r() || z12) {
                            z7 = false;
                        } else {
                            try {
                                a(true, false);
                                z7 = true;
                            } catch (Throwable th37) {
                                th3 = th37;
                                z7 = true;
                                com.uc.crashsdk.a.g.a(th3);
                                if (!z7) {
                                }
                                f.c(false);
                                zI4 = g.i();
                                if (!com.uc.crashsdk.a.d.e()) {
                                }
                                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI4);
                                if (zI4) {
                                }
                                if (com.uc.crashsdk.b.B()) {
                                }
                                U = true;
                                if (Process.myPid() > 0) {
                                }
                            }
                        }
                    } catch (Throwable th38) {
                        th3 = th38;
                        z7 = false;
                    }
                }
                if (!z7 && !z12) {
                    b(false);
                }
                try {
                    f.c(false);
                } catch (Throwable th39) {
                    com.uc.crashsdk.a.g.a(th39);
                }
                try {
                    zI4 = g.i();
                    if (!com.uc.crashsdk.a.d.e()) {
                        zI4 = true;
                    }
                    com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI4);
                    if (zI4 && (uncaughtExceptionHandler4 = S) != null) {
                        uncaughtExceptionHandler4.uncaughtException(thread, th);
                    }
                    if (com.uc.crashsdk.b.B() && !z12) {
                        com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                    }
                } catch (Throwable th40) {
                    com.uc.crashsdk.a.g.a(th40);
                }
                U = true;
                if (Process.myPid() > 0) {
                    Process.killProcess(Process.myPid());
                    return;
                }
                return;
            } catch (Throwable th41) {
                th = th41;
            }
        } catch (Throwable th42) {
            th = th42;
            z3 = false;
        }
        th = th42;
        z3 = false;
        r12 = 0;
        try {
            com.uc.crashsdk.a.a.d("DEBUG", "exception occurs while java log: " + th);
            a(th);
            if (!z3) {
                com.uc.crashsdk.a.a.d("DEBUG", "original exception is: " + th);
                a(th);
            }
            if (r12 != 0 && com.uc.crashsdk.b.d) {
                JNIBridge.nativeClientCloseConnection(r12);
            }
            if (z2) {
                try {
                    if (!g.r() || z12) {
                        z4 = false;
                    } else {
                        try {
                            a(true, false);
                            z4 = true;
                        } catch (Throwable th43) {
                            th2 = th43;
                            z4 = true;
                            com.uc.crashsdk.a.g.a(th2);
                            if (!z4) {
                                b(false);
                            }
                            f.c(false);
                            zI = g.i();
                            if (!com.uc.crashsdk.a.d.e()) {
                            }
                            com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI);
                            if (zI) {
                                uncaughtExceptionHandler.uncaughtException(thread, th);
                            }
                            if (com.uc.crashsdk.b.B()) {
                                com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                            }
                            U = true;
                            if (Process.myPid() <= 0) {
                            }
                        }
                    }
                } catch (Throwable th44) {
                    th2 = th44;
                    z4 = false;
                }
            }
            if (!z4 && !z12) {
                b(false);
            }
            try {
                f.c(false);
            } catch (Throwable th45) {
                com.uc.crashsdk.a.g.a(th45);
            }
            try {
                zI = g.i();
                if (!com.uc.crashsdk.a.d.e()) {
                    zI = true;
                }
                com.uc.crashsdk.a.a.a("crashsdk", "Call java default handler: " + zI);
                if (zI && (uncaughtExceptionHandler = S) != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
                if (com.uc.crashsdk.b.B() && !z12) {
                    com.uc.crashsdk.b.b(com.uc.crashsdk.a.g.a());
                }
            } catch (Throwable th46) {
                com.uc.crashsdk.a.g.a(th46);
            }
            U = true;
            if (Process.myPid() <= 0) {
                Process.killProcess(Process.myPid());
            }
        } finally {
        }
    }

    private static void a(Throwable th) {
        try {
            com.uc.crashsdk.a.a.d("DEBUG", a(th.getStackTrace(), (String) null).toString());
        } catch (Throwable unused) {
        }
    }

    private static void a(Calendar calendar) {
        if (g.Q()) {
            long timeInMillis = calendar.getTimeInMillis();
            calendar.add(5, 1);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            long timeInMillis2 = calendar.getTimeInMillis();
            long j2 = timeInMillis2 - timeInMillis;
            long j3 = Cdo.f28825for;
            if (j2 <= Cdo.f28825for) {
                j3 = 1000 + j2;
            }
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(415, new Object[]{Long.valueOf(timeInMillis2)}), j3);
        }
    }

    public static StringBuilder a(StackTraceElement[] stackTraceElementArr, String str) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            boolean z2 = str == null;
            int i3 = 0;
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                i3++;
                sb.append("  at ");
                sb.append(stackTraceElement.toString());
                sb.append("\n");
                if (!z2 && stackTraceElement.getMethodName().contains(str)) {
                    sb.delete(0, sb.length());
                    z2 = true;
                    i3 = 0;
                }
            }
            i2 = i3;
        }
        if (i2 == 0) {
            sb.append("  (no java stack)\n");
        }
        return sb;
    }

    public static boolean a(ParcelFileDescriptor parcelFileDescriptor) {
        if (ad) {
            com.uc.crashsdk.a.a.d("crashsdk", "Can not call setHostFd and getHostFd in the same process!");
            return false;
        }
        if (!com.uc.crashsdk.b.d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return false;
        }
        if (ac != null) {
            com.uc.crashsdk.a.a.c("crashsdk", "Has already set host fd!");
        }
        ac = parcelFileDescriptor;
        int fd = parcelFileDescriptor.getFd();
        int iNativeCmd = (int) JNIBridge.nativeCmd(13, fd, null, null);
        ae = iNativeCmd != -1;
        return fd == -1 || iNativeCmd != -1;
    }
}
