package android.support.v4;

import android.app.Activity;
import android.view.Window;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;

/* loaded from: classes2.dex */
public class dp extends Cpackage {
    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenDontUseStatus(activity, onNotchCallBack);
    }

    @Override // android.support.v4.Cpackage, com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        super.fullScreenUseStatus(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public int getNotchHeight(Window window) {
        return 0;
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public boolean isNotchScreen(Window window) {
        return false;
    }
}
