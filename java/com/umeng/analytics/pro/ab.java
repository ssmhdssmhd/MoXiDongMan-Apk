package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.umeng.analytics.pro.a;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ab implements z {
    private static final String a = "Coolpad";
    private static final String b = "com.coolpad.deviceidsupport";
    private static final String c = "com.coolpad.deviceidsupport.DeviceIdService";
    private static a d;
    private CountDownLatch f;
    private Context g;
    private String e = "";
    private final ServiceConnection h = new ServiceConnection() { // from class: com.umeng.analytics.pro.ab.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                a unused = ab.d = a.AbstractBinderC0202a.a(iBinder);
                ab.this.e = ab.d.b(ab.this.g.getPackageName());
                StringBuilder sb = new StringBuilder();
                sb.append("onServiceConnected: oaid = ");
                sb.append(ab.this.e);
            } catch (RemoteException | NullPointerException e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onServiceConnected failed e=");
                sb2.append(e.getMessage());
            }
            ab.this.f.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a unused = ab.d = null;
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(b, c));
            context.bindService(intent, this.h, 1);
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("bindService failed. e=");
            sb.append(th.getMessage());
            this.f.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.h);
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("unbindService failed. e=");
            sb.append(th.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.g = context.getApplicationContext();
        this.f = new CountDownLatch(1);
        try {
            b(context);
            this.f.await(500L, TimeUnit.MILLISECONDS);
            return this.e;
        } catch (InterruptedException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("getOAID interrupted. e=");
            sb.append(e.getMessage());
            return null;
        } finally {
            c(context);
        }
    }
}
