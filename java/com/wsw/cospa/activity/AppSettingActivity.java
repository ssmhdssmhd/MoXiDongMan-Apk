package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.support.v4.b0;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.z2;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.bumptech.glide.Glide;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.umeng.analytics.MobclickAgent;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Cnative;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class AppSettingActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: goto, reason: not valid java name */
    private static final String f20885goto = "AppSettingActivity";

    @BindView(R.id.arg_res_0x7f0901df)
    public LinearLayout adManagerView;

    @BindView(R.id.arg_res_0x7f0900a5)
    public LinearLayout backupSettingView;

    @BindView(R.id.arg_res_0x7f0900fd)
    public LinearLayout cleanCacheView;

    @BindView(R.id.arg_res_0x7f09010c)
    public LinearLayout comicSettingView;

    @BindView(R.id.arg_res_0x7f090147)
    public LinearLayout donateView;

    @BindView(R.id.arg_res_0x7f0901b6)
    public LinearLayout feedbackView;

    @BindView(R.id.arg_res_0x7f0901bc)
    public LinearLayout filePathView;

    @BindView(R.id.arg_res_0x7f09027e)
    public LinearLayout ll_dark_mode;

    @BindView(R.id.arg_res_0x7f090287)
    public LinearLayout ll_privacy_protocol;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f0903d7)
    public View statusBarView;

    @BindView(R.id.arg_res_0x7f090464)
    public TextView tvCacheSize;

    @BindView(R.id.arg_res_0x7f0904dd)
    public LinearLayout video_ad_view;

    /* renamed from: com.wsw.cospa.activity.AppSettingActivity$do, reason: invalid class name */
    public class Cdo implements Observer<String> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) {
            AppSettingActivity.this.tvCacheSize.setText(Cnative.m26973super(AppSettingActivity.this));
            v72.m8769if("清除成功！");
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            v72.m8769if(th.getMessage());
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.wsw.cospa.activity.AppSettingActivity$for, reason: invalid class name */
    public class Cfor implements DialogTool.DialogOptCb {
        public Cfor() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            v02.m8711if(AppSettingActivity.this).m8712case(wq.u0, true);
        }
    }

    /* renamed from: com.wsw.cospa.activity.AppSettingActivity$if, reason: invalid class name */
    public class Cif implements DialogTool.DialogOptCb {

        /* renamed from: com.wsw.cospa.activity.AppSettingActivity$if$do, reason: invalid class name */
        public class Cdo implements DialogTool.DialogOptCb {
            public Cdo() {
            }

            @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
            public void onBack() {
            }

            @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
            public void onCancel() {
            }

            @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
            public void onConfirm() {
                int iM10041throw = z2.m10041throw(AppSettingActivity.this);
                String strM10044while = z2.m10044while(AppSettingActivity.this);
                HashMap map = new HashMap();
                map.put("versionCode", iM10041throw + "");
                map.put("versionName", strM10044while);
                map.put("phone_brand", Build.MANUFACTURER);
                map.put("phone_model", Build.MODEL);
                MobclickAgent.onEventObject(AppSettingActivity.this, "close_ad_click", map);
                v02.m8711if(AppSettingActivity.this).m8712case(wq.u0, false);
                v02.m8711if(AppSettingActivity.this).m8716goto(wq.v0, System.currentTimeMillis());
            }
        }

        public Cif() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            DialogTool.o(AppSettingActivity.this, new DialogTool.Cnew("是否关闭广告？", null, "真的要这么绝情吗?" + new String(Character.toChars(Integer.parseInt("1F62D", 16)))), new DialogTool.Ctry("关闭", "取消"), new Cdo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public /* synthetic */ void m24783public(ObservableEmitter observableEmitter) throws Exception {
        Glide.m11040new(this).m11059if();
        if (Environment.getExternalStorageState().equals("mounted")) {
            Cnative.m26963catch(getExternalCacheDir());
        }
        Cnative.m26963catch(getFilesDir());
        observableEmitter.onNext("");
    }

    /* renamed from: static, reason: not valid java name */
    public static void m24784static(Context context) {
        context.startActivity(new Intent(context, (Class<?>) AppSettingActivity.class));
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m24785switch(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) AppSettingActivity.class), 1);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    /* renamed from: native, reason: not valid java name */
    public void m24786native() {
        Glide.m11040new(this).m11057for();
        ((ObservableSubscribeProxy) Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.y2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f8102do.m24783public(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0042;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f0900a5 /* 2131296421 */:
                BackupActivity.m24793interface(this);
                break;
            case R.id.arg_res_0x7f0900fd /* 2131296509 */:
                m24786native();
                break;
            case R.id.arg_res_0x7f09010c /* 2131296524 */:
                ComicSettingActivity.m24957default(this);
                break;
            case R.id.arg_res_0x7f090147 /* 2131296583 */:
                DonateActivity.m24970package(this);
                break;
            case R.id.arg_res_0x7f0901b6 /* 2131296694 */:
                FeedbackActivity.m25020import(this);
                break;
            case R.id.arg_res_0x7f0901bc /* 2131296700 */:
                AppFileActivity.m24769abstract(this);
                break;
            case R.id.arg_res_0x7f0901df /* 2131296735 */:
                m24787return();
                break;
            case R.id.arg_res_0x7f09027e /* 2131296894 */:
                ThemeConfigActivity.m25342import(this);
                break;
            case R.id.arg_res_0x7f090287 /* 2131296903 */:
                WebViewActivity.m25382synchronized(this, "隐私政策", "file:///android_asset/yszc.html");
                break;
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

    /* renamed from: return, reason: not valid java name */
    public void m24787return() {
        if (v02.m8711if(this).m8713do(wq.u0, true)) {
            DialogTool.o(this, new DialogTool.Cnew("广告管理", null, "开发者也讨厌广告，可是没有广告，哪来精力维护图源，哪来精力维护APP，哪来收益给大佬们买辣条和肥仔快乐水呢？\n真的很无奈啊"), new DialogTool.Ctry("关闭广告", "取消"), new Cif());
        } else {
            DialogTool.o(this, new DialogTool.Cnew("广告管理", null, "开发者也讨厌广告，可是没有广告，哪来精力维护图源，哪来精力维护APP，哪来收益给大佬们买辣条和肥仔快乐水呢？\n我也很无奈啊"), new DialogTool.Ctry("开启广告", "取消"), new Cfor());
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.filePathView.setOnClickListener(this);
        this.comicSettingView.setOnClickListener(this);
        this.backupSettingView.setOnClickListener(this);
        this.cleanCacheView.setOnClickListener(this);
        this.donateView.setOnClickListener(this);
        this.feedbackView.setOnClickListener(this);
        this.adManagerView.setOnClickListener(this);
        this.video_ad_view.setOnClickListener(this);
        this.ll_privacy_protocol.setOnClickListener(this);
        this.ll_dark_mode.setOnClickListener(this);
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.tvCacheSize.setText(Cnative.m26973super(this));
    }
}
