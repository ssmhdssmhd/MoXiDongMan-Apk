package org.chromium.base;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.provider.MediaStore;
import android.support.v4.b22;
import android.support.v4.cx0;
import android.support.v4.e2;
import android.support.v4.rv0;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import org.chromium.base.PathUtils;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.compat.Cfor;
import org.chromium.base.compat.Cnew;
import org.chromium.base.task.Cdo;

@cx0
/* loaded from: classes3.dex */
public abstract class PathUtils {

    /* renamed from: break, reason: not valid java name */
    private static String f33047break = null;

    /* renamed from: case, reason: not valid java name */
    private static final int f33048case = 3;

    /* renamed from: catch, reason: not valid java name */
    public static final /* synthetic */ boolean f33049catch = false;

    /* renamed from: do, reason: not valid java name */
    private static final String f33050do = "PathUtils";

    /* renamed from: else, reason: not valid java name */
    private static final AtomicBoolean f33051else = new AtomicBoolean();

    /* renamed from: for, reason: not valid java name */
    private static final int f33052for = 0;

    /* renamed from: goto, reason: not valid java name */
    private static FutureTask<String[]> f33053goto = null;

    /* renamed from: if, reason: not valid java name */
    private static final String f33054if = "textures";

    /* renamed from: new, reason: not valid java name */
    private static final int f33055new = 1;

    /* renamed from: this, reason: not valid java name */
    private static String f33056this = null;

    /* renamed from: try, reason: not valid java name */
    private static final int f33057try = 2;

    private PathUtils() {
    }

    /* renamed from: case, reason: not valid java name */
    public static void m36881case(String str) {
        m36883else(str, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m36883else(String str, String str2) {
        if (f33051else.getAndSet(true)) {
            return;
        }
        f33056this = str;
        f33047break = str2;
        f33053goto = new FutureTask<>(new Callable() { // from class: android.support.v4.vc1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PathUtils.m36885goto();
            }
        });
        Cdo.f33249else.execute(f33053goto);
    }

    /* renamed from: for, reason: not valid java name */
    private static String m36884for(int i) {
        return m36887new()[i];
    }

    @NonNull
    @CalledByNative
    public static String[] getAllPrivateDownloadsDirectories() {
        List arrayList = new ArrayList();
        b22 b22VarM430new = b22.m430new();
        try {
            File[] externalFilesDirs = Ctry.m37273case().getExternalFilesDirs(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDirs != null) {
                arrayList = Arrays.asList(externalFilesDirs);
            }
            if (b22VarM430new != null) {
                b22VarM430new.close();
            }
            return m36888this(arrayList);
        } catch (Throwable th) {
            if (b22VarM430new != null) {
                try {
                    b22VarM430new.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @CalledByNative
    public static String getCacheDirectory() {
        return m36884for(2);
    }

    @CalledByNative
    public static String getDataDirectory() {
        return m36884for(0);
    }

    @NonNull
    @CalledByNative
    public static String getDownloadsDirectory() {
        b22 b22VarM428for = b22.m428for();
        try {
            if (Build.VERSION.SDK_INT < 29) {
                String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                if (b22VarM428for != null) {
                    b22VarM428for.close();
                }
                return path;
            }
            String[] allPrivateDownloadsDirectories = getAllPrivateDownloadsDirectories();
            String str = allPrivateDownloadsDirectories.length == 0 ? "" : allPrivateDownloadsDirectories[0];
            if (b22VarM428for != null) {
                b22VarM428for.close();
            }
            return str;
        } catch (Throwable th) {
            if (b22VarM428for != null) {
                try {
                    b22VarM428for.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @NonNull
    @RequiresApi(30)
    @CalledByNative
    public static String[] getExternalDownloadVolumesNames() {
        ArrayList arrayList = new ArrayList();
        for (String str : Cfor.m37031case(Ctry.m37273case())) {
            if (!TextUtils.isEmpty(str) && !str.contains("external_primary")) {
                arrayList.add(new File(Cnew.m37059if((StorageManager) e2.m1626super(Ctry.m37273case(), StorageManager.class), MediaStore.Files.getContentUri(str)).getAbsolutePath(), Environment.DIRECTORY_DOWNLOADS));
            }
        }
        return m36888this(arrayList);
    }

    @CalledByNative
    public static String getExternalStorageDirectory() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    @CalledByNative
    private static String getNativeLibraryDirectory() {
        ApplicationInfo applicationInfo = Ctry.m37273case().getApplicationInfo();
        int i = applicationInfo.flags;
        return ((i & 128) != 0 || (i & 1) == 0) ? applicationInfo.nativeLibraryDir : "/system/lib/";
    }

    @CalledByNative
    public static String getThumbnailCacheDirectory() {
        return m36884for(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static String[] m36885goto() throws ErrnoException {
        String[] strArr = new String[3];
        Context contextM37273case = Ctry.m37273case();
        strArr[0] = contextM37273case.getDir(f33056this, 0).getPath();
        m36886if(strArr[0], 448);
        strArr[1] = contextM37273case.getDir(f33054if, 0).getPath();
        if (contextM37273case.getCacheDir() != null) {
            if (f33047break == null) {
                strArr[2] = contextM37273case.getCacheDir().getPath();
            } else {
                File file = new File(contextM37273case.getCacheDir(), f33047break);
                file.mkdir();
                strArr[2] = file.getPath();
                m36886if(strArr[2], 1472);
            }
        }
        return strArr;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: if, reason: not valid java name */
    private static void m36886if(String str, int i) throws ErrnoException {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        try {
            Os.chmod(str, i);
        } catch (Exception unused) {
            rv0.m7156if(f33050do, "Failed to set permissions for path \"" + str + "\"", new Object[0]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static String[] m36887new() {
        if (!f33053goto.isDone()) {
            b22 b22VarM430new = b22.m430new();
            try {
                f33053goto.run();
                if (b22VarM430new != null) {
                    b22VarM430new.close();
                }
            } catch (Throwable th) {
                if (b22VarM430new != null) {
                    try {
                        b22VarM430new.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        try {
            return f33053goto.get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    private static String[] m36888this(@NonNull List<File> list) {
        ArrayList arrayList = new ArrayList();
        for (File file : list) {
            if (file != null && !TextUtils.isEmpty(file.getAbsolutePath())) {
                arrayList.add(file.getAbsolutePath());
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36889try() {
        f33051else.set(false);
        f33053goto = null;
        f33056this = null;
        f33047break = null;
    }
}
