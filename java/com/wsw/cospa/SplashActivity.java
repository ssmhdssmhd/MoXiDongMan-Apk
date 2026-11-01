package com.wsw.cospa;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Build;
import android.support.v4.m7;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.BindView;
import com.gyf.immersionbar.Celse;
import com.umeng.commonsdk.UMConfigure;
import com.wsw.cospa.activity.HomeActivity;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.DialogTool;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

/* loaded from: classes2.dex */
public class SplashActivity extends BaseActivity {

    /* renamed from: break, reason: not valid java name */
    private static final String f20829break = "SplashActivity";

    @BindView(R.id.arg_res_0x7f090094)
    public ImageView appLogo;

    @BindView(R.id.arg_res_0x7f0903bd)
    public FrameLayout container;

    /* renamed from: goto, reason: not valid java name */
    private TransitionDrawable f20830goto;

    @BindView(R.id.arg_res_0x7f09024c)
    public ImageView ivSplash;

    @BindView(R.id.arg_res_0x7f090296)
    public LinearLayout logoContainer;

    /* renamed from: this, reason: not valid java name */
    public boolean f20831this;

    /* renamed from: com.wsw.cospa.SplashActivity$do, reason: invalid class name */
    public class Cdo implements DialogTool.DialogOptCb {
        public Cdo() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
            SplashActivity.this.finish();
            System.exit(0);
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
            v02.m8711if(SplashActivity.this).m8712case(wq.L0, false);
            UMConfigure.init(SplashActivity.this, wq.f7606do, "Umeng", 1, "");
            SplashActivity.this.m24708throws();
        }
    }

    /* renamed from: com.wsw.cospa.SplashActivity$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity.this.startActivity(new Intent(SplashActivity.this, (Class<?>) HomeActivity.class));
            SplashActivity.this.finish();
        }
    }

    @TargetApi(23)
    /* renamed from: native, reason: not valid java name */
    private void m24699native() {
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            arrayList.add("android.permission.READ_PHONE_STATE");
        }
        if (checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (arrayList.size() == 0) {
            m24706public();
            return;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        requestPermissions(strArr, 1024);
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m24700return(int[] iArr) {
        for (int i : iArr) {
            if (i == -1) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m24701static() {
        startActivity(new Intent(this, (Class<?>) HomeActivity.class));
        finish();
    }

    /* renamed from: switch, reason: not valid java name */
    private /* synthetic */ void m24702switch() {
        startActivity(new Intent(this, (Class<?>) HomeActivity.class));
        finish();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case, reason: not valid java name */
    public void mo24703case() {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto, reason: not valid java name */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new, reason: not valid java name */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0046;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 || i == 3) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1024 && m24700return(iArr)) {
            m24706public();
            return;
        }
        v72.m8769if("应用缺少读取手机状态和定位的权限！请点击\"权限\"，打开所需要的权限。");
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivity(intent);
        finish();
    }

    /* renamed from: public, reason: not valid java name */
    public void m24706public() {
        if (this.ivSplash == null) {
            this.ivSplash = (ImageView) findViewById(R.id.arg_res_0x7f09024c);
        }
        this.ivSplash.setVisibility(0);
        if (this.logoContainer == null) {
            this.logoContainer = (LinearLayout) findViewById(R.id.arg_res_0x7f090296);
        }
        this.logoContainer.setVisibility(8);
        TransitionDrawable transitionDrawable = (TransitionDrawable) this.ivSplash.getDrawable();
        this.f20830goto = transitionDrawable;
        transitionDrawable.startTransition(1000);
        wi0.m9159case(new Cif(), 1000L);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this, reason: not valid java name */
    public void mo24707this() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        getSwipeBackLayout().setEnableGesture(false);
        Celse.k2(this).Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).O1(true).s0(R.color.arg_res_0x7f060380).b0();
        if (!isTaskRoot()) {
            Intent intent = getIntent();
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && action.equals("android.intent.action.MAIN")) {
                finish();
                return;
            }
        }
        if (v02.m8711if(this).m8713do(wq.L0, true)) {
            DialogTool.w(this, new DialogTool.Cnew("异次元APP隐私政策", null, "感谢您选择异次元APP!我们非常重视您的个人信息和隐私保护。为了更好地保障您的个人权益，在您使用我们的产品前，请务必审慎阅读《隐私政策》内的所有条款，您点击”同意并继续”的行为即表示您已阅读完毕并同意以上协议的全部内容。开始使用我们的产品和服务"), new DialogTool.Ctry("同意并继续", "不同意"), new Cdo());
        } else {
            UMConfigure.init(this, wq.f7606do, "Umeng", 1, "");
            m24708throws();
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m24708throws() {
        if (v02.m8711if(this).m8713do(wq.u0, true)) {
            if (Build.VERSION.SDK_INT >= 23) {
                m24699native();
                return;
            } else {
                m24706public();
                return;
            }
        }
        long jM8717new = v02.m8711if(this).m8717new(wq.v0);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jM8717new);
        vv0.m8965if("www", "addNotificationTask: now time : " + simpleDateFormat.format(calendar.getTime()));
        calendar.add(5, 3);
        String str = simpleDateFormat.format(calendar.getTime());
        long timeInMillis = calendar.getTimeInMillis();
        vv0.m8965if("www", "addNotificationTask: after time : " + str);
        long timeInMillis2 = Calendar.getInstance().getTimeInMillis();
        if (jM8717new > 0 && timeInMillis2 > timeInMillis) {
            v02.m8711if(this).m8712case(wq.u0, true);
            if (Build.VERSION.SDK_INT >= 23) {
                m24699native();
                return;
            } else {
                m24706public();
                return;
            }
        }
        this.ivSplash.setVisibility(0);
        this.logoContainer.setVisibility(8);
        TransitionDrawable transitionDrawable = (TransitionDrawable) this.ivSplash.getDrawable();
        this.f20830goto = transitionDrawable;
        transitionDrawable.startTransition(1000);
        wi0.m9159case(new Runnable() { // from class: android.support.v4.z02
            @Override // java.lang.Runnable
            public final void run() {
                this.f8416do.m24701static();
            }
        }, 1000L);
    }
}
