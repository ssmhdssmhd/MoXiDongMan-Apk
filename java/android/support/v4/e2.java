package android.support.v4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.security.NetworkSecurityPolicy;
import android.view.ActionMode;
import android.view.Display;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.webkit.WebViewClient;

@ke2
@TargetApi(23)
/* loaded from: classes3.dex */
public final class e2 {
    private e2() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Notification.Builder m1602abstract(Notification.Builder builder, Icon icon) {
        return builder.setSmallIcon(icon);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m1603break(Display.Mode mode) {
        return mode.getPhysicalHeight();
    }

    /* renamed from: case, reason: not valid java name */
    public static Network m1604case(ConnectivityManager connectivityManager) {
        return connectivityManager.getBoundNetworkForProcess();
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m1605catch(Display.Mode mode) {
        return mode.getPhysicalWidth();
    }

    /* renamed from: class, reason: not valid java name */
    public static long m1606class(Network network) {
        return network.getNetworkHandle();
    }

    /* renamed from: const, reason: not valid java name */
    public static NetworkInfo m1607const(ConnectivityManager connectivityManager, Network network) {
        return connectivityManager.getNetworkInfo(network);
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m1608continue(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m1609default(WebViewClient webViewClient, WebView webView, String str) {
        webViewClient.onPageCommitVisible(webView, str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Icon m1610do(Bitmap bitmap) {
        return Icon.createWithBitmap(bitmap);
    }

    /* renamed from: else, reason: not valid java name */
    public static long m1611else() {
        return ViewConfiguration.getDefaultActionModeHideDuration();
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m1612extends(ActionMode actionMode, boolean z) {
        actionMode.onWindowFocusChanged(z);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m1613final() {
        return 67108864;
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m1614finally(ConnectivityManager connectivityManager, Network network, boolean z) {
        connectivityManager.reportNetworkConnectivity(network, z);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1615for(MotionEvent motionEvent) {
        return motionEvent.getActionButton();
    }

    /* renamed from: goto, reason: not valid java name */
    public static Display.Mode m1616goto(Display display) {
        return display.getMode();
    }

    /* renamed from: if, reason: not valid java name */
    public static Icon m1617if(Context context, int i) {
        return Icon.createWithResource(context, i);
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m1618import(BatteryManager batteryManager) {
        return batteryManager.isCharging();
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m1619native() {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    /* renamed from: new, reason: not valid java name */
    public static int m1620new(ActionMode actionMode) {
        return actionMode.getType();
    }

    /* renamed from: package, reason: not valid java name */
    public static void m1621package(Activity activity, String[] strArr, int i) {
        activity.requestPermissions(strArr, i);
    }

    /* renamed from: private, reason: not valid java name */
    public static void m1622private(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
        alarmManager.setExactAndAllowWhileIdle(i, j, pendingIntent);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m1623public(PowerManager powerManager) {
        return powerManager.isDeviceIdleMode();
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m1624return(Activity activity, String str) {
        return activity.getPackageManager().isPermissionRevokedByPolicy(str, activity.getPackageName());
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m1625static() {
        return Process.is64Bit();
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> T m1626super(Context context, Class<T> cls) {
        return (T) context.getSystemService(cls);
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m1627switch(UserManager userManager) {
        return userManager.isSystemUser();
    }

    /* renamed from: this, reason: not valid java name */
    public static Display.Mode[] m1628this(Display display) {
        return display.getSupportedModes();
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m1629throw(ActionMode actionMode, long j) {
        actionMode.hide(j);
    }

    /* renamed from: throws, reason: not valid java name */
    public static Notification.Action.Builder m1630throws(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification.Action.Builder(icon, charSequence, pendingIntent);
    }

    /* renamed from: try, reason: not valid java name */
    public static Network m1631try(ConnectivityManager connectivityManager) {
        return connectivityManager.getActiveNetwork();
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1632while(ActionMode actionMode) {
        actionMode.invalidateContentRect();
    }
}
