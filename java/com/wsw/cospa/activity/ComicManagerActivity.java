package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.fd2;
import android.support.v4.fp1;
import android.support.v4.fz;
import android.support.v4.g31;
import android.support.v4.hm1;
import android.support.v4.j10;
import android.support.v4.jm1;
import android.support.v4.k61;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.documentfile.provider.DocumentFile;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import cn.qqtheme.framework.picker.ComicFilePicker;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.snackbar.Snackbar;
import com.hwangjr.rxbus.RxBus;
import com.hwangjr.rxbus.annotation.Subscribe;
import com.hwangjr.rxbus.annotation.Tag;
import com.hwangjr.rxbus.thread.EventThread;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicManagerActivity;
import com.wsw.cospa.adapter.ComicSourceAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnCheckedChangeListener;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.service.CheckSourceService;
import com.wsw.cospa.service.WebService;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Cstatic;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public class ComicManagerActivity extends BaseActivity {

    /* renamed from: return, reason: not valid java name */
    public static final int f21034return = 101;

    /* renamed from: static, reason: not valid java name */
    public static final int f21035static = 102;

    /* renamed from: switch, reason: not valid java name */
    public static final int f21036switch = 103;

    /* renamed from: break, reason: not valid java name */
    private SearchView.SearchAutoComplete f21037break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21038catch;

    /* renamed from: const, reason: not valid java name */
    private ComicSourceAdapter f21040const;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private Snackbar f21042goto;

    /* renamed from: import, reason: not valid java name */
    private MenuItem f21043import;

    @BindView(R.id.arg_res_0x7f090299)
    public AppBarLayout mAppBarLayout;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: native, reason: not valid java name */
    private SubMenu f21044native;

    /* renamed from: public, reason: not valid java name */
    private Uri f21045public;

    @BindView(R.id.arg_res_0x7f090389)
    public SearchView searchView;

    /* renamed from: this, reason: not valid java name */
    private Snackbar f21047this;

    /* renamed from: throw, reason: not valid java name */
    private RxPermissions f21048throw;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    /* renamed from: while, reason: not valid java name */
    private xh1 f21049while;

    /* renamed from: class, reason: not valid java name */
    private boolean f21039class = true;

    /* renamed from: final, reason: not valid java name */
    private boolean f21041final = false;

    /* renamed from: super, reason: not valid java name */
    private final int f21046super = 100;

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$case, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Ccase implements DialogTool.DialogOptCb {
        public Ccase() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            DatabaseHelper.m26016switch().m26028goto(DatabaseHelper.m26016switch().e());
            ComicManagerActivity.this.m24954transient();
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Observer<Long> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Long l) {
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            ComicManagerActivity.this.f21908do.add(disposable);
            ComicManagerActivity.this.m24954transient();
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$else, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Celse extends bz1<List<ComicSourceBean>> {
        public Celse() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onComplete() {
            super.onComplete();
            ComicManagerActivity.this.f21049while.dismiss();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            ComicManagerActivity.this.f21049while.dismiss();
            v72.m8769if(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicManagerActivity.this.f21908do.add(disposable);
            ComicManagerActivity.this.f21049while.show();
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicSourceBean> list) {
            ComicManagerActivity.this.f21049while.dismiss();
            if (list.size() <= 0) {
                v72.m8769if("格式不对");
            } else {
                v72.m8769if(String.format("导入成功%d个图源", Integer.valueOf(list.size())));
                ComicManagerActivity.this.p();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$for, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cfor implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicSourceBean f21053do;

        public Cfor(ComicSourceBean comicSourceBean) {
            this.f21053do = comicSourceBean;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            DatabaseHelper.m26016switch().m26020break(this.f21053do);
            ComicManagerActivity.this.m24954transient();
            CharSequence query = ComicManagerActivity.this.searchView.getQuery();
            ComicManagerActivity.this.f21038catch = !TextUtils.isEmpty(query);
            if (ComicManagerActivity.this.f21038catch) {
                ComicManagerActivity.this.f21037break.setText("");
                ComicManagerActivity.this.p();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$goto, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cgoto extends bz1<List<ComicSourceBean>> {
        public Cgoto() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onComplete() {
            super.onComplete();
            ComicManagerActivity.this.f21049while.dismiss();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            ComicManagerActivity.this.f21049while.dismiss();
            v72.m8769if(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicManagerActivity.this.f21908do.add(disposable);
            ComicManagerActivity.this.f21049while.show();
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicSourceBean> list) {
            ComicManagerActivity.this.f21049while.dismiss();
            if (list.size() <= 0) {
                v72.m8769if("格式不对");
                return;
            }
            v72.m8769if(String.format("导入成功%d个图源", Integer.valueOf(list.size())));
            ComicManagerActivity.this.p();
            hm1.m3062case().mo970if(new Object[0]);
            k61.m4266case().mo970if(new Object[0]);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif implements SearchView.OnQueryTextListener {
        public Cif() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            ComicManagerActivity.this.f21038catch = !TextUtils.isEmpty(str);
            ComicManagerActivity.this.q();
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$new, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cnew implements OnCheckedChangeListener {
        public Cnew() {
        }

        @Override // com.wsw.cospa.listener.OnCheckedChangeListener
        public void onCheckedChanged(ComicShelfGroupBean comicShelfGroupBean, boolean z) {
        }

        @Override // com.wsw.cospa.listener.OnCheckedChangeListener
        public void onCheckedChanged(ComicSourceBean comicSourceBean, boolean z) {
            comicSourceBean.setEnable(z);
            DatabaseHelper.m26016switch().m26019abstract(comicSourceBean);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$this, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cthis implements DialogTool.EditDialogOptcb {
        public Cthis() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.EditDialogOptcb
        public void onConfirm(String str) {
            if (TextUtils.isEmpty(str) || !str.startsWith("http")) {
                v72.m8769if("网络地址不合法，请检查图源地址");
                return;
            }
            String strReplaceAll = str.replaceAll(Cclass.f28652do, "");
            g31.m2567for(strReplaceAll);
            if (Patterns.WEB_URL.matcher(strReplaceAll).matches() || URLUtil.isValidUrl(strReplaceAll)) {
                ComicManagerActivity.this.b(l22.m4569package(strReplaceAll));
            } else {
                v72.m8769if("网络地址不合法，请检查图源地址");
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicManagerActivity$try, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Ctry extends bz1<List<String>> {
        public Ctry() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ComicManagerActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<String> list) {
            ComicManagerActivity.this.C(list);
        }
    }

    public static void A(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ComicManagerActivity.class));
    }

    private void c() throws Resources.NotFoundException {
        com.wsw.cospa.utils.Ctry.m27150super(this.searchView, "搜索图源");
        List<ComicSourceBean> listM26022class = DatabaseHelper.m26016switch().m26022class();
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) this.searchView.findViewById(R.id.arg_res_0x7f090394);
        this.f21037break = searchAutoComplete;
        searchAutoComplete.setHintTextColor(getResources().getColor(R.color.arg_res_0x7f060384));
        this.f21037break.setTextSize(14.0f);
        this.searchView.setQueryHint("搜索(共" + listM26022class.size() + "个图源)");
        this.searchView.onActionViewExpanded();
        this.searchView.clearFocus();
        this.searchView.setOnQueryTextListener(new Cif());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i) {
        ComicSourceBean comicSourceBeanM25617class = this.f21040const.m25617class(i);
        DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否删除" + comicSourceBeanM25617class.getBookSourceName() + "图源？"), new DialogTool.Ctry("确认", "取消"), new Cfor(comicSourceBeanM25617class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            File file = new File(wq.f7623public);
            if (file.exists()) {
                return;
            }
            file.mkdirs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        m24951instanceof();
        ((ObservableSubscribeProxy) io.reactivex.Cnew.timer(2L, TimeUnit.SECONDS).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            Cdefault.m26759extends();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            QRCodeScanActivity.m25224default(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(com.wsw.cospa.model.Cdo.e());
        observableEmitter.onComplete();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.InputStream] */
    /* renamed from: implements, reason: not valid java name */
    private void m24938implements(Uri uri) throws Throwable {
        BufferedReader bufferedReader;
        IOException e;
        if (uri == 0) {
            return;
        }
        Cursor cursorQuery = getContentResolver().query(uri, null, null, null, null, null);
        StringBuilder sb = new StringBuilder("");
        ?? r2 = "";
        if (cursorQuery != null) {
            boolean zMoveToFirst = cursorQuery.moveToFirst();
            r2 = zMoveToFirst;
            if (zMoveToFirst) {
                cursorQuery.getString(cursorQuery.getColumnIndex("document_id"));
                cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                int columnIndex = cursorQuery.getColumnIndex("_size");
                boolean zIsNull = cursorQuery.isNull(columnIndex);
                r2 = columnIndex;
                if (!zIsNull) {
                    cursorQuery.getString(columnIndex);
                    r2 = columnIndex;
                }
            }
        }
        try {
            try {
                try {
                    uri = getContentResolver().openInputStream(uri);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            } catch (IOException e3) {
                bufferedReader = null;
                e = e3;
                uri = 0;
            } catch (Throwable th) {
                r2 = 0;
                th = th;
                uri = 0;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(uri));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (uri != 0) {
                        uri.close();
                        return;
                    }
                    return;
                }
            }
            if (TextUtils.isEmpty(sb)) {
                v72.m8769if("文件读取失败");
            } else if (l22.m4579while(sb.toString())) {
                m24953synchronized(sb.toString());
            } else {
                String strM2489do = fz.m2489do(sb.toString());
                if (l22.m4579while(strM2489do)) {
                    m24953synchronized(strM2489do);
                } else {
                    v72.m8769if("文件格式不支持");
                }
            }
            bufferedReader.close();
            if (uri != 0) {
                uri.close();
            }
        } catch (IOException e5) {
            bufferedReader = null;
            e = e5;
        } catch (Throwable th3) {
            r2 = 0;
            th = th3;
            if (r2 != 0) {
                try {
                    r2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                    throw th;
                }
            }
            if (uri != 0) {
                uri.close();
            }
            throw th;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private void m24940interface() {
        DialogTool.r(this, new DialogTool.Cnew("输入网址", null, null), new DialogTool.Ctry("确认", "取消"), "请输入网络图源的地址", new Cthis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(List list, ObservableEmitter observableEmitter) throws Exception {
        for (int i = 1; i <= list.size(); i++) {
            ((ComicSourceBean) list.get(i - 1)).setSerialNumber(i);
        }
        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().insertOrReplaceInTx(list);
        observableEmitter.onNext(com.wsw.cospa.model.Cdo.m26362finally());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(String str) {
        try {
            String strM27048catch = Cstatic.m27048catch(DocumentFile.fromFile(new File(str)));
            if (TextUtils.isEmpty(strM27048catch)) {
                v72.m8769if("文件读取失败");
                return;
            }
            if (l22.m4579while(strM27048catch)) {
                m24953synchronized(strM27048catch);
                return;
            }
            String strM2489do = fz.m2489do(strM27048catch);
            vv0.m8965if("import www", strM2489do);
            if (l22.m4579while(strM2489do)) {
                m24953synchronized(strM2489do);
            } else {
                v72.m8769if("文件格式不支持");
            }
        } catch (Exception unused) {
            v72.m8769if(str + "无法打开！");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(ComicFilePicker comicFilePicker, View view) {
        comicFilePicker.mo10915do();
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            final ComicFilePicker comicFilePicker = new ComicFilePicker(this, 1);
            comicFilePicker.m10948implements(getResources().getColor(R.color.arg_res_0x7f0600fd));
            comicFilePicker.q(getResources().getColor(R.color.arg_res_0x7f0600fd));
            comicFilePicker.n(getResources().getColor(R.color.arg_res_0x7f060114));
            comicFilePicker.D(getResources().getStringArray(R.array.arg_res_0x7f030003));
            if (Build.VERSION.SDK_INT >= 30) {
                comicFilePicker.K(wq.f7618native);
            } else {
                comicFilePicker.K(getExternalFilesDir("").getAbsolutePath().split(getPackageName())[0] + "com.tencent.mobileqq/Tencent/QQfile_recv/");
            }
            comicFilePicker.setOnFilePickListener(new ComicFilePicker.OnFilePickListener() { // from class: android.support.v4.wn
                @Override // cn.qqtheme.framework.picker.ComicFilePicker.OnFilePickListener
                public final void onFilePicked(String str) {
                    this.f7572do.k(str);
                }
            });
            comicFilePicker.m10931finally();
            comicFilePicker.m10946abstract().setText("系统文件选择器");
            comicFilePicker.m10946abstract().setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vn
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7297do.l(comicFilePicker, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(Boolean bool) throws Exception {
        String str;
        if (bool.booleanValue()) {
            try {
                List<ComicSourceBean> listE = DatabaseHelper.m26016switch().e();
                if (listE == null || listE.size() <= 0) {
                    v72.m8769if("请先选中图源！");
                    return;
                }
                if (listE.size() == 1) {
                    str = listE.get(0).getBookSourceName() + "_share_source_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                } else {
                    str = listE.size() + "个图源_share_source_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                }
                String str2 = wq.f7623public;
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String strM27019do = Cpackage.m27019do(listE);
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
                fileOutputStream.write(fz.m2490if(strM27019do).getBytes());
                fileOutputStream.close();
                File file2 = new File(str2 + str);
                Intent intent = new Intent("android.intent.action.SEND");
                if (Build.VERSION.SDK_INT >= 24) {
                    Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file2);
                    grantUriPermission(getPackageName(), uriForFile, 3);
                    intent.setFlags(268435456);
                    intent.addFlags(3);
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                } else {
                    intent.setFlags(268435456);
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file2));
                }
                intent.setType("text/*");
                startActivity(Intent.createChooser(intent, "分享图源"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(View view) {
        CheckSourceService.m26546break(this);
    }

    private void u() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f21048throw.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.bo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f498do.m((Boolean) obj);
            }
        }));
    }

    private void v() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("text/*");
        startActivityForResult(intent, 100);
    }

    public void B() {
        this.f21039class = true;
        Iterator<ComicSourceBean> it = this.f21040const.m25618const().iterator();
        while (it.hasNext()) {
            if (!it.next().getEnable()) {
                this.f21039class = false;
                return;
            }
        }
    }

    public void C(List<String> list) {
        SubMenu subMenu = this.f21044native;
        if (subMenu == null) {
            return;
        }
        subMenu.removeGroup(R.id.arg_res_0x7f0903b5);
        if (list.size() == 0) {
            this.f21043import.setVisible(false);
            return;
        }
        this.f21043import.setVisible(true);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.f21044native.add(R.id.arg_res_0x7f0903b5, 0, 0, it.next());
        }
    }

    public void D(int i) {
        this.searchView.setQueryHint(String.format("搜索(共%s个图源)", Integer.valueOf(i)));
    }

    public void a(String str) {
        try {
            String strM27048catch = Cstatic.m27048catch(DocumentFile.fromFile(new File(str)));
            if (TextUtils.isEmpty(strM27048catch)) {
                v72.m8769if("文件读取失败");
                return;
            }
            if (l22.m4579while(strM27048catch)) {
                m24953synchronized(strM27048catch);
                return;
            }
            String strM2489do = fz.m2489do(strM27048catch);
            if (l22.m4579while(strM2489do)) {
                m24953synchronized(strM2489do);
            } else {
                v72.m8769if("文件格式不支持");
            }
        } catch (Exception unused) {
            v72.m8769if(str + "无法打开！");
        }
    }

    public void b(String str) {
        try {
            new URL(str);
            ((ObservableSubscribeProxy) com.wsw.cospa.model.Cdo.m26363implements(str).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Celse());
        } catch (Exception e) {
            e.printStackTrace();
            v72.m8769if("URL格式不对");
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        List<ComicSourceBean> listM26366package;
        this.f21040const = new ComicSourceAdapter(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setAdapter(this.f21040const);
        this.f21040const.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.xn
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f7990do.d(i);
            }
        });
        this.f21040const.setOnCheckedChangeListener(new Cnew());
        boolean z = !TextUtils.isEmpty(this.searchView.getQuery());
        this.f21038catch = z;
        if (z) {
            listM26366package = t("%" + ((Object) this.searchView.getQuery()) + "%");
        } else {
            listM26366package = com.wsw.cospa.model.Cdo.m26366package();
        }
        Csynchronized.m27097else(this, this.mToolbar, "图源管理(" + listM26366package.size() + ")");
        this.searchView.setQueryHint("搜索(共" + listM26366package.size() + "个图源)");
        this.f21040const.refresh(listM26366package);
        if (listM26366package.size() > 0) {
            m24951instanceof();
        } else {
            z();
        }
    }

    @Subscribe(tags = {@Tag(fp1.f1930default)}, thread = EventThread.MAIN_THREAD)
    public void checkSourceFinish(String str) {
        x(getWindow().getDecorView(), str);
        invalidateOptionsMenu();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m24951instanceof() {
        this.error_view.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c002b;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i != 202) {
                switch (i) {
                    case 100:
                        if (Build.VERSION.SDK_INT < 30) {
                            if (intent != null) {
                                a(Cdefault.m26772super(this, intent.getData()));
                                break;
                            }
                        } else {
                            m24938implements(intent.getData());
                            break;
                        }
                        break;
                    case 101:
                    case 103:
                        p();
                        break;
                    case 102:
                        q();
                        break;
                }
            }
            if (intent != null) {
                String stringExtra = intent.getStringExtra("result");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                if (l22.m4579while(stringExtra)) {
                    m24953synchronized(stringExtra);
                    return;
                }
                if (fd2.m2255new(stringExtra)) {
                    b(stringExtra);
                    return;
                }
                String strM2489do = fz.m2489do(stringExtra);
                if (l22.m4579while(strM2489do)) {
                    m24953synchronized(strM2489do);
                } else {
                    v72.m8769if("格式不支持");
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        j10.m3652do(this.searchView);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0005, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        RxBus.get().unregister(this);
        xh1 xh1Var = this.f21049while;
        if (xh1Var != null) {
            xh1Var.cancel();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.f21038catch) {
            return super.onKeyDown(i, keyEvent);
        }
        try {
            this.f21037break.setText("");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (menu != null && menu.getClass().getSimpleName().equalsIgnoreCase("MenuBuilder")) {
            try {
                Method declaredMethod = menu.getClass().getDeclaredMethod("setOptionalIconsVisible", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(menu, Boolean.TRUE);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) throws Throwable {
        super.onNewIntent(intent);
        if (intent != null) {
            String action = intent.getAction();
            this.f21045public = intent.getData();
            if ("android.intent.action.VIEW".equals(action)) {
                if (this.f21045public.getScheme() == "file") {
                    if (Build.VERSION.SDK_INT >= 30) {
                        m24938implements(this.f21045public);
                        return;
                    } else {
                        a(Cdefault.m26772super(this, this.f21045public));
                        return;
                    }
                }
                String strM27048catch = Cstatic.m27048catch(DocumentFile.fromSingleUri(this, this.f21045public));
                if (TextUtils.isEmpty(strM27048catch)) {
                    v72.m8769if("文件读取失败");
                    return;
                }
                if (l22.m4579while(strM27048catch)) {
                    m24953synchronized(strM27048catch);
                } else if (l22.m4579while(fz.m2489do(strM27048catch))) {
                    m24953synchronized(strM27048catch);
                } else {
                    v72.m8769if("文件格式不支持");
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws SQLException {
        int i = 0;
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
            case R.id.arg_res_0x7f090083 /* 2131296387 */:
                this.f21041final = false;
                AddComicSourceActivity.h(this, AddComicSourceActivity.f20857return);
                break;
            case R.id.arg_res_0x7f0900f0 /* 2131296496 */:
                CheckSourceService.m26552goto(this, this.f21040const.m25618const());
                break;
            case R.id.arg_res_0x7f09012d /* 2131296557 */:
                m24952protected();
                break;
            case R.id.arg_res_0x7f0901aa /* 2131296682 */:
                this.f21908do.add(((ObservableSubscribeProxy) this.f21048throw.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.sn
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        ComicManagerActivity.g((Boolean) obj);
                    }
                }));
                break;
            case R.id.arg_res_0x7f090294 /* 2131296916 */:
                u();
                break;
            case R.id.arg_res_0x7f0902f7 /* 2131297015 */:
                m24940interface();
                break;
            case R.id.arg_res_0x7f09030f /* 2131297039 */:
                OnkeyEncryptActivity.a(this, 1);
                break;
            case R.id.arg_res_0x7f090310 /* 2131297040 */:
                OnkeyEncryptActivity.a(this, 2);
                break;
            case R.id.arg_res_0x7f09034d /* 2131297101 */:
                this.f21908do.add(((ObservableSubscribeProxy) this.f21048throw.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.ao
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f218do.h((Boolean) obj);
                    }
                }));
                break;
            case R.id.arg_res_0x7f09039f /* 2131297183 */:
                w();
                break;
            case R.id.arg_res_0x7f0903b4 /* 2131297204 */:
                if (!this.f21038catch) {
                    List<ComicSourceBean> listM26022class = DatabaseHelper.m26016switch().m26022class();
                    boolean zM26021catch = DatabaseHelper.m26016switch().m26021catch();
                    while (i < listM26022class.size()) {
                        listM26022class.get(i).setEnable(!zM26021catch);
                        i++;
                    }
                    DatabaseHelper.m26016switch().j(!zM26021catch);
                    this.f21040const.refresh(listM26022class);
                    break;
                } else {
                    List<ComicSourceBean> listT = t("%" + ((Object) this.searchView.getQuery()) + "%");
                    while (i < listT.size()) {
                        ComicSourceBean comicSourceBean = listT.get(i);
                        comicSourceBean.setEnable(!comicSourceBean.getEnable());
                        DatabaseHelper.m26016switch().m26019abstract(comicSourceBean);
                        i++;
                    }
                    this.f21040const.refresh(listT);
                    break;
                }
            case R.id.arg_res_0x7f0904e4 /* 2131297508 */:
                if (!WebService.f22498else) {
                    if (!WebService.m26601try(this)) {
                        v72.m8769if(getString(R.string.arg_res_0x7f110113));
                    }
                    menuItem.setTitle("关闭Web服务");
                    break;
                } else {
                    WebService.m26593case(this);
                    menuItem.setTitle("开启Web服务");
                    break;
                }
        }
        if (menuItem.getGroupId() == R.id.arg_res_0x7f0903b5) {
            this.searchView.setQuery(menuItem.getTitle(), true);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem menuItemFindItem = menu.findItem(R.id.arg_res_0x7f090071);
        this.f21043import = menuItemFindItem;
        this.f21044native = menuItemFindItem.getSubMenu();
        r();
        for (int i = 0; i < menu.size(); i++) {
            switch (menu.getItem(i).getItemId()) {
                case R.id.arg_res_0x7f09030f /* 2131297039 */:
                case R.id.arg_res_0x7f090310 /* 2131297040 */:
                    menu.getItem(i).setVisible(false);
                    break;
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f21041final) {
            return;
        }
        p();
    }

    public void p() {
        List<ComicSourceBean> listM26366package;
        boolean z = !TextUtils.isEmpty(this.searchView.getQuery());
        this.f21038catch = z;
        if (z) {
            listM26366package = t("%" + ((Object) this.searchView.getQuery()) + "%");
        } else {
            listM26366package = com.wsw.cospa.model.Cdo.m26366package();
        }
        if (listM26366package == null) {
            listM26366package = new ArrayList<>();
        }
        Csynchronized.m27097else(this, this.mToolbar, "图源管理(" + listM26366package.size() + ")");
        this.searchView.setQueryHint("搜索(共" + listM26366package.size() + "个图源)");
        this.f21040const.refresh(listM26366package);
        if (listM26366package.size() > 0) {
            m24951instanceof();
        } else {
            z();
        }
        jm1.m3934case().mo970if(new Object[0]);
        k61.m4266case().mo970if(new Object[0]);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m24952protected() {
        List<ComicSourceBean> listE = DatabaseHelper.m26016switch().e();
        if (listE == null || listE.size() <= 0) {
            return;
        }
        DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否批量删除选中的图源？共" + listE.size() + "个图源！"), new DialogTool.Ctry("确认", "取消"), new Ccase());
    }

    public void q() {
        if (!this.f21038catch) {
            this.f21040const.m25623package(com.wsw.cospa.model.Cdo.m26366package());
            return;
        }
        this.f21040const.m25623package(t("%" + ((Object) this.searchView.getQuery()) + "%"));
    }

    public void r() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.zn
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                ComicManagerActivity.i(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ctry());
    }

    public void s(final List<ComicSourceBean> list) {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.yn
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                ComicManagerActivity.j(list, observableEmitter);
            }
        }).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe();
        supportInvalidateOptionsMenu();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m24953synchronized(String str) {
        ((ObservableSubscribeProxy) com.wsw.cospa.model.Cdo.m26374transient(str).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cgoto());
    }

    public List<ComicSourceBean> t(String str) {
        return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().whereOr(ComicSourceBeanDao.Properties.f22052try.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), ComicSourceBeanDao.Properties.f22037new.like(str), ComicSourceBeanDao.Properties.d.like(str), ComicSourceBeanDao.Properties.f22020class.like(str), ComicSourceBeanDao.Properties.f22021const.like(str), ComicSourceBeanDao.Properties.f22027final.like(str), ComicSourceBeanDao.Properties.f22022continue.like(str), ComicSourceBeanDao.Properties.f22040protected.like(str)).orderDesc(ComicSourceBeanDao.Properties.f22017break).orderRaw(com.wsw.cospa.model.Cdo.m26359continue()).list();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws Resources.NotFoundException {
        RxBus.get().register(this);
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "图源管理");
        c();
        this.f21048throw = new RxPermissions(this);
        this.f21049while = new xh1.Cdo(this).m9514for(1).m9516new("正在导入图源！").m9513do();
        this.f21908do.add(((ObservableSubscribeProxy) this.f21048throw.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.tn
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                ComicManagerActivity.e((Boolean) obj);
            }
        }));
        this.f21041final = true;
        this.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.rn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f5880do.f(view);
            }
        });
    }

    /* renamed from: transient, reason: not valid java name */
    public void m24954transient() {
        List<ComicSourceBean> listM26366package;
        boolean z = !TextUtils.isEmpty(this.searchView.getQuery());
        this.f21038catch = z;
        if (z) {
            listM26366package = t("%" + ((Object) this.searchView.getQuery()) + "%");
        } else {
            listM26366package = com.wsw.cospa.model.Cdo.m26366package();
        }
        if (listM26366package == null) {
            listM26366package = new ArrayList<>();
        }
        Csynchronized.m27097else(this, this.mToolbar, "图源管理(" + listM26366package.size() + ")");
        this.searchView.setQueryHint("搜索(共" + listM26366package.size() + "个图源)");
        this.f21040const.refresh(listM26366package);
        if (listM26366package.size() > 0) {
            m24951instanceof();
        } else {
            z();
        }
        jm1.m3934case().mo970if(new Object[0]);
        k61.m4266case().mo970if(new Object[0]);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: try, reason: not valid java name */
    public void mo24955try(Bundle bundle) throws Throwable {
        super.mo24955try(bundle);
        if (bundle == null) {
            Intent intent = getIntent();
            String action = intent.getAction();
            this.f21045public = intent.getData();
            if ("android.intent.action.VIEW".equals(action)) {
                if (this.f21045public.getScheme() == "file") {
                    if (Build.VERSION.SDK_INT >= 30) {
                        m24938implements(this.f21045public);
                        return;
                    } else {
                        a(Cdefault.m26772super(this, this.f21045public));
                        return;
                    }
                }
                String strM27048catch = Cstatic.m27048catch(DocumentFile.fromSingleUri(this, this.f21045public));
                if (TextUtils.isEmpty(strM27048catch)) {
                    v72.m8769if("文件读取失败");
                    return;
                }
                if (l22.m4579while(strM27048catch)) {
                    m24953synchronized(strM27048catch);
                } else if (l22.m4579while(fz.m2489do(strM27048catch))) {
                    m24953synchronized(strM27048catch);
                } else {
                    v72.m8769if("文件格式不支持");
                }
            }
        }
    }

    @Subscribe(tags = {@Tag(fp1.f1927class)}, thread = EventThread.MAIN_THREAD)
    public void upCheckSourceState(String str) {
        q();
        Snackbar snackbar = this.f21047this;
        if (snackbar == null) {
            Snackbar snackbarF = Snackbar.F(getWindow().getDecorView(), str, -2);
            this.f21047this = snackbarF;
            snackbarF.J(-1);
            this.f21047this.I(getString(R.string.arg_res_0x7f110039), new View.OnClickListener() { // from class: android.support.v4.un
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6949do.o(view);
                }
            });
        } else {
            snackbar.R(str);
        }
        if (this.f21047this.c()) {
            return;
        }
        this.f21047this.s();
    }

    public void w() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f21048throw.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.co
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f836do.n((Boolean) obj);
            }
        }));
    }

    public void x(View view, String str) {
        y(view, str, -1);
    }

    public void y(View view, String str, int i) {
        Snackbar snackbar = this.f21042goto;
        if (snackbar == null) {
            this.f21042goto = Snackbar.F(view, str, i);
        } else {
            snackbar.R(str);
            this.f21042goto.n(i);
        }
        this.f21042goto.s();
    }

    public void z() {
        this.error_view.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
        this.tvErrorView.setText("暂无图源，请关注异次元微信公众号：搜索【异次元APP软件】或者扫描关于界面中的二维码获取图源");
        this.tvRetry.setText("点击刷新");
    }
}
