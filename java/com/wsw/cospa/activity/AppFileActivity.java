package com.wsw.cospa.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import cn.qqtheme.framework.picker.ComicFilePicker;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.StorageInfo;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cdo;
import com.wsw.cospa.utils.Csynchronized;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class AppFileActivity extends BaseActivity implements View.OnClickListener {

    @BindView(R.id.arg_res_0x7f09014b)
    public LinearLayout downloadPathView;

    /* renamed from: goto, reason: not valid java name */
    private RxPermissions f20882goto;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private String f20883this;

    @BindView(R.id.arg_res_0x7f090462)
    public TextView tvBackupPath;

    @BindView(R.id.arg_res_0x7f090473)
    public TextView tvCrashPath;

    @BindView(R.id.arg_res_0x7f09047e)
    public TextView tvDownloadPath;

    @BindView(R.id.arg_res_0x7f09048d)
    public TextView tvImagePath;

    @BindView(R.id.arg_res_0x7f0904b5)
    public TextView tvSourcePath;

    /* renamed from: abstract, reason: not valid java name */
    public static void m24769abstract(Context context) {
        context.startActivity(new Intent(context, (Class<?>) AppFileActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m24770default(ComicFilePicker comicFilePicker, View view) {
        comicFilePicker.mo10915do();
        v02.m8711if(this).m8718this(wq.f7610finally, "");
        this.tvDownloadPath.setText(wq.f7618native);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m24771extends(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            String strM8719try = v02.m8711if(this).m8719try(wq.f7610finally, "");
            if (TextUtils.isEmpty(strM8719try)) {
                strM8719try = wq.f7618native;
            }
            final ComicFilePicker comicFilePicker = new ComicFilePicker(this, 0);
            comicFilePicker.m10948implements(getResources().getColor(R.color.arg_res_0x7f060380));
            comicFilePicker.q(getResources().getColor(R.color.arg_res_0x7f060380));
            comicFilePicker.K(strM8719try);
            comicFilePicker.setOnFilePickListener(new ComicFilePicker.OnFilePickListener() { // from class: android.support.v4.t2
                @Override // cn.qqtheme.framework.picker.ComicFilePicker.OnFilePickListener
                public final void onFilePicked(String str) {
                    this.f6371do.m24780throws(str);
                }
            });
            comicFilePicker.m10931finally();
            comicFilePicker.m10951private().setText("恢复默认路径");
            comicFilePicker.m10951private().setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.s2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6000do.m24770default(comicFilePicker, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m24772finally(QMUIDialog.Cfor cfor, List list, List list2, DialogInterface dialogInterface, int i) throws Throwable {
        int iA = cfor.a();
        String str = (String) list.get(iA);
        Boolean bool = (Boolean) list2.get(iA);
        Cdo cdoM26786try = Cdo.m26786try(this, wq.f7610finally);
        cdoM26786try.m26811throws(wq.f7620package, str);
        cdoM26786try.m26806static(wq.f7621private, bool);
        v02.m8711if(this).m8718this(wq.f7610finally, str);
        this.tvDownloadPath.setText(str);
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        dialogInterface.dismiss();
    }

    /* renamed from: package, reason: not valid java name */
    private void m24775package() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f20882goto.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.u2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f6740do.m24771extends((Boolean) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m24779switch(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            ArrayList<StorageInfo> arrayListM26764import = Cdefault.m26764import(this);
            if (arrayListM26764import == null || arrayListM26764import.size() <= 1) {
                m24775package();
            } else {
                m24781private();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m24780throws(String str) {
        v02.m8711if(this).m8718this(wq.f7610finally, str);
        this.tvDownloadPath.setText(str);
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
        return R.layout.arg_res_0x7f0c0020;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.arg_res_0x7f09014b) {
            return;
        }
        this.f21908do.add(((ObservableSubscribeProxy) this.f20882goto.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.v2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f7038do.m24779switch((Boolean) obj);
            }
        }));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    public void m24781private() throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException {
        String string;
        ArrayList<StorageInfo> arrayListM26764import = Cdefault.m26764import(this);
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < arrayListM26764import.size(); i2++) {
            StorageInfo storageInfo = arrayListM26764import.get(i2);
            if (storageInfo.isRemovable()) {
                string = storageInfo.getPath() + "/Android/data/" + getPackageName() + "/异次元";
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(storageInfo.getPath());
                String str = File.separator;
                sb.append(str);
                sb.append("异次元");
                sb.append(str);
                string = sb.toString();
            }
            arrayList.add(string);
            arrayList2.add(Boolean.valueOf(storageInfo.isRemovable));
            if (string.equals(this.f20883this)) {
                i = i2;
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
        cfor.m24055volatile("选择存储卡位置");
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.r2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) throws Throwable {
                this.f5585do.m24772finally(cfor, arrayList, arrayList2, dialogInterface, i3);
            }
        });
        cfor.b(i);
        cfor.m24043interface();
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
        this.f20882goto = new RxPermissions(this);
        this.tvSourcePath.setText(wq.f7623public);
        this.tvCrashPath.setText(wq.f7624return);
        String strM8719try = v02.m8711if(this).m8719try(wq.f7610finally, "");
        this.f20883this = strM8719try;
        if (TextUtils.isEmpty(strM8719try)) {
            this.f20883this = wq.f7625static;
        }
        this.tvDownloadPath.setText(this.f20883this);
        this.tvBackupPath.setText(wq.f7632throws);
        this.tvImagePath.setText(wq.f7628switch);
        this.downloadPathView.setOnClickListener(this);
    }
}
