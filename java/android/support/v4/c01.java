package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.Window;
import androidx.annotation.RequiresApi;
import com.uc.crashsdk.export.LogType;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import com.wsw.cospa.utils.notchtools.helper.Cdo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.bouncycastle.pqc.crypto.newhope.Cgoto;

/* loaded from: classes2.dex */
public class c01 extends Cpackage {

    /* renamed from: do, reason: not valid java name */
    private static final String f570do = "c01";

    /* renamed from: for, reason: not valid java name */
    private int m708for(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m709new(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "force_black", 0) == 1;
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.fullScreenDontUseStatus(activity, onNotchCallBack);
        if (Build.VERSION.SDK_INT < 26 || !isNotchScreen(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), Integer.valueOf(LogType.UNEXP_ANR));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.fullScreenUseStatus(activity, onNotchCallBack);
        if (Build.VERSION.SDK_INT < 26 || !isNotchScreen(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), Integer.valueOf(Cgoto.f32251new));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public int getNotchHeight(Window window) {
        if (!isNotchScreen(window) || window == null) {
            return 0;
        }
        Context context = window.getContext();
        return m709new(window.getContext()) ? Cdo.m27016if(context) : m708for(context);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public boolean isNotchScreen(Window window) {
        return "1".equals(u32.m8226for().m8229do("ro.miui.notch"));
    }
}
