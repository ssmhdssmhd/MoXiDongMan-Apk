package android.support.v4;

import android.app.Activity;
import android.view.DisplayCutout;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import com.wsw.cospa.utils.notchtools.helper.Cdo;

/* loaded from: classes2.dex */
public class hb1 extends Cpackage {
    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 28)
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenDontUseStatus(activity, onNotchCallBack);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
        Cdo.m27017new(activity.getWindow());
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 28)
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenUseStatus(activity, onNotchCallBack);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 28)
    public int getNotchHeight(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        if (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) {
            return 0;
        }
        return displayCutout.getSafeInsetTop();
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 28)
    public boolean isNotchScreen(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        return (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) ? false : true;
    }
}
