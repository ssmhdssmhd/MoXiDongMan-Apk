package android.support.v4;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.content.FileProvider;
import com.wsw.cospa.bean.AppUpdateInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* loaded from: classes2.dex */
public class z2 {

    /* renamed from: do, reason: not valid java name */
    public static final String f8422do = "ignore_version";

    /* renamed from: if, reason: not valid java name */
    private static final String f8423if = "update_app_config.xml";

    /* renamed from: break, reason: not valid java name */
    public static DisplayMetrics m10021break(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    /* renamed from: case, reason: not valid java name */
    public static File m10022case(AppUpdateInfo appUpdateInfo) {
        return new File(wq.f7618native, appUpdateInfo.getAppName());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m10023catch(File file) throws Throwable {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return "";
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
        }
        try {
            MappedByteBuffer map = fileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, file.length());
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(map);
            String strM10031if = m10031if(messageDigest.digest());
            try {
                fileInputStream.close();
            } catch (IOException unused) {
            }
            return strM10031if;
        } catch (IOException e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused2) {
                }
            }
            return "";
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (fileInputStream2 != null) {
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Intent m10024class(Context context, File file) {
        try {
            Uri uriForFile = FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".fileProvider", file);
            Intent intent = new Intent("android.intent.action.VIEW");
            if (Build.VERSION.SDK_INT >= 24) {
                intent.setFlags(1);
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            return intent;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static String m10025const(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m10026do(AppUpdateInfo appUpdateInfo) {
        File fileM10022case = m10022case(appUpdateInfo);
        return !TextUtils.isEmpty(appUpdateInfo.getAppMd5()) && fileM10022case.exists() && m10023catch(fileM10022case).equalsIgnoreCase(appUpdateInfo.getAppMd5());
    }

    /* renamed from: else, reason: not valid java name */
    public static Drawable m10027else(Context context) {
        try {
            return context.getPackageManager().getApplicationIcon(context.getPackageName());
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static PackageInfo m10028final(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m10029for(int i, Context context) {
        return (int) ((i * m10040this(context)) + 0.5f);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m10030goto(Context context) {
        PackageInfo packageInfoM10028final = m10028final(context);
        return packageInfoM10028final != null ? packageInfoM10028final.applicationInfo.loadLabel(context.getPackageManager()).toString() : "";
    }

    /* renamed from: if, reason: not valid java name */
    public static String m10031if(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        char[] cArr2 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i + 1;
            cArr[i] = cArr2[(bArr[i2] >>> 4) & 15];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m10032import(Context context, String str) {
        m10033native(context, new File(str));
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m10033native(Context context, File file) {
        try {
            Uri uriForFile = FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".fileprovider", file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.setFlags(1);
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            if (context.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                context.startActivity(intent);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Bitmap m10034new(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* renamed from: public, reason: not valid java name */
    public static void m10035public(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(268435456);
            Uri uriForFile = FileProvider.getUriForFile(context, "com.wsw.cospa.fileprovider", file);
            intent.addFlags(1);
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        }
        context.startActivity(intent);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m10036return(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m10037static(Context context, String str) {
        return m10038super(context).getString(f8422do, "").equals(str);
    }

    /* renamed from: super, reason: not valid java name */
    private static SharedPreferences m10038super(Context context) {
        return context.getSharedPreferences(f8423if, 0);
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m10039switch(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    /* renamed from: this, reason: not valid java name */
    public static float m10040this(Context context) {
        return m10021break(context).density;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m10041throw(Context context) {
        PackageInfo packageInfoM10028final = m10028final(context);
        if (packageInfoM10028final != null) {
            return packageInfoM10028final.versionCode;
        }
        return 0;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m10042throws(Context context, String str) {
        m10038super(context).edit().putString(f8422do, str).apply();
    }

    /* renamed from: try, reason: not valid java name */
    public static String m10043try(AppUpdateInfo appUpdateInfo) {
        String appUrl = appUpdateInfo.getAppUrl();
        String strSubstring = appUrl.substring(appUrl.lastIndexOf(on0.f4694final) + 1, appUrl.length());
        return !strSubstring.endsWith(".apk") ? "temp.apk" : strSubstring;
    }

    /* renamed from: while, reason: not valid java name */
    public static String m10044while(Context context) {
        PackageInfo packageInfoM10028final = m10028final(context);
        return packageInfoM10028final != null ? packageInfoM10028final.versionName : "";
    }
}
