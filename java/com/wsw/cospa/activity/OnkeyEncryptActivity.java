package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.de;
import android.support.v4.fz;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.pw0;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.core.widget.NestedScrollView;
import androidx.documentfile.provider.DocumentFile;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import cn.qqtheme.framework.picker.ComicFilePicker;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBarWrapper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cgoto;
import com.wsw.cospa.utils.Cstatic;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.ScrollBindHelper;
import com.wsw.cospa.widget.view.FixedTextInputEditText;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Consumer;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class OnkeyEncryptActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: throw, reason: not valid java name */
    public static final int f21275throw = 10002;

    @BindView(R.id.arg_res_0x7f090082)
    public VerticalSeekBar addComicSeekBarMainScrollThumb;

    @BindView(R.id.arg_res_0x7f090084)
    public VerticalSeekBarWrapper addComicSeekBarWrapper;

    /* renamed from: break, reason: not valid java name */
    private String f21276break;

    @BindView(R.id.arg_res_0x7f0900c9)
    public TextView btnDecrypt;

    @BindView(R.id.arg_res_0x7f0900cb)
    public TextView btnEncrypt;

    @BindView(R.id.arg_res_0x7f0900cc)
    public ImageView btnExpander;

    @BindView(R.id.arg_res_0x7f0900ca)
    public TextView btn_decrypt_source;

    @BindView(R.id.arg_res_0x7f0900cd)
    public TextView btn_export_decrypt_source;

    @BindView(R.id.arg_res_0x7f0900d4)
    public TextView btn_share_decrypt_source;

    /* renamed from: catch, reason: not valid java name */
    private RxPermissions f21277catch;

    /* renamed from: class, reason: not valid java name */
    private xh1 f21278class;

    /* renamed from: const, reason: not valid java name */
    private int f21279const;

    @BindView(R.id.arg_res_0x7f090175)
    public FixedTextInputEditText etEncrypt;

    @BindView(R.id.arg_res_0x7f09017a)
    public FixedTextInputEditText etPlaintext;

    @BindView(R.id.arg_res_0x7f09027f)
    public LinearLayout ll_decrypt_source;

    @BindView(R.id.arg_res_0x7f090285)
    public LinearLayout ll_onkey_encrypt;

    @BindView(R.id.arg_res_0x7f0902a7)
    public NestedScrollView mScrollView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09045e)
    public TextView tvAesPassword;

    @BindView(R.id.arg_res_0x7f0904c4)
    public TextView tvVersion;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tv_title;

    /* renamed from: goto, reason: not valid java name */
    private final int f21281goto = 10001;

    /* renamed from: this, reason: not valid java name */
    private boolean f21283this = true;

    /* renamed from: final, reason: not valid java name */
    private int f21280final = 1;

    /* renamed from: super, reason: not valid java name */
    private String f21282super = "";

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$case, reason: invalid class name */
    public class Ccase extends bz1<String> {
        public Ccase() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) {
            if (TextUtils.isEmpty(str)) {
                v72.m8769if("文件读取失败");
                return;
            }
            OnkeyEncryptActivity.this.f21282super = fz.m2489do(str);
            v72.m8769if("解密完成");
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            v72.m8769if(str);
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$do, reason: invalid class name */
    public class Cdo extends bz1<String> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) {
            OnkeyEncryptActivity.this.f21278class.dismiss();
            if (TextUtils.isEmpty(str)) {
                v72.m8769if("文件读取失败");
                return;
            }
            OnkeyEncryptActivity.this.f21282super = fz.m2489do(str);
            v72.m8769if("解密完成");
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            v72.m8769if(str);
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$else, reason: invalid class name */
    public class Celse implements ObservableOnSubscribe<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f21286do;

        public Celse(String str) {
            this.f21286do = str;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<String> observableEmitter) throws Exception {
            DocumentFile documentFileFromFile;
            try {
                documentFileFromFile = DocumentFile.fromFile(new File(this.f21286do));
            } catch (Exception unused) {
                observableEmitter.onError(new Throwable("导入本地图源失败！"));
                documentFileFromFile = null;
            }
            observableEmitter.onNext(Cstatic.m27048catch(documentFileFromFile));
            observableEmitter.onComplete();
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$for, reason: invalid class name */
    public class Cfor extends bz1<Boolean> {
        public Cfor() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onComplete() {
            super.onComplete();
            if (OnkeyEncryptActivity.this.f21278class == null || OnkeyEncryptActivity.this.isFinishing()) {
                return;
            }
            OnkeyEncryptActivity.this.f21278class.dismiss();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            if (OnkeyEncryptActivity.this.f21278class == null || OnkeyEncryptActivity.this.isFinishing()) {
                return;
            }
            OnkeyEncryptActivity.this.f21278class.dismiss();
        }

        @Override // io.reactivex.Observer
        public void onNext(Boolean bool) {
            v72.m8769if("加密完成");
            OnkeyEncryptActivity.this.setResult(-1);
            OnkeyEncryptActivity.this.finish();
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$if, reason: invalid class name */
    public class Cif implements ObservableOnSubscribe<String> {
        public Cif() {
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<String> observableEmitter) throws Exception {
            DocumentFile documentFileFromFile;
            String strTrim = OnkeyEncryptActivity.this.etEncrypt.getText().toString().trim();
            try {
                documentFileFromFile = DocumentFile.fromFile(new File(strTrim));
            } catch (Exception unused) {
                observableEmitter.onError(new Throwable(strTrim + "无法打开！"));
                documentFileFromFile = null;
            }
            observableEmitter.onNext(Cstatic.m27048catch(documentFileFromFile));
            observableEmitter.onComplete();
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$new, reason: invalid class name */
    public class Cnew extends bz1<String> {
        public Cnew() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) {
            if (TextUtils.isEmpty(str)) {
                v72.m8769if("文件读取失败");
                return;
            }
            OnkeyEncryptActivity.this.f21282super = fz.m2489do(str);
            v72.m8769if("解密完成");
        }
    }

    /* renamed from: com.wsw.cospa.activity.OnkeyEncryptActivity$try, reason: invalid class name */
    public class Ctry implements ObservableOnSubscribe<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Uri f21291do;

        public Ctry(Uri uri) {
            this.f21291do = uri;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v12 */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Type inference failed for: r2v11, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v19 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v20 */
        /* JADX WARN: Type inference failed for: r2v21 */
        /* JADX WARN: Type inference failed for: r2v22 */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r9v0, types: [io.reactivex.Emitter, io.reactivex.ObservableEmitter<java.lang.String>] */
        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<String> observableEmitter) throws Exception {
            Cursor cursorQuery = OnkeyEncryptActivity.this.getContentResolver().query(this.f21291do, null, null, null, null, null);
            StringBuilder sb = new StringBuilder("");
            ?? OpenInputStream = "";
            if (cursorQuery != null) {
                boolean zMoveToFirst = cursorQuery.moveToFirst();
                OpenInputStream = zMoveToFirst;
                if (zMoveToFirst) {
                    cursorQuery.getString(cursorQuery.getColumnIndex("document_id"));
                    cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                    int columnIndex = cursorQuery.getColumnIndex("_size");
                    boolean zIsNull = cursorQuery.isNull(columnIndex);
                    OpenInputStream = columnIndex;
                    if (!zIsNull) {
                        cursorQuery.getString(columnIndex);
                        OpenInputStream = columnIndex;
                    }
                }
            }
            ?? string = 0;
            string = 0;
            string = 0;
            string = 0;
            string = 0;
            try {
                try {
                    try {
                        OpenInputStream = OnkeyEncryptActivity.this.getContentResolver().openInputStream(this.f21291do);
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(OpenInputStream));
                            while (true) {
                                try {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    } else {
                                        sb.append(line);
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    string = bufferedReader;
                                    e.printStackTrace();
                                    if (string != 0) {
                                        string.close();
                                    }
                                    if (OpenInputStream != 0) {
                                        OpenInputStream.close();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    string = bufferedReader;
                                    if (string != 0) {
                                        try {
                                            string.close();
                                        } catch (IOException e2) {
                                            e2.printStackTrace();
                                            throw th;
                                        }
                                    }
                                    if (OpenInputStream != 0) {
                                        OpenInputStream.close();
                                    }
                                    throw th;
                                }
                            }
                            string = sb.toString();
                            observableEmitter.onNext(string);
                            observableEmitter.onComplete();
                            bufferedReader.close();
                            if (OpenInputStream != 0) {
                                OpenInputStream.close();
                            }
                        } catch (IOException e3) {
                            e = e3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e4) {
                    e = e4;
                    OpenInputStream = 0;
                } catch (Throwable th3) {
                    th = th3;
                    OpenInputStream = 0;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
    }

    public static void a(Activity activity, int i) {
        Intent intent = new Intent(activity, (Class<?>) OnkeyEncryptActivity.class);
        intent.putExtra(wq.Cdo.f7670volatile, i);
        activity.startActivityForResult(intent, f21275throw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public /* synthetic */ void m25199abstract(QMUIDialog.Cfor cfor, String[] strArr, Map map, DialogInterface dialogInterface, int i) {
        int iA = cfor.a();
        this.f21279const = iA;
        String str = strArr[iA];
        this.f21276break = str;
        this.tvVersion.setText(str);
        this.tvAesPassword.setVisibility(0);
        dialogInterface.dismiss();
        for (String str2 : map.keySet()) {
            if (str2.equalsIgnoreCase(strArr[this.f21279const])) {
                this.tvAesPassword.setText((String) map.get(str2));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public /* synthetic */ void m25200continue(String str, ObservableEmitter observableEmitter) throws Exception {
        int i;
        String str2;
        String str3;
        List<ComicSourceBean> listM26366package = com.wsw.cospa.model.Cdo.m26366package();
        Iterator<ComicSourceBean> it = listM26366package.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            ComicSourceBean next = it.next();
            String ruleBookContent = next.getRuleBookContent();
            String ruleChapterList = next.getRuleChapterList();
            Iterator<ComicSourceBean> it2 = it;
            List<ComicSourceBean> list = listM26366package;
            if (!Cclass.E(ruleChapterList) || ruleChapterList.startsWith(":_S") || ruleChapterList.startsWith(":_T") || ruleChapterList.startsWith(":_R") || ruleChapterList.startsWith(":_H")) {
                i = i2;
            } else if (this.f21276break.startsWith("R")) {
                StringBuilder sb = new StringBuilder();
                sb.append(":_");
                i = i2;
                sb.append(this.f21276break);
                sb.append("_");
                sb.append(com.wsw.cospa.utils.Cfor.m26903if(this.f21276break, ruleChapterList));
                next.setRuleChapterList(sb.toString());
            } else {
                i = i2;
                if (this.f21276break.startsWith("H")) {
                    String bookSourceUrl = next.getBookSourceUrl();
                    StringBuilder sb2 = new StringBuilder();
                    str2 = "H";
                    sb2.append(new Cgoto().m26907for(de.m1297case(bookSourceUrl)));
                    sb2.append(str);
                    next.setRuleChapterList(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleChapterList, pw0.m6232for(sb2.toString())));
                    str3 = ExifInterface.GPS_DIRECTION_TRUE;
                } else {
                    str2 = "H";
                    if (this.f21276break.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                        String bookSourceUrl2 = next.getBookSourceUrl();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(new Cgoto().m26907for(de.m1297case(bookSourceUrl2)));
                        sb3.append(str);
                        str3 = ExifInterface.GPS_DIRECTION_TRUE;
                        sb3.append(636L);
                        next.setRuleChapterList(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleChapterList, pw0.m6232for(sb3.toString())));
                    } else {
                        str3 = ExifInterface.GPS_DIRECTION_TRUE;
                        next.setRuleChapterList(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleChapterList, str));
                    }
                }
                if (!Cclass.E(ruleBookContent) && !ruleBookContent.startsWith(":_S") && !ruleBookContent.startsWith(":_T") && !ruleBookContent.startsWith(":_R") && !ruleChapterList.startsWith(":_H")) {
                    if (this.f21276break.startsWith("R")) {
                        next.setRuleBookContent(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26903if(this.f21276break, ruleBookContent));
                    } else if (this.f21276break.startsWith(str2)) {
                        next.setRuleBookContent(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleBookContent, pw0.m6232for(new Cgoto().m26907for(de.m1297case(next.getBookSourceUrl())) + str)));
                    } else if (this.f21276break.startsWith(str3)) {
                        next.setRuleBookContent(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleBookContent, pw0.m6232for(new Cgoto().m26907for(de.m1297case(next.getBookSourceUrl())) + str + 636L)));
                    } else {
                        next.setRuleBookContent(":_" + this.f21276break + "_" + com.wsw.cospa.utils.Cfor.m26905try(ruleBookContent, str));
                    }
                }
                com.wsw.cospa.model.Cdo.m26360default(next);
                i2 = i + 1;
                it = it2;
                listM26366package = list;
            }
            str3 = ExifInterface.GPS_DIRECTION_TRUE;
            str2 = "H";
            if (!Cclass.E(ruleBookContent)) {
            }
            com.wsw.cospa.model.Cdo.m26360default(next);
            i2 = i + 1;
            it = it2;
            listM26366package = list;
        }
        if (i2 != listM26366package.size()) {
            observableEmitter.onNext(Boolean.FALSE);
            return;
        }
        com.wsw.cospa.model.Cdo.c();
        Cdefault.m26759extends();
        observableEmitter.onNext(Boolean.TRUE);
    }

    /* renamed from: finally, reason: not valid java name */
    private void m25203finally(Uri uri) {
        if (uri == null) {
            return;
        }
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new Ctry(uri)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cnew());
    }

    /* renamed from: implements, reason: not valid java name */
    private void m25204implements() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f21277catch.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.m71
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3857do.m25207interface((Boolean) obj);
            }
        }));
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m25206instanceof() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        startActivityForResult(intent, 10001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public /* synthetic */ void m25207interface(Boolean bool) throws Exception {
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
            comicFilePicker.setOnFilePickListener(new ComicFilePicker.OnFilePickListener() { // from class: android.support.v4.j71
                @Override // cn.qqtheme.framework.picker.ComicFilePicker.OnFilePickListener
                public final void onFilePicked(String str) {
                    this.f3026do.m25214strictfp(str);
                }
            });
            comicFilePicker.m10931finally();
            comicFilePicker.m10946abstract().setText("系统文件选择器");
            comicFilePicker.m10946abstract().setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.i71
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2640do.m25217volatile(comicFilePicker, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public /* synthetic */ void m25209private(String str, String str2, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            if ("请选择版本".equals(str)) {
                v72.m8769if("请选择加密版本");
            } else {
                m25220transient(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public /* synthetic */ void m25210protected(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            try {
                if (!Cclass.E(this.f21282super)) {
                    v72.m8769if("请先解密图源！");
                    return;
                }
                String str = "share_source_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                String str2 = wq.f7623public;
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
                fileOutputStream.write(this.f21282super.getBytes());
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
    /* renamed from: strictfp, reason: not valid java name */
    public /* synthetic */ void m25214strictfp(String str) {
        this.f21280final = 1;
        this.etEncrypt.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public /* synthetic */ void m25217volatile(ComicFilePicker comicFilePicker, View view) {
        comicFilePicker.mo10915do();
        m25206instanceof();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21278class = new xh1.Cdo(this).m9514for(1).m9516new("正在加密...").m9513do();
        if (Build.VERSION.SDK_INT >= 23) {
            this.etEncrypt.setBreakStrategy(0);
            this.etPlaintext.setBreakStrategy(0);
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c003c;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 10001) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f21280final = 2;
                this.etEncrypt.setText(intent.getData().toString());
            } else if (intent != null) {
                this.f21280final = 3;
                this.etEncrypt.setText(Cdefault.m26772super(this, intent.getData()));
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IOException {
        int id = view.getId();
        if (id == R.id.arg_res_0x7f0900d4) {
            m25219synchronized();
        }
        switch (id) {
            case R.id.arg_res_0x7f0900ca /* 2131296458 */:
                xh1 xh1VarM9513do = new xh1.Cdo(this).m9514for(1).m9516new("正在解密图源...").m9513do();
                this.f21278class = xh1VarM9513do;
                xh1VarM9513do.show();
                int i = this.f21280final;
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            m25218package(this.etEncrypt.getText().toString().trim());
                            break;
                        }
                    } else {
                        m25203finally(Uri.parse(this.etEncrypt.getText().toString().trim()));
                        break;
                    }
                } else {
                    ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new Cif()).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
                    break;
                }
                break;
            case R.id.arg_res_0x7f0900cb /* 2131296459 */:
                final String string = this.tvVersion.getText().toString();
                final String string2 = this.tvAesPassword.getText().toString();
                this.f21908do.add(((ObservableSubscribeProxy) this.f21277catch.m24545while("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.n71
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f4138do.m25209private(string, string2, (Boolean) obj);
                    }
                }));
                break;
            case R.id.arg_res_0x7f0900cc /* 2131296460 */:
                this.btnExpander.setSelected(true ^ this.f21283this);
                final Map<String, String> map = com.wsw.cospa.utils.Cfor.f22650new;
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = map.keySet().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                String[] strArr = new String[arrayList.size()];
                final String[] strArr2 = (String[]) arrayList.toArray(strArr);
                final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
                cfor.m24007synchronized((CharSequence[]) arrayList.toArray(strArr), new DialogInterface.OnClickListener() { // from class: android.support.v4.h71
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        this.f2334do.m25199abstract(cfor, strArr2, map, dialogInterface, i2);
                    }
                });
                cfor.b(this.f21279const);
                cfor.m24043interface();
                break;
            case R.id.arg_res_0x7f0900cd /* 2131296461 */:
                if (!Cclass.E(this.f21282super)) {
                    v72.m8769if("请先解密图源");
                    break;
                } else {
                    try {
                        String str = "decrypt_source_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                        String str2 = wq.f7623public;
                        File file = new File(str2);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
                        fileOutputStream.write(this.f21282super.getBytes());
                        fileOutputStream.close();
                        v72.m8769if("图源导出成功！" + str);
                        break;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getIntent().getIntExtra(wq.Cdo.f7670volatile, 1) == 2) {
            getMenuInflater().inflate(R.menu.arg_res_0x7f0d000c, menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        if (menuItem.getItemId() != R.id.arg_res_0x7f090294) {
            return super.onOptionsItemSelected(menuItem);
        }
        m25204implements();
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    public void m25218package(String str) {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new Celse(str)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ccase());
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m25219synchronized() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f21277catch.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.l71
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3557do.m25210protected((Boolean) obj);
            }
        }));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        ScrollBindHelper.bind(this.addComicSeekBarMainScrollThumb, this.mScrollView);
        int intExtra = getIntent().getIntExtra(wq.Cdo.f7670volatile, 1);
        if (intExtra == 1) {
            this.tv_title.setText("加密章节和正文");
            this.ll_onkey_encrypt.setVisibility(0);
            this.ll_decrypt_source.setVisibility(8);
        } else if (intExtra == 2) {
            this.tv_title.setText("解密图源");
            this.ll_onkey_encrypt.setVisibility(8);
            this.ll_decrypt_source.setVisibility(0);
        }
        this.f21277catch = new RxPermissions(this);
        this.btnEncrypt.setOnClickListener(this);
        this.btnExpander.setOnClickListener(this);
        this.btnExpander.setSelected(this.f21283this);
        this.btnDecrypt.setOnClickListener(this);
        this.btn_decrypt_source.setOnClickListener(this);
        this.btn_export_decrypt_source.setOnClickListener(this);
        this.btn_share_decrypt_source.setOnClickListener(this);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m25220transient(final String str) {
        this.f21278class.show();
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.k71
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f3322do.m25200continue(str, observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cfor());
    }
}
