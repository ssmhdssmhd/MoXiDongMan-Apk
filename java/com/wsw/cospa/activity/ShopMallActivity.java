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
public class ShopMallActivity extends BaseActivity {

    @BindView(R.id.arg_res_0x7f090249)
    public ImageView iv_qrcode;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public /* synthetic */ void m25288public(DialogInterface dialogInterface, int i) throws IOException {
        if (!ed1.m1798do(this)) {
            v72.m8769if("请去设置打开文件读写权限");
        } else {
            Cthis.m27102break(this, BitmapFactory.decodeResource(getResources(), R.drawable.arg_res_0x7f080138));
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: return, reason: not valid java name */
    public /* synthetic */ boolean m25289return(View view) {
        ((QMUIDialog.Ccase) new QMUIDialog.Ccase(this).m24055volatile("操作")).m23995synchronized("保存二维码", new DialogInterface.OnClickListener() { // from class: android.support.v4.ox1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) throws IOException {
                this.f4803do.m25288public(dialogInterface, i);
            }
        }).m24043interface();
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m25290static(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ShopMallActivity.class));
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

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0043;
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
        this.iv_qrcode.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.px1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f5209do.m25289return(view);
            }
        });
    }
}
