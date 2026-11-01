package com.wsw.cospa.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.cq;
import android.support.v4.fp1;
import android.support.v4.v02;
import android.support.v4.wq;
import android.support.v4.y8;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.hwangjr.rxbus.RxBus;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicManagerActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.model.Cif;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class CheckSourceService extends Service {

    /* renamed from: class, reason: not valid java name */
    public static final String f22456class = "startService";

    /* renamed from: const, reason: not valid java name */
    public static final String f22457const = "doneService";

    /* renamed from: final, reason: not valid java name */
    private static final int f22458final = 3333;

    /* renamed from: super, reason: not valid java name */
    private static final String f22459super = "openActivity";

    /* renamed from: throw, reason: not valid java name */
    private static final String f22460throw = "channel_id_check_source";

    /* renamed from: while, reason: not valid java name */
    private static final String f22461while = "channel_name_check_source";

    /* renamed from: break, reason: not valid java name */
    private Notification f22462break;

    /* renamed from: case, reason: not valid java name */
    private Ctry f22463case;

    /* renamed from: catch, reason: not valid java name */
    private NotificationChannel f22464catch;

    /* renamed from: do, reason: not valid java name */
    private List<ComicSourceBean> f22465do;

    /* renamed from: else, reason: not valid java name */
    private CheckSourceListener f22466else;

    /* renamed from: for, reason: not valid java name */
    private int f22467for;

    /* renamed from: goto, reason: not valid java name */
    private NotificationManager f22468goto;

    /* renamed from: if, reason: not valid java name */
    private int f22469if;

    /* renamed from: new, reason: not valid java name */
    private cq f22470new;

    /* renamed from: this, reason: not valid java name */
    private NotificationCompat.Builder f22471this = null;

    /* renamed from: try, reason: not valid java name */
    private ExecutorService f22472try;

    public interface CheckSourceListener {
        void compositeDisposableAdd(Disposable disposable);

        int getCheckIndex();

        void nextCheck();
    }

    /* renamed from: com.wsw.cospa.service.CheckSourceService$do, reason: invalid class name */
    public class Cdo implements CheckSourceListener {
        public Cdo() {
        }

        @Override // com.wsw.cospa.service.CheckSourceService.CheckSourceListener
        public void compositeDisposableAdd(Disposable disposable) {
            CheckSourceService.this.f22470new.add(disposable);
        }

        @Override // com.wsw.cospa.service.CheckSourceService.CheckSourceListener
        public int getCheckIndex() {
            return CheckSourceService.this.f22467for;
        }

        @Override // com.wsw.cospa.service.CheckSourceService.CheckSourceListener
        public void nextCheck() {
            CheckSourceService.this.m26550else();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m26546break(Context context) {
        Intent intent = new Intent(context, (Class<?>) CheckSourceService.class);
        intent.setAction("doneService");
        context.startService(intent);
    }

    /* renamed from: case, reason: not valid java name */
    private PendingIntent m26547case() {
        Intent intent = new Intent(this, getClass());
        intent.setAction("doneService");
        return PendingIntent.getService(this, 0, intent, 134217728);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m26548catch(int i, String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(f22460throw, f22461while, 2);
            this.f22464catch = notificationChannel;
            notificationChannel.enableLights(false);
            this.f22464catch.setLightColor(-65536);
            this.f22464catch.setShowBadge(true);
            this.f22464catch.enableVibration(false);
            this.f22464catch.setSound(null, null);
            this.f22464catch.setLockscreenVisibility(1);
            this.f22468goto.createNotificationChannel(this.f22464catch);
        }
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, f22460throw).setSmallIcon(R.mipmap.arg_res_0x7f0e000b).setOngoing(true).setContentTitle(getString(R.string.arg_res_0x7f110040)).setContentText(str).setContentIntent(m26555try());
        contentIntent.addAction(R.drawable.arg_res_0x7f080100, getString(R.string.arg_res_0x7f110039), m26547case());
        List<ComicSourceBean> list = this.f22465do;
        if (list != null) {
            contentIntent.setProgress(list.size(), i, false);
        }
        contentIntent.setVisibility(1);
        startForeground(f22458final, contentIntent.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public synchronized void m26550else() {
        int i = this.f22467for + 1;
        this.f22467for = i;
        if (i > this.f22469if) {
            String str = String.format(getString(R.string.arg_res_0x7f1100d6), Integer.valueOf(this.f22467for - this.f22469if), Integer.valueOf(this.f22465do.size()));
            RxBus.get().post(fp1.f1927class, str);
            m26548catch(this.f22467for - this.f22469if, str);
        }
        if (this.f22467for < this.f22465do.size()) {
            new Cif(this.f22465do.get(this.f22467for), this.f22463case, this.f22466else).m26416const();
        } else if (this.f22467for >= (this.f22465do.size() + this.f22469if) - 1) {
            m26554new();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m26552goto(Context context, List<ComicSourceBean> list) {
        if (list.isEmpty()) {
            return;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        y8.m9768for().m9771new(strValueOf, list);
        Intent intent = new Intent(context, (Class<?>) CheckSourceService.class);
        intent.putExtra("data_key", strValueOf);
        intent.setAction("startService");
        context.startService(intent);
    }

    /* renamed from: new, reason: not valid java name */
    private void m26554new() {
        RxBus.get().post(fp1.f1930default, "校验完成");
        this.f22470new.dispose();
        stopSelf();
    }

    /* renamed from: try, reason: not valid java name */
    private PendingIntent m26555try() {
        Intent intent = new Intent(this, (Class<?>) ComicManagerActivity.class);
        intent.setAction(f22459super);
        return PendingIntent.getActivity(this, 0, intent, 134217728);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f22468goto = (NotificationManager) getSystemService("notification");
        this.f22466else = new Cdo();
        int iM8715for = v02.m8711if(this).m8715for(wq.f7614implements, 6);
        this.f22469if = iM8715for;
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(iM8715for);
        this.f22472try = executorServiceNewFixedThreadPool;
        this.f22463case = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
        this.f22470new = new cq();
        m26548catch(0, "正在加载");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f22472try.shutdown();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action;
        if (intent != null && (action = intent.getAction()) != null) {
            if (action.equals("doneService")) {
                m26554new();
            } else if (action.equals("startService")) {
                this.f22465do = (List) y8.m9768for().m9770if(intent.getStringExtra("data_key"));
                m26556this();
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    /* renamed from: this, reason: not valid java name */
    public void m26556this() {
        List<ComicSourceBean> list = this.f22465do;
        if (list == null || list.size() <= 0) {
            return;
        }
        RxBus.get().post(fp1.f1927class, "开始效验");
        this.f22467for = -1;
        for (int i = 1; i <= this.f22469if; i++) {
            m26550else();
        }
    }
}
