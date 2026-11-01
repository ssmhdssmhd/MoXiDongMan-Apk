package android.support.v4;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.widget.ActivityChooserModel;
import com.wsw.cospa.service.DownloadService;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ix1 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m3632do(Context context, Class<?> cls) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (it.next().service.getClassName().equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3633if(Context context, Class<?> cls) {
        context.stopService(new Intent(context, (Class<?>) DownloadService.class));
    }
}
