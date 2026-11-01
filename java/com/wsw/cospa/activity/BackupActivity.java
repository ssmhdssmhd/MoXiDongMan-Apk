package com.wsw.cospa.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ed1;
import android.support.v4.hm1;
import android.support.v4.jm1;
import android.support.v4.jz1;
import android.support.v4.k0;
import android.support.v4.k61;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.nf2;
import android.support.v4.of2;
import android.support.v4.on0;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.OnClick;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.uber.autodispose.SingleSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.BackupActivity;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Cimport;
import com.wsw.cospa.utils.Cpublic;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.widget.view.CheckBoxPreference;
import com.wsw.cospa.widget.view.Option;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class BackupActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: break, reason: not valid java name */
    private static final int f20891break = 10000;

    /* renamed from: catch, reason: not valid java name */
    private static final int f20892catch = 10001;

    /* renamed from: goto, reason: not valid java name */
    private xh1 f20893goto;

    @BindView(R.id.arg_res_0x7f0900a4)
    public CheckBoxPreference mSaveComicAuto;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private RxPermissions f20894this;

    @BindView(R.id.arg_res_0x7f0904c5)
    public Option tvWebdavAcccount;

    @BindView(R.id.arg_res_0x7f0904c6)
    public Option tvWebdavPassword;

    @BindView(R.id.arg_res_0x7f0904c7)
    public Option tvWebdavRestore;

    @BindView(R.id.arg_res_0x7f0904c8)
    public Option tvWebdavStep;

    @BindView(R.id.arg_res_0x7f0904c9)
    public Option tvWebdavUrl;

    /* renamed from: com.wsw.cospa.activity.BackupActivity$do, reason: invalid class name */
    public class Cdo extends bz1<Boolean> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
            BackupActivity.this.f20893goto.dismiss();
            v72.m8769if(th.getMessage());
        }

        @Override // io.reactivex.Observer
        public void onNext(Boolean bool) {
            BackupActivity.this.f20893goto.dismiss();
            if (!bool.booleanValue()) {
                v72.m8769if("恢复失败");
                return;
            }
            v72.m8769if("恢复成功");
            hm1.m3062case().mo970if(new Object[0]);
            jm1.m3934case().mo970if(new Object[0]);
            k61.m4266case().mo970if(new Object[0]);
        }
    }

    /* renamed from: com.wsw.cospa.activity.BackupActivity$for, reason: invalid class name */
    public class Cfor implements SingleObserver<Object> {
        public Cfor() {
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            v72.m8769if(th.getLocalizedMessage());
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            BackupActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(Object obj) {
            v72.m8769if("恢复成功");
        }
    }

    /* renamed from: com.wsw.cospa.activity.BackupActivity$if, reason: invalid class name */
    public class Cif implements SingleObserver<String[]> {
        public Cif() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24807if(String[] strArr, DialogInterface dialogInterface, int i) {
            BackupActivity.this.m24801abstract(of2.m5625do() + wq.f7608extends + on0.f4694final + strArr[i]);
            dialogInterface.dismiss();
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(final String[] strArr) {
            if (strArr.length > 0) {
                new AlertDialog.Builder(BackupActivity.this).setTitle("选择恢复文件").setSingleChoiceItems(strArr, 0, new DialogInterface.OnClickListener() { // from class: com.wsw.cospa.activity.case
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f21474do.m24807if(strArr, dialogInterface, i);
                    }
                }).create().show();
            } else {
                v72.m8769if("未找到备份文件");
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            v72.m8769if(th.getLocalizedMessage());
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            BackupActivity.this.f21908do.add(disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public static /* synthetic */ void m24789default(ObservableEmitter observableEmitter) throws Exception {
        Cpublic.m27032if().m27035goto();
        observableEmitter.onNext(Boolean.TRUE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public static /* synthetic */ void m24790extends(String str, SingleEmitter singleEmitter) throws Exception {
        nf2 nf2Var = new nf2(str);
        String str2 = wq.f7605default + "/backupB.zip";
        nf2Var.m5219for(str2, true);
        com.wsw.cospa.utils.b.m26689catch(str2, wq.f7605default);
        Cpublic.m27032if().m27036this(wq.f7605default);
        singleEmitter.onSuccess(new Object());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m24791finally(String str, Option option, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        v02.m8711if(this).m8718this(str, str2);
        if (wq.Cdo.f7644default.equals(str)) {
            option.setSummary("****************");
        } else {
            option.setSummary(str2);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m24793interface(Context context) {
        context.startActivity(new Intent(context, (Class<?>) BackupActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public static /* synthetic */ void m24795package(SingleEmitter singleEmitter) throws Exception {
        List<nf2> listM5228public = new nf2(of2.m5625do() + wq.f7608extends + on0.f4694final).m5228public();
        Collections.reverse(listM5228public);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Math.min(listM5228public.size(), 10); i++) {
            arrayList.add(listM5228public.get(i).m5233this());
        }
        singleEmitter.onSuccess((String[]) arrayList.toArray(new String[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m24800throws(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            File file = new File(wq.f7605default);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (of2.m5626if()) {
                m24805volatile();
            } else {
                v72.m8769if("请输入WebDav账号和密码！");
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m24801abstract(final String str) {
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.x6
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                BackupActivity.m24790extends(str, singleEmitter);
            }
        }).m4151goto(k0.f3244do).m4155new(mp1.m4975do(this))).subscribe(new Cfor());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f20893goto = new xh1.Cdo(this).m9514for(1).m9513do();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m24802continue() {
        Cimport.m26924const().m26943native(this);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0021;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10000 && Build.VERSION.SDK_INT >= 30) {
            if (Environment.isExternalStorageManager()) {
                try {
                    Cpublic.m27032if().m27035goto();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (i == 10001 && Build.VERSION.SDK_INT >= 30 && Environment.isExternalStorageManager()) {
            File file = new File(wq.f7605default);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (of2.m5626if()) {
                m24805volatile();
            } else {
                v72.m8769if("请输入WebDav账号和密码！");
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f0904c5 /* 2131297477 */:
                String strM8719try = v02.m8711if(this).m8719try(wq.Cdo.f7668throws, "");
                if (!TextUtils.isEmpty(strM8719try)) {
                    m24804strictfp("WebDav账号", strM8719try, wq.Cdo.f7668throws, this.tvWebdavAcccount);
                    break;
                } else {
                    m24804strictfp("WebDav账号", "请输入WebDav账号", wq.Cdo.f7668throws, this.tvWebdavAcccount);
                    break;
                }
            case R.id.arg_res_0x7f0904c6 /* 2131297478 */:
                if (!TextUtils.isEmpty(v02.m8711if(this).m8719try(wq.Cdo.f7644default, ""))) {
                    m24804strictfp("WebDav密码", "****************", wq.Cdo.f7644default, this.tvWebdavPassword);
                    break;
                } else {
                    m24804strictfp("WebDav密码", "请输入WebDav密码", wq.Cdo.f7644default, this.tvWebdavPassword);
                    break;
                }
            case R.id.arg_res_0x7f0904c7 /* 2131297479 */:
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    if (i < 23) {
                        File file = new File(wq.f7605default);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        if (!of2.m5626if()) {
                            v72.m8769if("请输入WebDav账号和密码！");
                            break;
                        } else {
                            m24805volatile();
                            break;
                        }
                    } else if (!ed1.m1798do(this)) {
                        m24803private();
                        break;
                    } else {
                        this.f21908do.add(((ObservableSubscribeProxy) this.f20894this.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.z6
                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) throws Exception {
                                this.f8454do.m24800throws((Boolean) obj);
                            }
                        }));
                        break;
                    }
                } else if (!Environment.isExternalStorageManager()) {
                    Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                    intent.setData(Uri.parse("package:" + getPackageName()));
                    startActivityForResult(intent, 10001);
                    break;
                } else {
                    File file2 = new File(wq.f7605default);
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    if (!of2.m5626if()) {
                        v72.m8769if("请输入WebDav账号和密码！");
                        break;
                    } else {
                        m24805volatile();
                        break;
                    }
                }
            case R.id.arg_res_0x7f0904c8 /* 2131297480 */:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(wq.f7631throw)));
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R.id.arg_res_0x7f0904c9 /* 2131297481 */:
                String strM8719try2 = v02.m8711if(this).m8719try(wq.Cdo.f7665switch, wq.f7627super);
                if (!TextUtils.isEmpty(strM8719try2)) {
                    m24804strictfp("WebDav服务器地址", strM8719try2, wq.Cdo.f7665switch, this.tvWebdavUrl);
                    break;
                } else {
                    m24804strictfp("WebDav服务器地址", "请输入WebDav服务器地址", wq.Cdo.f7665switch, this.tvWebdavUrl);
                    break;
                }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @OnClick({R.id.arg_res_0x7f0900a2})
    public void onRestoreComicClick() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            if (!Environment.isExternalStorageManager()) {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, 10000);
                return;
            }
        } else if (i >= 23 && !ed1.m1798do(this)) {
            m24803private();
            return;
        }
        this.f20893goto.show();
        ((ObservableSubscribeProxy) Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.w6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                BackupActivity.m24789default(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @OnClick({R.id.arg_res_0x7f0900a3})
    public void onSaveComicClick() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            if (!Environment.isExternalStorageManager()) {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, 10000);
                return;
            }
        } else if (i >= 23 && !ed1.m1798do(this)) {
            m24803private();
            return;
        }
        m24802continue();
    }

    /* renamed from: private, reason: not valid java name */
    public void m24803private() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivity(intent);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m24804strictfp(String str, String str2, final String str3, final Option option) {
        DialogTool.s(this, new DialogTool.Cnew(str, null, null), new DialogTool.Ctry("确认", "取消"), str2, null, new DialogTool.EditDialogOptcb() { // from class: android.support.v4.v6
            @Override // com.wsw.cospa.utils.DialogTool.EditDialogOptcb
            public final void onConfirm(String str4) {
                this.f7098do.m24791finally(str3, option, str4);
            }
        });
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.f20894this = new RxPermissions(this);
        this.mSaveComicAuto.bindPreference(wq.N, true);
        this.tvWebdavUrl.setOnClickListener(this);
        this.tvWebdavAcccount.setOnClickListener(this);
        this.tvWebdavPassword.setOnClickListener(this);
        this.tvWebdavRestore.setOnClickListener(this);
        this.tvWebdavStep.setOnClickListener(this);
        this.tvWebdavUrl.setSummary(v02.m8711if(this).m8719try(wq.Cdo.f7665switch, wq.f7627super));
        String strM8719try = v02.m8711if(this).m8719try(wq.Cdo.f7668throws, "");
        if (!TextUtils.isEmpty(strM8719try)) {
            this.tvWebdavAcccount.setSummary(strM8719try);
        }
        if (TextUtils.isEmpty(v02.m8711if(this).m8719try(wq.Cdo.f7644default, ""))) {
            return;
        }
        this.tvWebdavPassword.setSummary("****************");
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m24805volatile() {
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.y6
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                BackupActivity.m24795package(singleEmitter);
            }
        }).m4151goto(k0.f3244do).m4155new(mp1.m4975do(this))).subscribe(new Cif());
    }
}
