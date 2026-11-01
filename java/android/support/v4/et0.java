package android.support.v4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class et0 {

    /* renamed from: do, reason: not valid java name */
    private static final int f1582do = 7;

    /* renamed from: case, reason: not valid java name */
    private static boolean m2015case(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        m2016do(activity, z, z2);
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField(Cnew.f18148this).getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z4 ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window, objArr);
            return true;
        } catch (Exception unused) {
            m2018if(activity, z, z2, z3, z4);
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m2016do(Activity activity, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT >= 16) {
            if (z && z2) {
                activity.getWindow().getDecorView().setSystemUiVisibility(256);
                return;
            }
            if (!z && !z2) {
                activity.getWindow().getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            } else {
                if (z || !z2) {
                    return;
                }
                activity.getWindow().getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m2017for(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (activity != null) {
            m2016do(activity, z, z2);
            try {
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z4 ? i | i2 : (i ^ (-1)) & i2);
                activity.getWindow().setAttributes(attributes);
                return true;
            } catch (Exception unused) {
                m2018if(activity, z, z2, z3, z4);
            }
        }
        return false;
    }

    @TargetApi(11)
    /* renamed from: if, reason: not valid java name */
    private static void m2018if(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) {
        try {
            if (z3) {
                Window window = activity.getWindow();
                int i = Build.VERSION.SDK_INT;
                if (i >= 21) {
                    if (z && z2) {
                        if (!z4 || i < 23) {
                            window.getDecorView().setSystemUiVisibility(256);
                        } else {
                            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_EXIT);
                        }
                    } else if (z || z2) {
                        if (z || !z2) {
                            return;
                        }
                        if (!z4 || i < 23) {
                            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
                        } else {
                            window.getDecorView().setSystemUiVisibility(9472);
                        }
                    } else if (!z4 || i < 23) {
                        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
                    } else {
                        window.getDecorView().setSystemUiVisibility(9472);
                    }
                }
            } else {
                View decorView = activity.getWindow().getDecorView();
                if (!z4 || Build.VERSION.SDK_INT < 23) {
                    decorView.setSystemUiVisibility(0);
                } else {
                    decorView.setSystemUiVisibility(8192);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m2019new(Activity activity, boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        m2020try(activity, false, false, false, z);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2020try(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int iM6160do = po1.m6160do();
        if (iM6160do == 1) {
            if (po1.m6164if() >= 7) {
                m2018if(activity, z, z2, z3, z4);
                return;
            } else {
                m2015case(activity, z, z2, z3, z4);
                return;
            }
        }
        if (iM6160do == 2) {
            m2017for(activity, z, z2, z3, z4);
        } else {
            if (iM6160do != 3) {
                return;
            }
            m2018if(activity, z, z2, z3, z4);
        }
    }
}
