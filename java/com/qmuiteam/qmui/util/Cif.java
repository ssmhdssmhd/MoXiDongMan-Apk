package com.qmuiteam.qmui.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.gh1;
import android.support.v4.ih1;
import android.support.v4.ph1;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.core.view.ViewCompat;
import com.gyf.immersionbar.Cnew;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.qmuiteam.qmui.util.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: break, reason: not valid java name */
    private static Integer f19320break = null;

    /* renamed from: case, reason: not valid java name */
    public static float f19321case = -1.0f;

    /* renamed from: do, reason: not valid java name */
    private static final int f19322do = 0;

    /* renamed from: else, reason: not valid java name */
    public static float f19323else = -1.0f;

    /* renamed from: for, reason: not valid java name */
    private static final int f19324for = 2;

    /* renamed from: goto, reason: not valid java name */
    private static int f19325goto = -1;

    /* renamed from: if, reason: not valid java name */
    private static final int f19326if = 1;

    /* renamed from: new, reason: not valid java name */
    private static final int f19327new = 3;

    /* renamed from: this, reason: not valid java name */
    private static int f19328this = 0;

    /* renamed from: try, reason: not valid java name */
    private static final int f19329try = 25;

    /* renamed from: com.qmuiteam.qmui.util.if$do, reason: invalid class name */
    public static class Cdo implements View.OnAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Window f19330do;

        public Cdo(Window window) {
            this.f19330do = window;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            Cif.m23664class(this.f19330do, view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m23661break(Activity activity) {
        try {
            return (activity.getWindow().getAttributes().flags & 1024) != 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Integer m23662case(Context context) throws NoSuchFieldException {
        Integer num = f19320break;
        if (num != null) {
            return num;
        }
        String str = null;
        for (String str2 : context.getPackageManager().getSystemSharedLibraryNames()) {
            if ("touchwiz".equals(str2)) {
                str = "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND";
            } else if (str2.startsWith("com.sonyericsson.navigationbar")) {
                str = "SYSTEM_UI_FLAG_TRANSPARENT";
            }
        }
        if (str != null) {
            try {
                Field field = View.class.getField(str);
                if (field != null && field.getType() == Integer.TYPE) {
                    f19320break = Integer.valueOf(field.getInt(null));
                }
            } catch (Exception unused) {
            }
        }
        return f19320break;
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m23663catch() {
        return (gh1.m2676final() && Build.VERSION.SDK_INT < 23) || gh1.m2669break() || gh1.m2671catch() || gh1.m2672class() || gh1.m2673const();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(28)
    /* renamed from: class, reason: not valid java name */
    public static void m23664class(Window window, View view) {
        if (view.getRootWindowInsets() == null || view.getRootWindowInsets().getDisplayCutout() == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        window.setAttributes(attributes);
    }

    /* renamed from: const, reason: not valid java name */
    public static int m23665const(Window window, int i, int i2) {
        return (window.getDecorView().getSystemUiVisibility() & i2) == i2 ? i | i2 : i;
    }

    @TargetApi(23)
    /* renamed from: do, reason: not valid java name */
    private static boolean m23666do(Window window, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        window.getDecorView().setSystemUiVisibility(m23683try(window, z ? 8192 : 256));
        if (!gh1.m2676final()) {
            return true;
        }
        m23669for(window, z);
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m23667else(Context context) {
        if (f19325goto == -1) {
            m23680this(context);
        }
        return f19325goto;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m23668final(Activity activity) {
        if (activity == null) {
            return false;
        }
        int i = f19328this;
        if (i == 0) {
            return true;
        }
        if (i == 1) {
            return m23669for(activity.getWindow(), false);
        }
        if (i == 2) {
            return m23671if(activity.getWindow(), false);
        }
        if (i == 3) {
            return m23666do(activity.getWindow(), false);
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m23669for(Window window, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
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
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @TargetApi(28)
    /* renamed from: goto, reason: not valid java name */
    private static void m23670goto(Window window) {
        View decorView = window.getDecorView();
        if (decorView != null) {
            if (ViewCompat.isAttachedToWindow(decorView)) {
                m23664class(window, decorView);
            } else {
                decorView.addOnAttachStateChangeListener(new Cdo(window));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m23671if(Window window, boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (window != null) {
            m23666do(window, z);
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z ? i2 | i : (i ^ (-1)) & i2);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m23672import(float f) {
        f19323else = f;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m23673native() {
        return (gh1.m2685static() || gh1.m2684return()) ? false : true;
    }

    /* renamed from: public, reason: not valid java name */
    private static boolean m23675public() {
        int i = Build.VERSION.SDK_INT;
        return i >= 19 && (!gh1.m2682new() || i >= 26);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m23676return(Activity activity) {
        m23679switch(activity.getWindow());
    }

    /* renamed from: static, reason: not valid java name */
    public static void m23677static(Activity activity, @ColorInt int i) {
        m23682throws(activity.getWindow(), i);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m23678super(Activity activity) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (activity == null || gh1.m2684return()) {
            return false;
        }
        int i = f19328this;
        if (i != 0) {
            return m23681throw(activity, i);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            if (m23663catch() && m23669for(activity.getWindow(), true)) {
                f19328this = 1;
                return true;
            }
            if (m23671if(activity.getWindow(), true)) {
                f19328this = 2;
                return true;
            }
            if (i2 >= 23) {
                m23666do(activity.getWindow(), true);
                f19328this = 3;
                return true;
            }
        }
        return false;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m23679switch(Window window) {
        m23682throws(window, 1073741824);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m23680this(Context context) {
        Throwable th;
        Field field;
        Object objNewInstance;
        Field field2 = null;
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            objNewInstance = cls.newInstance();
            try {
                if (gh1.m2686super()) {
                    try {
                        field2 = cls.getField("status_bar_height_large");
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                if (field2 == null) {
                    field2 = cls.getField(Cnew.f18143for);
                }
            } catch (Throwable th3) {
                field = field2;
                field2 = objNewInstance;
                th = th3;
                th.printStackTrace();
                objNewInstance = field2;
                field2 = field;
                if (field2 != null) {
                    try {
                        f19325goto = context.getResources().getDimensionPixelSize(Integer.parseInt(field2.get(objNewInstance).toString()));
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
                if (!gh1.m2680import(context)) {
                }
                if (f19325goto > 0) {
                }
            }
        } catch (Throwable th5) {
            th = th5;
            field = null;
        }
        if (field2 != null && objNewInstance != null) {
            f19325goto = context.getResources().getDimensionPixelSize(Integer.parseInt(field2.get(objNewInstance).toString()));
        }
        if (!gh1.m2680import(context) && f19325goto > ih1.m3450new(context, 25)) {
            f19325goto = 0;
            return;
        }
        if (f19325goto > 0) {
            float f = f19321case;
            if (f == -1.0f) {
                f19325goto = ih1.m3450new(context, 25);
            } else {
                f19325goto = (int) ((f * 25.0f) + 0.5f);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static boolean m23681throw(Activity activity, int i) {
        if (i == 1) {
            return m23669for(activity.getWindow(), true);
        }
        if (i == 2) {
            return m23671if(activity.getWindow(), true);
        }
        if (i == 3) {
            return m23666do(activity.getWindow(), true);
        }
        return false;
    }

    @TargetApi(19)
    /* renamed from: throws, reason: not valid java name */
    public static void m23682throws(Window window, @ColorInt int i) {
        if (m23675public()) {
            if (ph1.m6059interface()) {
                m23670goto(window);
            }
            if (gh1.m2686super() || (gh1.m2687this() && Build.VERSION.SDK_INT < 23)) {
                window.setFlags(67108864, 67108864);
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
                if (i2 < 23 || !m23673native()) {
                    window.clearFlags(67108864);
                    window.addFlags(Integer.MIN_VALUE);
                    window.setStatusBarColor(i);
                } else {
                    window.clearFlags(67108864);
                    window.addFlags(Integer.MIN_VALUE);
                    window.setStatusBarColor(0);
                }
            }
        }
    }

    @TargetApi(23)
    /* renamed from: try, reason: not valid java name */
    private static int m23683try(Window window, int i) {
        return m23665const(window, m23665const(window, m23665const(window, m23665const(window, m23665const(window, m23665const(window, i, 1024), 4), 2), 4096), 1024), 512);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m23684while(float f) {
        f19321case = f;
    }
}
