package com.wsw.cospa.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.ed1;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.v72;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Cthis;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* loaded from: classes2.dex */
public class DonateActivity extends BaseActivity {

    @BindView(R.id.arg_res_0x7f09023c)
    public ImageView ivDonate;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f0904ca)
    public TextView tvZhbhb;

    @BindView(R.id.arg_res_0x7f0904cb)
    public TextView tvZhbsk;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m24965default(View view) throws UnsupportedEncodingException {
        m24973static(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m24966extends(DialogInterface dialogInterface, int i) throws IOException {
        if (!ed1.m1798do(this)) {
            v72.m8769if("请去设置打开文件读写权限");
        } else {
            Cthis.m27102break(this, BitmapFactory.decodeResource(getResources(), R.drawable.arg_res_0x7f08009f));
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ boolean m24967finally(View view) {
        ((QMUIDialog.Ccase) new QMUIDialog.Ccase(this).m24055volatile("操作")).m23995synchronized("保存二维码图片", new DialogInterface.OnClickListener() { // from class: android.support.v4.a20
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) throws IOException {
                this.f15do.m24966extends(dialogInterface, i);
            }
        }).m24043interface();
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public static void m24970package(Context context) {
        context.startActivity(new Intent(context, (Class<?>) DonateActivity.class));
    }

    /* renamed from: static, reason: not valid java name */
    public static void m24973static(Context context) throws UnsupportedEncodingException {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("alipayqr://platformapi/startapp?saId=10000007&qrcode=https://qr.alipay.com/" + URLEncoder.encode("fkx07508pbyt3kopdajxmcb", "utf-8")));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m24974switch(Context context) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        ClipData clipDataNewPlainText = ClipData.newPlainText("hongbao", "637807319");
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(clipDataNewPlainText);
            v72.m8769if("红包码已复制\n支付宝首页搜索“637807319” 立即领红包");
        }
        try {
            Intent launchIntentForPackage = context.getApplicationContext().getPackageManager().getLaunchIntentForPackage("com.eg.android.AlipayGphone");
            launchIntentForPackage.addFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m24975throws(View view) {
        AliPayPacketActivity.m24766import(this);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.tvZhbhb.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.c20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f580do.m24975throws(view);
            }
        });
        this.tvZhbsk.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.b20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws UnsupportedEncodingException {
                this.f311do.m24965default(view);
            }
        });
        this.ivDonate.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.d20
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f923do.m24967finally(view);
            }
        });
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c002d;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
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
    }
}
