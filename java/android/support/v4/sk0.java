package android.support.v4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class sk0 extends Cpackage {

    /* renamed from: do, reason: not valid java name */
    private static final String f6177do = "sk0";

    /* renamed from: for, reason: not valid java name */
    public static final int f6178for = 65536;

    /* renamed from: if, reason: not valid java name */
    private static final String f6179if = "display_notch_status";

    /* renamed from: for, reason: not valid java name */
    private boolean m7468for(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), f6179if, 0) == 1;
    }

    @TargetApi(19)
    /* renamed from: new, reason: not valid java name */
    public static void m7469new(Window window) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @RequiresApi(api = 19)
    /* renamed from: try, reason: not valid java name */
    public static void m7470try(Window window) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("clearHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception unused) {
        }
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        super.fullScreenDontUseStatus(activity, onNotchCallBack);
        if (isNotchScreen(activity.getWindow())) {
            m7470try(activity.getWindow());
        }
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        super.fullScreenUseStatus(activity, onNotchCallBack);
        if (isNotchScreen(activity.getWindow())) {
            m7469new(activity.getWindow());
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public int getNotchHeight(Window window) {
        if (!isNotchScreen(window)) {
            return 0;
        }
        int[] iArr = {0, 0};
        try {
            Class<?> clsLoadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((int[]) clsLoadClass.getMethod("getNotchSize", new Class[0]).invoke(clsLoadClass, new Object[0]))[1];
        } catch (ClassNotFoundException unused) {
            return iArr[1];
        } catch (NoSuchMethodException unused2) {
            return iArr[1];
        } catch (Exception unused3) {
            return iArr[1];
        } catch (Throwable unused4) {
            return iArr[1];
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public boolean isNotchScreen(Window window) {
        try {
            Class<?> clsLoadClass = window.getContext().getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }
}
