package android.support.v4;

import android.app.Activity;
import android.view.Window;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import com.wsw.cospa.utils.notchtools.helper.Cdo;

/* loaded from: classes2.dex */
public class y71 extends Cpackage {

    /* renamed from: do, reason: not valid java name */
    private static final String f8145do = "y71";

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenDontUseStatus(activity, onNotchCallBack);
        if (isNotchScreen(activity.getWindow())) {
            Cdo.m27017new(activity.getWindow());
        }
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenDontUseStatusForLandscape(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenDontUseStatusForLandscape(activity, onNotchCallBack);
        if (isNotchScreen(activity.getWindow())) {
            Cdo.m27015for(activity.getWindow());
        }
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public void fullScreenDontUseStatusForPortrait(Activity activity, OnNotchCallBack onNotchCallBack) {
        fullScreenDontUseStatus(activity, onNotchCallBack);
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenUseStatus(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public int getNotchHeight(Window window) {
        if (isNotchScreen(window)) {
            return Cdo.m27016if(window.getContext());
        }
        return 0;
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    @RequiresApi(api = 26)
    public boolean isNotchScreen(Window window) {
        if (window == null) {
            return false;
        }
        return window.getContext().getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }
}
