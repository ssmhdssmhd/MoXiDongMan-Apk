package android.support.v4;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import androidx.annotation.DrawableRes;
import androidx.core.app.NotificationCompat;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class v41 {

    /* renamed from: do, reason: not valid java name */
    private NotificationManager f7089do;

    /* renamed from: for, reason: not valid java name */
    private int f7090for;

    /* renamed from: if, reason: not valid java name */
    private NotificationCompat.Builder f7091if;

    public v41(Context context, String str, @DrawableRes int i, boolean z) {
        String string = context.getString(R.string.arg_res_0x7f110021);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.f7089do = notificationManager;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel(str, str, 3));
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
        this.f7091if = builder;
        builder.setContentTitle(string).setSmallIcon(i).setOngoing(z);
        this.f7090for = str.hashCode();
    }

    /* renamed from: do, reason: not valid java name */
    public void m8746do() {
        this.f7089do.cancel(this.f7090for);
    }

    /* renamed from: for, reason: not valid java name */
    public void m8747for(String str, int i, int i2) {
        this.f7091if.setContentText(str).setTicker(str);
        m8748if(i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public void m8748if(int i, int i2) {
        this.f7091if.setProgress(i2, i, false);
        this.f7089do.notify(this.f7090for, this.f7091if.build());
    }

    /* renamed from: new, reason: not valid java name */
    public void m8749new(String str, boolean z) {
        this.f7091if.setOngoing(z);
        m8747for(str, 0, 0);
    }
}
