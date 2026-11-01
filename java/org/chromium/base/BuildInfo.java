package org.chromium.base;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.ed;
import android.support.v4.g2;
import android.text.TextUtils;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import freemarker.core.b2;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public class BuildInfo {

    /* renamed from: const, reason: not valid java name */
    private static final String f32935const = "BuildInfo";

    /* renamed from: final, reason: not valid java name */
    private static final int f32936final = 128;

    /* renamed from: import, reason: not valid java name */
    private static String f32937import = "";

    /* renamed from: native, reason: not valid java name */
    public static final /* synthetic */ boolean f32938native = false;

    /* renamed from: super, reason: not valid java name */
    private static PackageInfo f32939super = null;

    /* renamed from: throw, reason: not valid java name */
    private static boolean f32940throw = false;

    /* renamed from: while, reason: not valid java name */
    public static final int f32941while = 31;

    /* renamed from: break, reason: not valid java name */
    public final String f32942break;

    /* renamed from: case, reason: not valid java name */
    public final String f32943case;

    /* renamed from: catch, reason: not valid java name */
    public final String f32944catch;

    /* renamed from: class, reason: not valid java name */
    public final boolean f32945class;

    /* renamed from: do, reason: not valid java name */
    public final String f32946do;

    /* renamed from: else, reason: not valid java name */
    public final String f32947else;

    /* renamed from: for, reason: not valid java name */
    public final String f32948for;

    /* renamed from: goto, reason: not valid java name */
    public final String f32949goto;

    /* renamed from: if, reason: not valid java name */
    public final long f32950if;

    /* renamed from: new, reason: not valid java name */
    public final long f32951new;

    /* renamed from: this, reason: not valid java name */
    public final String f32952this;

    /* renamed from: try, reason: not valid java name */
    public final String f32953try;

    /* renamed from: org.chromium.base.BuildInfo$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static BuildInfo f32954do = new BuildInfo();

        private Cif() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m36730break() {
        return Ctry.m37273case().getApplicationInfo().targetSdkVersion >= 31;
    }

    /* renamed from: case, reason: not valid java name */
    private static String m36731case(CharSequence charSequence) {
        return charSequence == null ? "" : charSequence.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static String m36732do() {
        return f32937import;
    }

    /* renamed from: else, reason: not valid java name */
    private static long m36733else(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? g2.m2508if(packageInfo) : packageInfo.versionCode;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m36734for(@NonNull String str, @NonNull String str2) {
        return !"REL".equals(str2) && str2.compareTo(str) >= 0;
    }

    @CalledByNative
    private static String[] getAll() {
        BuildInfo buildInfoM36736if = m36736if();
        String packageName = Ctry.m37273case().getPackageName();
        String[] strArr = new String[25];
        strArr[0] = Build.BRAND;
        strArr[1] = Build.DEVICE;
        strArr[2] = Build.ID;
        strArr[3] = Build.MANUFACTURER;
        strArr[4] = Build.MODEL;
        strArr[5] = String.valueOf(Build.VERSION.SDK_INT);
        strArr[6] = Build.TYPE;
        strArr[7] = Build.BOARD;
        strArr[8] = packageName;
        strArr[9] = String.valueOf(buildInfoM36736if.f32950if);
        strArr[10] = buildInfoM36736if.f32946do;
        strArr[11] = buildInfoM36736if.f32948for;
        strArr[12] = String.valueOf(buildInfoM36736if.f32951new);
        strArr[13] = buildInfoM36736if.f32953try;
        strArr[14] = buildInfoM36736if.f32952this;
        strArr[15] = buildInfoM36736if.f32947else;
        strArr[16] = buildInfoM36736if.f32943case;
        strArr[17] = buildInfoM36736if.f32949goto;
        strArr[18] = f32937import;
        strArr[19] = buildInfoM36736if.f32942break;
        strArr[20] = buildInfoM36736if.f32944catch;
        strArr[21] = String.valueOf(Ctry.m37273case().getApplicationInfo().targetSdkVersion);
        strArr[22] = m36739try() ? "1" : "0";
        strArr[23] = buildInfoM36736if.f32945class ? "1" : "0";
        strArr[24] = Build.VERSION.INCREMENTAL;
        return strArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m36735goto(PackageInfo packageInfo) {
        f32939super = packageInfo;
    }

    /* renamed from: if, reason: not valid java name */
    public static BuildInfo m36736if() {
        return Cif.f32954do;
    }

    @ChecksSdkIntAtLeast(api = 31, codename = ExifInterface.LATITUDE_SOUTH)
    /* renamed from: new, reason: not valid java name */
    public static boolean m36737new() {
        return Build.VERSION.SDK_INT >= 31 || m36734for(ExifInterface.LATITUDE_SOUTH, Build.VERSION.CODENAME);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m36738this(String str) {
        f32937import = str;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m36739try() {
        String str = Build.TYPE;
        return "eng".equals(str) || "userdebug".equals(str);
    }

    private BuildInfo() throws PackageManager.NameNotFoundException {
        boolean z = true;
        f32940throw = true;
        try {
            Context contextM37273case = Ctry.m37273case();
            String packageName = contextM37273case.getPackageName();
            PackageManager packageManager = contextM37273case.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            long jM36733else = m36733else(packageInfo);
            this.f32950if = jM36733else;
            PackageInfo packageInfo2 = f32939super;
            PackageInfo packageInfo3 = null;
            if (packageInfo2 != null) {
                this.f32948for = packageInfo2.packageName;
                this.f32951new = m36733else(packageInfo2);
                this.f32953try = m36731case(f32939super.versionName);
                f32939super = null;
            } else {
                this.f32948for = packageName;
                this.f32951new = jM36733else;
                this.f32953try = m36731case(packageInfo.versionName);
            }
            this.f32946do = m36731case(packageManager.getApplicationLabel(packageInfo.applicationInfo));
            this.f32943case = m36731case(packageManager.getInstallerPackageName(this.f32948for));
            try {
                packageInfo3 = packageManager.getPackageInfo("com.google.android.gms", 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            this.f32947else = packageInfo3 != null ? String.valueOf(m36733else(packageInfo3)) : "gms versionCode not available.";
            String str = b2.f23511if;
            try {
                packageManager.getPackageInfo("projekt.substratum", 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                str = b2.f23510do;
            }
            this.f32942break = str;
            String string = "Not Enabled";
            if (ed.f1401try != 0) {
                try {
                    string = Ctry.m37273case().getString(ed.f1401try);
                } catch (Exception unused3) {
                    string = "Not found";
                }
            }
            this.f32944catch = string;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f32949goto = TextUtils.join(", ", Build.SUPPORTED_ABIS);
            } else {
                this.f32949goto = String.format("ABI1: %s, ABI2: %s", Build.CPU_ABI, Build.CPU_ABI2);
            }
            String str2 = Build.FINGERPRINT;
            this.f32952this = str2.substring(0, Math.min(str2.length(), 128));
            UiModeManager uiModeManager = (UiModeManager) contextM37273case.getSystemService("uimode");
            if (uiModeManager == null || uiModeManager.getCurrentModeType() != 4) {
                z = false;
            }
            this.f32945class = z;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
