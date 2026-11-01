package com.wsw.cospa.service;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.g31;
import android.support.v4.v02;
import android.support.v4.wq;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.wsw.cospa.R;
import com.wsw.cospa.web.HttpServer;
import com.wsw.cospa.web.WebSocketServer;
import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketException;

/* loaded from: classes2.dex */
public class WebService extends Service {

    /* renamed from: else, reason: not valid java name */
    public static boolean f22498else;

    /* renamed from: do, reason: not valid java name */
    private HttpServer f22500do;

    /* renamed from: for, reason: not valid java name */
    private NotificationChannel f22501for;

    /* renamed from: if, reason: not valid java name */
    private WebSocketServer f22502if;

    /* renamed from: new, reason: not valid java name */
    private NotificationManager f22503new;

    /* renamed from: try, reason: not valid java name */
    public String f22504try = wq.D0;

    /* renamed from: case, reason: not valid java name */
    public String f22499case = "channel_web_name";

    /* renamed from: case, reason: not valid java name */
    public static void m26593case(Context context) {
        if (f22498else) {
            Intent intent = new Intent(context, (Class<?>) WebService.class);
            intent.setAction("doneService");
            context.startService(intent);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m26595else(Activity activity) {
        if (f22498else) {
            Intent intent = new Intent(activity, (Class<?>) WebService.class);
            intent.setAction("doneService");
            activity.startService(intent);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private PendingIntent m26596for() {
        Intent intent = new Intent(this, getClass());
        intent.setAction("doneService");
        return PendingIntent.getService(this, 0, intent, 134217728);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m26597goto() throws SocketException, InterruptedException {
        HttpServer httpServer = this.f22500do;
        if (httpServer != null && httpServer.isAlive()) {
            this.f22500do.stop();
        }
        WebSocketServer webSocketServer = this.f22502if;
        if (webSocketServer != null && webSocketServer.isAlive()) {
            this.f22502if.stop();
        }
        int iM26598if = m26598if();
        this.f22500do = new HttpServer(iM26598if);
        this.f22502if = new WebSocketServer(iM26598if + 1);
        InetAddress inetAddressM2568if = g31.m2568if();
        if (inetAddressM2568if == null) {
            stopSelf();
            return;
        }
        try {
            this.f22500do.start();
            this.f22502if.start(30000);
            f22498else = true;
            m26600this(getString(R.string.arg_res_0x7f11005f, new Object[]{inetAddressM2568if.getHostAddress(), Integer.valueOf(iM26598if)}));
        } catch (IOException unused) {
            stopSelf();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private int m26598if() {
        int iM8715for = v02.m8711if(this).m8715for("webPort", 1122);
        if (iM8715for > 65530 || iM8715for < 1024) {
            return 1122;
        }
        return iM8715for;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public /* synthetic */ void m26599new() {
        Toast.makeText(this, R.string.arg_res_0x7f110114, 0).show();
    }

    /* renamed from: this, reason: not valid java name */
    private void m26600this(String str) {
        this.f22503new = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(this.f22504try, this.f22499case, 4);
            this.f22501for = notificationChannel;
            notificationChannel.enableLights(true);
            this.f22501for.setLightColor(-65536);
            this.f22501for.setShowBadge(true);
            this.f22501for.setSound(null, null);
            this.f22501for.setLockscreenVisibility(1);
            this.f22501for.enableVibration(false);
            this.f22503new.createNotificationChannel(this.f22501for);
        }
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, this.f22504try).setSmallIcon(R.drawable.arg_res_0x7f080105).setOngoing(true).setContentTitle(getString(R.string.arg_res_0x7f110112)).setContentText(str).setContentIntent(m26596for());
        contentIntent.setVisibility(1);
        startForeground(1122, contentIntent.build());
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m26601try(Context context) {
        if (f22498else) {
            return false;
        }
        Intent intent = new Intent(context, (Class<?>) WebService.class);
        intent.setAction("startService");
        context.startService(intent);
        return true;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f22498else = true;
        m26600this(getString(R.string.arg_res_0x7f110115));
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.pf2
            @Override // java.lang.Runnable
            public final void run() {
                this.f4951do.m26599new();
            }
        });
    }

    @Override // android.app.Service
    public void onDestroy() throws InterruptedException {
        super.onDestroy();
        f22498else = false;
        HttpServer httpServer = this.f22500do;
        if (httpServer != null && httpServer.isAlive()) {
            this.f22500do.stop();
        }
        WebSocketServer webSocketServer = this.f22502if;
        if (webSocketServer == null || !webSocketServer.isAlive()) {
            return;
        }
        this.f22502if.stop();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) throws SocketException, InterruptedException {
        String action;
        if (intent != null && (action = intent.getAction()) != null) {
            if (action.equals("doneService")) {
                stopSelf();
            } else if (action.equals("startService")) {
                m26597goto();
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
