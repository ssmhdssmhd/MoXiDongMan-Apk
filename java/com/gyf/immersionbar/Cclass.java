package com.gyf.immersionbar;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.gyf.immersionbar.class, reason: invalid class name */
/* loaded from: classes2.dex */
class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static Method f18048do;

    /* renamed from: for, reason: not valid java name */
    private static Field f18049for;

    /* renamed from: if, reason: not valid java name */
    private static Method f18050if;

    /* renamed from: new, reason: not valid java name */
    private static int f18051new;

    static {
        try {
            f18048do = Activity.class.getMethod("setStatusBarDarkIcon", Integer.TYPE);
        } catch (NoSuchMethodException unused) {
        }
        try {
            f18050if = Activity.class.getMethod("setStatusBarDarkIcon", Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            f18049for = WindowManager.LayoutParams.class.getField("statusBarColor");
        } catch (NoSuchFieldException unused3) {
        }
        try {
            f18051new = View.class.getField("SYSTEM_UI_FLAG_LIGHT_STATUS_BAR").getInt(null);
        } catch (IllegalAccessException | NoSuchFieldException unused4) {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m22668break(Window window, boolean z) throws IllegalAccessException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT < 23) {
            m22671do(window.getAttributes(), "MEIZU_FLAG_DARK_STATUS_BAR_ICON", z);
        } else {
            m22674goto(window.getDecorView(), z);
            m22676new(window, 0);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m22669case(Activity activity, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m22672else(activity, z, true);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m22670catch(int i) {
        return (((((i & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16) * 38) + (((65280 & i) >> 8) * 75)) + ((i & 255) * 15)) >> 7;
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m22671do(WindowManager.LayoutParams layoutParams, String str, boolean z) {
        try {
            Field declaredField = layoutParams.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            int i = declaredField.getInt(layoutParams);
            Field declaredField2 = layoutParams.getClass().getDeclaredField("meizuFlags");
            declaredField2.setAccessible(true);
            int i2 = declaredField2.getInt(layoutParams);
            int i3 = z ? i | i2 : (i ^ (-1)) & i2;
            if (i2 == i3) {
                return false;
            }
            declaredField2.setInt(layoutParams, i3);
            return true;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static void m22672else(Activity activity, boolean z, boolean z2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = f18050if;
        if (method == null) {
            if (z2) {
                m22668break(activity.getWindow(), z);
                return;
            }
            return;
        }
        try {
            method.invoke(activity, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: for, reason: not valid java name */
    public static void m22673for(Window window, String str, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField(str).getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m22674goto(View view, boolean z) {
        int systemUiVisibility = view.getSystemUiVisibility();
        int i = z ? f18051new | systemUiVisibility : (f18051new ^ (-1)) & systemUiVisibility;
        if (i != systemUiVisibility) {
            view.setSystemUiVisibility(i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m22675if(int i, int i2) {
        return m22670catch(i) < i2;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m22676new(Window window, int i) throws IllegalAccessException, IllegalArgumentException {
        WindowManager.LayoutParams attributes = window.getAttributes();
        Field field = f18049for;
        if (field != null) {
            try {
                if (field.getInt(attributes) != i) {
                    f18049for.set(attributes, Integer.valueOf(i));
                    window.setAttributes(attributes);
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m22677this(Window window, int i) {
        try {
            m22676new(window, i);
            if (Build.VERSION.SDK_INT > 22) {
                m22674goto(window.getDecorView(), true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m22678try(Activity activity, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = f18048do;
        if (method == null) {
            boolean zM22675if = m22675if(i, 50);
            if (f18049for == null) {
                m22669case(activity, zM22675if);
                return;
            } else {
                m22672else(activity, zM22675if, zM22675if);
                m22677this(activity.getWindow(), i);
                return;
            }
        }
        try {
            method.invoke(activity, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }
}
