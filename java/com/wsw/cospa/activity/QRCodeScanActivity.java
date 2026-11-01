package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import cn.bingoogolapple.qrcode.core.QRCodeView;
import cn.bingoogolapple.qrcode.zxing.ZXingView;
import cn.qqtheme.framework.picker.FilePicker;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Csynchronized;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public class QRCodeScanActivity extends BaseActivity implements QRCodeView.Delegate {

    /* renamed from: const, reason: not valid java name */
    public static final int f21294const = 202;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21296catch;

    /* renamed from: class, reason: not valid java name */
    private RxPermissions f21297class;

    @BindView(R.id.arg_res_0x7f0901ad)
    public FloatingActionButton fabFlashlight;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0904fa)
    public ZXingView zxingview;

    /* renamed from: goto, reason: not valid java name */
    private final int f21298goto = 202;

    /* renamed from: this, reason: not valid java name */
    private final int f21299this = 303;

    /* renamed from: break, reason: not valid java name */
    private final String[] f21295break = {"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE"};

    /* renamed from: default, reason: not valid java name */
    public static void m25224default(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) QRCodeScanActivity.class), 202);
    }

    /* renamed from: return, reason: not valid java name */
    private void m25228return() {
        try {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("image/*");
            startActivityForResult(intent, 202);
        } catch (Exception unused) {
            FilePicker filePicker = new FilePicker(this, 1);
            filePicker.m10948implements(getResources().getColor(R.color.arg_res_0x7f060380));
            filePicker.q(getResources().getColor(R.color.arg_res_0x7f060380));
            filePicker.J(30);
            filePicker.setOnFilePickListener(new FilePicker.OnFilePickListener() { // from class: android.support.v4.hi1
                @Override // cn.qqtheme.framework.picker.FilePicker.OnFilePickListener
                public final void onFilePicked(String str) {
                    this.f2418do.m25229static(str);
                }
            });
            filePicker.m10931finally();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m25229static(String str) {
        this.zxingview.m10811else(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m25230switch(View view) {
        if (this.f21296catch) {
            this.f21296catch = false;
            this.zxingview.m10828try();
        } else {
            this.f21296catch = true;
            this.zxingview.m10817native();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m25231throws(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            this.zxingview.m10812extends();
            this.zxingview.m10806abstract();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
    }

    /* renamed from: extends, reason: not valid java name */
    public void m25232extends() {
        this.zxingview.m10812extends();
        this.zxingview.m10806abstract();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c003e;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.zxingview.m10806abstract();
        if (i2 == -1 && i == 202) {
            this.zxingview.m10811else(Cdefault.m26772super(this, intent.getData()));
        }
    }

    @Override // cn.bingoogolapple.qrcode.core.QRCodeView.Delegate
    public void onCameraAmbientBrightnessChanged(boolean z) {
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0009, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.zxingview.m10824super();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.arg_res_0x7f09006d) {
            m25228return();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        getWindow().getDecorView().post(new Runnable() { // from class: android.support.v4.ji1
            @Override // java.lang.Runnable
            public final void run() {
                this.f3112do.m25232extends();
            }
        });
    }

    @Override // cn.bingoogolapple.qrcode.core.QRCodeView.Delegate
    public void onScanQRCodeOpenCameraError() {
    }

    @Override // cn.bingoogolapple.qrcode.core.QRCodeView.Delegate
    public void onScanQRCodeSuccess(String str) {
        Intent intent = new Intent();
        intent.putExtra("result", str);
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f21908do.add(((ObservableSubscribeProxy) this.f21297class.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.ii1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f2786do.m25231throws((Boolean) obj);
            }
        }));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.zxingview.m10810continue();
        super.onStop();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "扫描二维码");
        this.f21297class = new RxPermissions(this);
        this.zxingview.setDelegate(this);
        this.fabFlashlight.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gi1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2145do.m25230switch(view);
            }
        });
    }
}
