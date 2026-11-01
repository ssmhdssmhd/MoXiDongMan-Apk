package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.umeng.analytics.pro.b;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ag implements z {
    private static final String a = "DeviceIdService";
    private static final String b = "com.samsung.android.deviceidservice";
    private static final String c = "com.samsung.android.deviceidservice.DeviceIdService";
    private CountDownLatch e;
    private String d = "";
    private final ServiceConnection f = new ServiceConnection() { // from class: com.umeng.analytics.pro.ag.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b bVarA = b.a.a(iBinder);
                ag.this.d = bVarA.a();
            } catch (RemoteException | NullPointerException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("onServiceConnected failed e=");
                sb.append(e.getMessage());
            }
            ag.this.e.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClassName(b, c);
            if (context.bindService(intent, this.f, 1)) {
            } else {
                throw new UnsupportedOperationException("not supported service");
            }
        } catch (Error | Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("bindService failed. e=");
            sb.append(e.getMessage());
            this.e.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.f);
        } catch (Error | Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("unbindService failed. e=");
            sb.append(e.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        this.e = new CountDownLatch(1);
        try {
            try {
                b(context);
                this.e.await(500L, TimeUnit.MILLISECONDS);
                return this.d;
            } catch (InterruptedException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("getOAID interrupted. e=");
                sb.append(e.getMessage());
                c(context);
                return null;
            }
        } finally {
            c(context);
        }
    }
}
