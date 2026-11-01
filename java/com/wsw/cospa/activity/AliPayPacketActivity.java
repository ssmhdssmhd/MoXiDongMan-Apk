package com.wsw.cospa.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.support.v4.ed1;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.v72;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Cthis;
import java.io.IOException;

/* loaded from: classes2.dex */
public class AliPayPacketActivity extends BaseActivity {

    @BindView(R.id.arg_res_0x7f090245)
    public ImageView ivPacket;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: com.wsw.cospa.activity.AliPayPacketActivity$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24768if(DialogInterface dialogInterface, int i) throws IOException {
            if (!ed1.m1798do(AliPayPacketActivity.this)) {
                v72.m8769if("请去设置打开文件读写权限");
                return;
            }
            Cthis.m27102break(AliPayPacketActivity.this, BitmapFactory.decodeResource(AliPayPacketActivity.this.getResources(), R.drawable.arg_res_0x7f080163));
            dialogInterface.dismiss();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((QMUIDialog.Ccase) new QMUIDialog.Ccase(AliPayPacketActivity.this).m24055volatile("操作")).m23995synchronized("保存二维码图片", new DialogInterface.OnClickListener() { // from class: com.wsw.cospa.activity.try
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) throws IOException {
                    this.f21516do.m24768if(dialogInterface, i);
                }
            }).m24043interface();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m24766import(Context context) {
        context.startActivity(new Intent(context, (Class<?>) AliPayPacketActivity.class));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.ivPacket.setOnClickListener(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c001f;
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
