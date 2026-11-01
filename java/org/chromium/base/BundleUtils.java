package org.chromium.base;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.b22;
import android.support.v4.ed;
import android.support.v4.on0;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Field;
import java.util.Arrays;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.compat.Cif;
import org.chromium.base.metrics.RecordHistogram;

/* loaded from: classes3.dex */
public final class BundleUtils {

    /* renamed from: do, reason: not valid java name */
    private static Boolean f32955do;

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f32958new = false;

    /* renamed from: if, reason: not valid java name */
    private static final Object f32957if = new Object();

    /* renamed from: for, reason: not valid java name */
    private static final SimpleArrayMap<String, ClassLoader> f32956for = new SimpleArrayMap<>();

    /* renamed from: break, reason: not valid java name */
    public static void m36741break(boolean z) {
        f32955do = Boolean.valueOf(z);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m36742case() {
        if (ed.f1395else) {
            return f32955do.booleanValue();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007d A[Catch: all -> 0x00a9, TryCatch #0 {, blocks: (B:24:0x004f, B:26:0x0055, B:27:0x0075, B:29:0x007d, B:31:0x0087, B:34:0x0093, B:32:0x008b), top: B:46:0x004f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008b A[Catch: all -> 0x00a9, TryCatch #0 {, blocks: (B:24:0x004f, B:26:0x0055, B:27:0x0075, B:29:0x007d, B:31:0x0087, B:34:0x0093, B:32:0x008b), top: B:46:0x004f, outer: #1 }] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Context m36743do(Context context, String str) {
        Context contextM37049for;
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT < 26) {
            return context;
        }
        try {
            if (m36750try(context)) {
                contextM37049for = Cif.m37049for(context, str);
            } else {
                synchronized (m36748new()) {
                    contextM37049for = Cif.m37049for(context, str);
                }
            }
            ClassLoader parent = contextM37049for.getClassLoader().getParent();
            Context contextM37273case = Ctry.m37273case();
            boolean z = true;
            boolean z2 = (!m36746goto() || parent.equals(BundleUtils.class.getClassLoader()) || contextM37273case == null || parent.equals(contextM37273case.getClassLoader())) ? false : true;
            SimpleArrayMap<String, ClassLoader> simpleArrayMap = f32956for;
            synchronized (simpleArrayMap) {
                if (z2) {
                    if (!simpleArrayMap.containsKey(str)) {
                        simpleArrayMap.put(str, new PathClassLoader(contextM37049for.getApplicationInfo().splitSourceDirs[Arrays.binarySearch(Cif.m37056try(contextM37049for.getApplicationInfo()), str)], contextM37273case.getClassLoader()));
                    }
                    classLoader = simpleArrayMap.get(str);
                    if (classLoader != null) {
                        simpleArrayMap.put(str, contextM37049for.getClassLoader());
                    } else if (!classLoader.equals(contextM37049for.getClassLoader())) {
                        m36749this(contextM37049for, classLoader);
                    }
                    z = z2;
                } else {
                    classLoader = simpleArrayMap.get(str);
                    if (classLoader != null) {
                    }
                    z = z2;
                }
            }
            RecordHistogram.m37142new("Android.IsolatedSplits.ClassLoaderReplaced." + str, z);
            return contextM37049for;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m36744else(Context context, String str) {
        String[] strArrM37056try;
        return Build.VERSION.SDK_INT >= 26 && (strArrM37056try = Cif.m37056try(context.getApplicationInfo())) != null && Arrays.asList(strArrM37056try).contains(str);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private static String m36745for(String str, String str2) {
        ApplicationInfo applicationInfo;
        String[] strArrM37056try;
        int iBinarySearch;
        if (Build.VERSION.SDK_INT < 26 || (strArrM37056try = Cif.m37056try((applicationInfo = Ctry.m37273case().getApplicationInfo()))) == null || (iBinarySearch = Arrays.binarySearch(strArrM37056try, str2)) < 0) {
            return null;
        }
        try {
            return applicationInfo.splitSourceDirs[iBinarySearch] + "!/lib/" + ((String) applicationInfo.getClass().getField("primaryCpuAbi").get(applicationInfo)) + on0.f4694final + System.mapLibraryName(str);
        } catch (ReflectiveOperationException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    @CalledByNative
    public static String getNativeLibraryPath(String str, String str2) {
        b22 b22VarM428for = b22.m428for();
        try {
            String strFindLibrary = ((BaseDexClassLoader) BundleUtils.class.getClassLoader()).findLibrary(str);
            if (strFindLibrary != null) {
                if (b22VarM428for != null) {
                    b22VarM428for.close();
                }
                return strFindLibrary;
            }
            String strFindLibrary2 = ((BaseDexClassLoader) Ctry.m37273case().getClassLoader()).findLibrary(str);
            if (strFindLibrary2 != null) {
                if (b22VarM428for != null) {
                    b22VarM428for.close();
                }
                return strFindLibrary2;
            }
            String strM36745for = m36745for(str, str2);
            if (b22VarM428for != null) {
                b22VarM428for.close();
            }
            return strM36745for;
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

    /* renamed from: goto, reason: not valid java name */
    public static boolean m36746goto() {
        return ed.f1392break;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static String m36747if(String str) {
        return getNativeLibraryPath(str, "");
    }

    @CalledByNative
    public static boolean isBundleForNative() {
        return m36742case();
    }

    /* renamed from: new, reason: not valid java name */
    public static Object m36748new() {
        return f32957if;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m36749this(Context context, ClassLoader classLoader) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        while (context instanceof ContextWrapper) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        try {
            Field declaredField = context.getClass().getDeclaredField("mClassLoader");
            declaredField.setAccessible(true);
            declaredField.set(context, classLoader);
        } catch (ReflectiveOperationException e) {
            throw new RuntimeException("Error setting ClassLoader.", e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m36750try(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Application) {
                return true;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return false;
    }
}
