package android.support.v4;

import android.app.Activity;
import android.view.Window;
import com.wsw.cospa.utils.notchtools.core.INotchSupport;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import com.wsw.cospa.utils.notchtools.helper.Cdo;

/* renamed from: android.support.v4.package, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cpackage implements INotchSupport {
    /* renamed from: do, reason: not valid java name */
    public void m5933do(Activity activity, int i, OnNotchCallBack onNotchCallBack) {
        if (onNotchCallBack != null) {
            q41 q41Var = new q41();
            q41Var.m6404case(getNotchHeight(activity.getWindow()));
            q41Var.m6409try(isNotchScreen(activity.getWindow()));
            q41Var.m6408new(i);
            onNotchCallBack.onNotchPropertyCallback(q41Var);
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        Cdo.m27018try(activity.getWindow(), false);
        m5934if(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatusForLandscape(Activity activity, OnNotchCallBack onNotchCallBack) {
        fullScreenDontUseStatus(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatusForPortrait(Activity activity, OnNotchCallBack onNotchCallBack) {
        fullScreenDontUseStatus(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        Cdo.m27018try(activity.getWindow(), false);
        m5933do(activity, getNotchHeight(activity.getWindow()), onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public int getStatusHeight(Window window) {
        return Cdo.m27016if(window.getContext());
    }

    /* renamed from: if, reason: not valid java name */
    public void m5934if(Activity activity, OnNotchCallBack onNotchCallBack) {
        if (onNotchCallBack != null) {
            q41 q41Var = new q41();
            q41Var.m6404case(getNotchHeight(activity.getWindow()));
            q41Var.m6409try(isNotchScreen(activity.getWindow()));
            onNotchCallBack.onNotchPropertyCallback(q41Var);
        }
    }
}
