package android.support.v4;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;
import com.wsw.cospa.utils.Ctransient;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class dt0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f1128do = "LightStatusBarUtil";

    /* renamed from: do, reason: not valid java name */
    private static void m1545do(Activity activity, boolean z) {
        View decorView = activity.getWindow().getDecorView();
        if (z) {
            decorView.setSystemUiVisibility(9216);
        } else {
            decorView.setSystemUiVisibility(0);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1546for(Activity activity, boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int iM27133do = Ctransient.m27133do();
        if (iM27133do == 1) {
            m1548new(activity, z);
        } else if (iM27133do == 2) {
            m1547if(activity, z);
        } else {
            if (iM27133do != 3) {
                return;
            }
            m1545do(activity, z);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m1547if(Activity activity, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (activity != null) {
            try {
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z ? i2 | i : (i ^ (-1)) & i2);
                activity.getWindow().setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m1548new(Activity activity, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Window window = activity.getWindow();
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField(Cnew.f18148this).getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        if (z) {
                            activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                        } else {
                            activity.getWindow().getDecorView().setSystemUiVisibility(0);
                        }
                    }
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            } catch (Exception unused2) {
            }
        }
        return false;
    }
}
