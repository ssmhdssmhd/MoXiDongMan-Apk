package org.chromium.base.compat;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.hardware.biometrics.BiometricManager;
import android.net.NetworkCapabilities;
import android.net.TransportInfo;
import android.net.Uri;
import android.os.FileUtils;
import android.provider.MediaStore;
import android.support.v4.qe2;
import android.telephony.CellInfo;
import android.telephony.TelephonyManager;
import android.view.MotionEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.chromium.base.Callback;

@qe2
@TargetApi(29)
/* renamed from: org.chromium.base.compat.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: org.chromium.base.compat.for$do, reason: invalid class name */
    public class Cdo extends TelephonyManager.CellInfoCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Callback f33151do;

        public Cdo(Callback callback) {
            this.f33151do = callback;
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        @SuppressLint({"Override"})
        public void onCellInfo(List<CellInfo> list) {
            this.f33151do.onResult(list);
        }
    }

    private Cfor() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m37030break(Service service, int i, Notification notification, int i2) {
        service.startForeground(i, notification, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public static Set<String> m37031case(Context context) {
        return MediaStore.getExternalVolumeNames(context);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m37032catch(Context context, ServiceConnection serviceConnection, int i, int i2) {
        context.updateServiceGroup(serviceConnection, i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m37033do(Context context, Intent intent, int i, String str, Executor executor, ServiceConnection serviceConnection) {
        return context.bindIsolatedService(intent, i, str, executor, serviceConnection);
    }

    /* renamed from: else, reason: not valid java name */
    public static TransportInfo m37034else(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.getTransportInfo();
    }

    /* renamed from: for, reason: not valid java name */
    public static long m37035for(InputStream inputStream, OutputStream outputStream) throws IOException {
        return FileUtils.copy(inputStream, outputStream);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m37036goto(TelephonyManager telephonyManager, Callback<List<CellInfo>> callback) {
        telephonyManager.requestCellInfoUpdate(org.chromium.base.task.Cdo.f33249else, new Cdo(callback));
    }

    /* renamed from: if, reason: not valid java name */
    public static int m37037if(BiometricManager biometricManager) {
        return biometricManager.canAuthenticate();
    }

    /* renamed from: new, reason: not valid java name */
    public static BiometricManager m37038new(Context context) {
        return (BiometricManager) context.getSystemService(BiometricManager.class);
    }

    /* renamed from: this, reason: not valid java name */
    public static Uri m37039this(Uri uri) {
        return MediaStore.setIncludePending(uri);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m37040try(MotionEvent motionEvent) {
        return motionEvent.getClassification();
    }
}
