package com.wsw.cospa.activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.cq;
import android.support.v4.h30;
import android.support.v4.jh0;
import android.support.v4.mp1;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.support.v4.ym;
import android.support.v4.z2;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.palette.graphics.Palette;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.AppUpdateInfo;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cstatic;
import com.wsw.cospa.utils.download.ProgressResponseListener;
import com.wsw.cospa.widget.view.NumberProgressBar;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class VersionDialogActivity extends AppCompatActivity implements View.OnClickListener {

    /* renamed from: final, reason: not valid java name */
    public static final String f21388final = "";

    /* renamed from: super, reason: not valid java name */
    public static final String f21389super = "";

    /* renamed from: throw, reason: not valid java name */
    public static final String f21390throw = "";

    /* renamed from: break, reason: not valid java name */
    private TextView f21391break;

    /* renamed from: case, reason: not valid java name */
    private LinearLayout f21392case;

    /* renamed from: catch, reason: not valid java name */
    private AppUpdateInfo f21393catch;

    /* renamed from: class, reason: not valid java name */
    private RxPermissions f21394class;

    /* renamed from: do, reason: not valid java name */
    private TextView f21396do;

    /* renamed from: for, reason: not valid java name */
    private NumberProgressBar f21398for;

    /* renamed from: if, reason: not valid java name */
    private Button f21400if;

    /* renamed from: new, reason: not valid java name */
    private ImageView f21401new;

    /* renamed from: this, reason: not valid java name */
    private ImageView f21402this;

    /* renamed from: try, reason: not valid java name */
    private TextView f21403try;

    /* renamed from: else, reason: not valid java name */
    private int f21397else = -1490119;

    /* renamed from: goto, reason: not valid java name */
    private int f21399goto = R.mipmap.arg_res_0x7f0e000a;

    /* renamed from: const, reason: not valid java name */
    public cq f21395const = new cq();

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$case, reason: invalid class name */
    public class Ccase implements Callback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f21404do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Context f21406if;

        public Ccase(File file, Context context) {
            this.f21404do = file;
            this.f21406if = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public /* synthetic */ void m25363for(File file, Context context) {
            VersionDialogActivity.this.m25354native(file);
            z2.m10035public(context, file);
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            Looper.prepare();
            v72.m8769if(iOException.getMessage());
            Looper.loop();
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            if (response.isSuccessful()) {
                boolean zM26751abstract = Cdefault.m26751abstract(response.body(), this.f21404do);
                vv0.m8963do("onResponse", "file download was a success? " + zM26751abstract);
                if (!zM26751abstract) {
                    wi0.m9165try(new Runnable() { // from class: com.wsw.cospa.activity.protected
                        @Override // java.lang.Runnable
                        public final void run() {
                            v72.m8769if("文件已存在");
                        }
                    });
                } else if (this.f21404do.exists()) {
                    final File file = this.f21404do;
                    final Context context = this.f21406if;
                    wi0.m9165try(new Runnable() { // from class: com.wsw.cospa.activity.interface
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f21493do.m25363for(file, context);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$do, reason: invalid class name */
    public class Cdo implements Palette.PaletteAsyncListener {
        public Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m25367if() {
            jh0.m3881class(VersionDialogActivity.this).load(VersionDialogActivity.this.f21393catch.getTopImage()).m0(VersionDialogActivity.this.f21402this);
            VersionDialogActivity.this.f21400if.setBackground(h30.m2929for(z2.m10029for(4, VersionDialogActivity.this), VersionDialogActivity.this.f21397else));
            VersionDialogActivity.this.f21398for.setProgressTextColor(VersionDialogActivity.this.f21397else);
            VersionDialogActivity.this.f21398for.setReachedBarColor(VersionDialogActivity.this.f21397else);
            VersionDialogActivity.this.f21400if.setTextColor(ym.m9895case(VersionDialogActivity.this.f21397else) ? -16777216 : -1);
        }

        @Override // androidx.palette.graphics.Palette.PaletteAsyncListener
        public void onGenerated(Palette palette) {
            wi0.m9165try(new Runnable() { // from class: com.wsw.cospa.activity.volatile
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21517do.m25367if();
                }
            });
        }
    }

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f21408do;

        public Cfor(File file) {
            this.f21408do = file;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z2.m10033native(VersionDialogActivity.this, this.f21408do);
        }
    }

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$if, reason: invalid class name */
    public class Cif implements Palette.PaletteAsyncListener {
        public Cif() {
        }

        @Override // androidx.palette.graphics.Palette.PaletteAsyncListener
        public void onGenerated(Palette palette) {
            VersionDialogActivity.this.m25353import(palette.getDominantColor(VersionDialogActivity.this.f21397else), R.mipmap.arg_res_0x7f0e000f);
        }
    }

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$new, reason: invalid class name */
    public class Cnew implements ProgressResponseListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f21411do;

        public Cnew(long j) {
            this.f21411do = j;
        }

        @Override // com.wsw.cospa.utils.download.ProgressResponseListener
        public void onResponseProgress(long j, long j2, boolean z) {
            vv0.m8965if("TAG", "bytesRead:" + j);
            vv0.m8965if("TAG", "contentLength:" + j2);
            vv0.m8965if("TAG", "done:" + z);
            if (j2 != -1) {
                vv0.m8965if("TAG", ((j * 100) / j2) + "% done");
            }
            vv0.m8965if("TAG", "================================");
            if (VersionDialogActivity.this.isFinishing()) {
                return;
            }
            VersionDialogActivity.this.f21398for.setProgress((int) ((j * 100) / this.f21411do));
            VersionDialogActivity.this.f21398for.setMax(100);
        }
    }

    /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$try, reason: invalid class name */
    public class Ctry extends com.wsw.cospa.utils.download.Ctry {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ long f21413for;

        /* renamed from: com.wsw.cospa.activity.VersionDialogActivity$try$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v72.m8769if("更新失败");
            }
        }

        public Ctry(long j) {
            this.f21413for = j;
        }

        @Override // com.wsw.cospa.utils.download.Ctry
        /* renamed from: do, reason: not valid java name */
        public void mo25368do(long j, long j2, boolean z) {
            vv0.m8965if("TAG", "bytesRead:" + j);
            vv0.m8965if("TAG", "contentLength:" + j2);
            vv0.m8965if("TAG", "done:" + z);
            if (j <= 0) {
                wi0.m9165try(new Cdo());
                return;
            }
            if (j2 != -1) {
                vv0.m8965if("TAG", ((j * 100) / j2) + "% done");
            }
            vv0.m8965if("TAG", "================================");
            if (VersionDialogActivity.this.isFinishing()) {
                return;
            }
            VersionDialogActivity.this.f21398for.setProgress((int) ((j * 100) / this.f21413for));
            VersionDialogActivity.this.f21398for.setMax(100);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m25344catch() {
        String str = "";
        this.f21393catch = (AppUpdateInfo) getIntent().getParcelableExtra("");
        m25346const();
        AppUpdateInfo appUpdateInfo = this.f21393catch;
        if (appUpdateInfo == null || TextUtils.isEmpty(appUpdateInfo.getAppUrl())) {
            return;
        }
        String appVersionName = this.f21393catch.getAppVersionName();
        long appSize = this.f21393catch.getAppSize();
        String appChangeLog = this.f21393catch.getAppChangeLog();
        if (appSize > 0) {
            str = "新版本大小：" + Cdefault.m26761finally(appSize) + "<br>";
        }
        if (!TextUtils.isEmpty(appChangeLog)) {
            str = str + appChangeLog;
        }
        this.f21396do.setText(Html.fromHtml(str));
        this.f21403try.setText(String.format("是否升级到%s版本？", appVersionName));
        if (this.f21393catch.getForceUpdate() == 1) {
            this.f21392case.setVisibility(8);
        } else {
            this.f21391break.setVisibility(8);
        }
        m25345class();
    }

    /* renamed from: class, reason: not valid java name */
    private void m25345class() {
        this.f21400if.setOnClickListener(this);
        this.f21401new.setOnClickListener(this);
        this.f21391break.setOnClickListener(this);
    }

    /* renamed from: const, reason: not valid java name */
    private void m25346const() {
        AppUpdateInfo appUpdateInfo = this.f21393catch;
        if (appUpdateInfo == null || TextUtils.isEmpty(appUpdateInfo.getTopImage())) {
            Palette.from(z2.m10034new(getResources().getDrawable(R.mipmap.arg_res_0x7f0e000f))).generate(new Cif());
        } else {
            wi0.m9161else(new Runnable() { // from class: android.support.v4.ye2
                @Override // java.lang.Runnable
                public final void run() throws ExecutionException, InterruptedException {
                    this.f8196do.m25358throw();
                }
            });
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m25349final() {
        this.f21396do = (TextView) findViewById(R.id.arg_res_0x7f0904c3);
        this.f21403try = (TextView) findViewById(R.id.arg_res_0x7f0904be);
        this.f21400if = (Button) findViewById(R.id.arg_res_0x7f0900d2);
        this.f21398for = (NumberProgressBar) findViewById(R.id.arg_res_0x7f090309);
        this.f21401new = (ImageView) findViewById(R.id.arg_res_0x7f090237);
        this.f21392case = (LinearLayout) findViewById(R.id.arg_res_0x7f090278);
        this.f21402this = (ImageView) findViewById(R.id.arg_res_0x7f09024e);
        this.f21391break = (TextView) findViewById(R.id.arg_res_0x7f09048c);
        this.f21396do.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.f21394class = new RxPermissions(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public void m25353import(int i, int i2) {
        this.f21400if.setVisibility(0);
        this.f21402this.setImageResource(i2);
        this.f21400if.setBackground(h30.m2929for(z2.m10029for(4, this), i));
        this.f21398for.setProgressTextColor(i);
        this.f21398for.setReachedBarColor(i);
        this.f21400if.setTextColor(ym.m9895case(i) ? -16777216 : -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public void m25354native(File file) {
        this.f21398for.setVisibility(8);
        this.f21400if.setText("安装");
        this.f21400if.setVisibility(0);
        this.f21400if.setOnClickListener(new Cfor(file));
    }

    /* renamed from: super, reason: not valid java name */
    private void m25356super() {
        if (!z2.m10026do(this.f21393catch)) {
            m25361break(this, this.f21393catch);
            return;
        }
        z2.m10035public(this, z2.m10022case(this.f21393catch));
        if (this.f21393catch.getForceUpdate() != 1) {
            return;
        }
        m25354native(z2.m10022case(this.f21393catch));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ void m25358throw() throws ExecutionException, InterruptedException {
        Bitmap bitmap;
        try {
            bitmap = jh0.m3881class(this).mo6031new().load(this.f21393catch.getTopImage()).C0().get();
        } catch (Exception e) {
            e.printStackTrace();
            bitmap = null;
        }
        Palette.from(bitmap).generate(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public /* synthetic */ void m25360while(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            m25356super();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m25361break(Context context, AppUpdateInfo appUpdateInfo) {
        this.f21400if.setVisibility(8);
        if (appUpdateInfo == null || TextUtils.isEmpty(appUpdateInfo.getAppUrl())) {
            return;
        }
        long appSize = appUpdateInfo.getAppSize();
        if (!isFinishing()) {
            this.f21398for.setVisibility(0);
        }
        File file = new File(wq.f7618native);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, appUpdateInfo.getAppName());
        if (!file2.exists()) {
            Cstatic.m27056if(appUpdateInfo.getAppName(), wq.f7618native, new String[0]);
        }
        new Cnew(appSize);
        Ctry ctry = new Ctry(appSize);
        com.wsw.cospa.utils.download.Cdo.m26856if(ctry).newCall(new Request.Builder().url(appUpdateInfo.getAppUrl()).build()).enqueue(new Ccase(file2, context));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        AppUpdateInfo appUpdateInfo = this.f21393catch;
        if (appUpdateInfo == null || appUpdateInfo.getForceUpdate() != 1) {
            super.onBackPressed();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.arg_res_0x7f0900d2) {
            this.f21395const.add(((ObservableSubscribeProxy) this.f21394class.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.xe2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f7900do.m25360while((Boolean) obj);
                }
            }));
        } else if (id == R.id.arg_res_0x7f090237) {
            onBackPressed();
        } else if (id == R.id.arg_res_0x7f09048c) {
            z2.m10042throws(this, this.f21393catch.getAppVersionName());
            onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        supportRequestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.arg_res_0x7f0c00a9);
        m25349final();
        m25344catch();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        cq cqVar = this.f21395const;
        if (cqVar == null || cqVar.isDisposed()) {
            return;
        }
        this.f21395const.dispose();
        this.f21395const.m995if();
        this.f21395const = null;
    }
}
