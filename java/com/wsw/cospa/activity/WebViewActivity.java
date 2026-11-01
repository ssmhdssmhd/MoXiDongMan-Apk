package com.wsw.cospa.activity;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.fd2;
import android.support.v4.hm1;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v72;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.WebViewActivity;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.model.Cwhile;
import com.wsw.cospa.utils.Csynchronized;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class WebViewActivity extends BaseActivity {

    /* renamed from: const, reason: not valid java name */
    private static final int f21416const = 1001;

    /* renamed from: break, reason: not valid java name */
    private boolean f21417break;

    /* renamed from: catch, reason: not valid java name */
    private ValueCallback<Uri> f21418catch;

    /* renamed from: class, reason: not valid java name */
    private ValueCallback<Uri[]> f21419class;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private String f21420goto;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0902ad)
    public WebView mWebView;

    /* renamed from: this, reason: not valid java name */
    private String f21421this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    /* renamed from: com.wsw.cospa.activity.WebViewActivity$do, reason: invalid class name */
    public class Cdo extends bz1<ComicShelfBean> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            WebViewActivity.this.m25375private(comicShelfBean);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            v72.m8769if(th.getMessage());
        }
    }

    /* renamed from: com.wsw.cospa.activity.WebViewActivity$for, reason: invalid class name */
    public class Cfor extends WebViewClient {
        public Cfor() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebViewActivity.this.m25386abstract();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebViewActivity.this.m25389instanceof();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    /* renamed from: com.wsw.cospa.activity.WebViewActivity$if, reason: invalid class name */
    public class Cif extends bz1<ComicShelfBean> {
        public Cif() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            if (comicShelfBean.getComicInfoBean().getChapterUrl() == null) {
                v72.m8769if("添加漫画失败");
            } else {
                WebViewActivity.this.m25388implements(comicShelfBean);
            }
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            v72.m8769if("添加漫画失败" + str);
        }
    }

    /* renamed from: com.wsw.cospa.activity.WebViewActivity$new, reason: invalid class name */
    public class Cnew extends WebChromeClient {
        public Cnew() {
        }

        /* renamed from: if, reason: not valid java name */
        private void m25393if() {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("image/*");
            WebViewActivity.this.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 1001);
        }

        /* renamed from: do, reason: not valid java name */
        public void m25394do(ValueCallback<Uri> valueCallback, String str, String str2) {
            WebViewActivity.this.f21418catch = valueCallback;
            m25393if();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                WebViewActivity.this.m25386abstract();
            } else {
                WebViewActivity.this.m25389instanceof();
            }
            super.onProgressChanged(webView, i);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            WebViewActivity.this.tvTitle.setText(str);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            WebViewActivity.this.f21419class = valueCallback;
            m25393if();
            return true;
        }
    }

    public static void a(Context context, String str, String str2, boolean z) {
        Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
        intent.putExtra(wq.Cdo.f7641class, str);
        intent.putExtra(wq.Cdo.f7642const, str2);
        intent.putExtra(wq.Cdo.f7648final, z);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ void m25369continue(String str, ObservableEmitter observableEmitter) throws Exception {
        if (l22.m4571return(str) || !fd2.m2255new(str)) {
            observableEmitter.tryOnError(new Throwable("无效网址！"));
            return;
        }
        if (com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try().load(str) != null) {
            observableEmitter.tryOnError(new Throwable("已在书架中"));
            return;
        }
        String strM4564goto = l22.m4564goto(str);
        ComicSourceBean comicSourceBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().load(strM4564goto);
        if (comicSourceBeanLoad == null) {
            comicSourceBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.a.like(strM4564goto + "%"), new WhereCondition[0]).limit(1).build().unique();
        }
        if (comicSourceBeanLoad == null) {
            observableEmitter.tryOnError(new Throwable("未找到对应图源"));
            return;
        }
        ComicShelfBean comicShelfBean = new ComicShelfBean();
        comicShelfBean.setTag(comicSourceBeanLoad.getBookSourceUrl());
        comicShelfBean.setNoteUrl(str);
        comicShelfBean.setDurChapter(0);
        comicShelfBean.setDurChapterPage(0);
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        observableEmitter.onNext(comicShelfBean);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public io.reactivex.Cnew<ComicShelfBean> m25371finally(final String str) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.sf2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                WebViewActivity.m25369continue(str, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public /* synthetic */ void m25373interface(QMUIDialog.Cfor cfor, ComicShelfBean comicShelfBean, List list, DialogInterface dialogInterface, int i) {
        int iA = cfor.a();
        if (iA == 0) {
            comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
            com.wsw.cospa.dao.Cdo.n(comicShelfBean);
            hm1.m3062case().mo970if(new Object[0]);
            v72.m8769if("添加漫画成功");
            Intent intent = new Intent(this, (Class<?>) HomeActivity.class);
            intent.setFlags(67108864);
            startActivity(intent);
            finish();
        } else {
            m25390package((ComicShelfGroupBean) list.get(iA - 1), comicShelfBean);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public void m25375private(ComicShelfBean comicShelfBean) {
        ((ObservableSubscribeProxy) Cwhile.m26502catch().m26514else(comicShelfBean).flatMap(new Function() { // from class: android.support.v4.uf2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return WebViewActivity.m25380strictfp((ComicShelfBean) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cif());
    }

    @TargetApi(21)
    /* renamed from: protected, reason: not valid java name */
    private void m25376protected(int i, int i2, Intent intent) {
        Uri[] uriArr;
        if (i != 1001 || this.f21419class == null) {
            return;
        }
        if (i2 != -1 || intent == null) {
            uriArr = null;
        } else {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr[i3] = clipData.getItemAt(i3).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        }
        this.f21419class.onReceiveValue(uriArr);
        this.f21419class = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public static /* synthetic */ ObservableSource m25380strictfp(ComicShelfBean comicShelfBean) throws Exception {
        return Cwhile.m26502catch().m26515goto(comicShelfBean);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m25382synchronized(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
        intent.putExtra(wq.Cdo.f7641class, str);
        intent.putExtra(wq.Cdo.f7642const, str2);
        context.startActivity(intent);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m25384transient() {
        try {
            String url = this.mWebView.getUrl();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public /* synthetic */ void m25385volatile(String str, String str2, String str3, String str4, long j) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.BROWSABLE");
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m25386abstract() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.mWebView.setVisibility(0);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        m25389instanceof();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m25387extends(String str) {
        String strTrim = str.trim();
        if (TextUtils.isEmpty(strTrim)) {
            return;
        }
        ((ObservableSubscribeProxy) io.reactivex.Cnew.fromArray(strTrim.split("\\n")).flatMap(new Function() { // from class: android.support.v4.tf2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f6502do.m25371finally((String) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m25388implements(final ComicShelfBean comicShelfBean) {
        final List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
        ArrayList arrayList = new ArrayList();
        arrayList.add(wq.w0);
        if (listH == null || listH.size() <= 0) {
            comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
            com.wsw.cospa.dao.Cdo.n(comicShelfBean);
            hm1.m3062case().mo970if(new Object[0]);
            v72.m8769if("添加漫画成功");
            Intent intent = new Intent(this, (Class<?>) HomeActivity.class);
            intent.setFlags(67108864);
            startActivity(intent);
            finish();
            return;
        }
        for (int i = 0; i < listH.size(); i++) {
            arrayList.add(listH.get(i).getGroupName());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
        cfor.m24055volatile("选择书架");
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.qf2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f5387do.m25373interface(cfor, comicShelfBean, listH, dialogInterface, i2);
            }
        });
        cfor.b(0);
        cfor.m24043interface();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m25389instanceof() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(0);
        this.mWebView.setVisibility(8);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0048;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1001) {
            if (this.f21418catch == null && this.f21419class == null) {
                return;
            }
            Uri data = (intent == null || i2 != -1) ? null : intent.getData();
            if (this.f21419class != null) {
                m25376protected(i, i2, intent);
                return;
            }
            ValueCallback<Uri> valueCallback = this.f21418catch;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(data);
                this.f21418catch = null;
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d000e, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.mWebView.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.mWebView.goBack();
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f090311) {
            m25384transient();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f090085) {
            m25387extends(this.mWebView.getUrl());
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        for (int i = 0; i < menu.size(); i++) {
            if (menu.getItem(i).getItemId() == R.id.arg_res_0x7f090085) {
                if (this.f21417break) {
                    menu.getItem(i).setVisible(true);
                } else {
                    menu.getItem(i).setVisible(false);
                }
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    /* renamed from: package, reason: not valid java name */
    public void m25390package(ComicShelfGroupBean comicShelfGroupBean, ComicShelfBean comicShelfBean) {
        comicShelfBean.setGroupId(comicShelfGroupBean.getId().longValue());
        comicShelfBean.setGroupBean(comicShelfGroupBean);
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        com.wsw.cospa.dao.Cdo.n(comicShelfBean);
        hm1.m3062case().mo970if(new Object[0]);
        v72.m8769if("添加漫画成功");
        Intent intent = new Intent(this, (Class<?>) HomeActivity.class);
        intent.setFlags(67108864);
        startActivity(intent);
        finish();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.f21420goto = getIntent().getStringExtra(wq.Cdo.f7642const);
        this.f21421this = getIntent().getStringExtra(wq.Cdo.f7641class);
        this.f21417break = getIntent().getBooleanExtra(wq.Cdo.f7648final, false);
        this.tvTitle.setText(this.f21421this);
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setSavePassword(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        this.mWebView.setWebViewClient(new Cfor());
        this.mWebView.setWebChromeClient(new Cnew());
        this.mWebView.setDownloadListener(new DownloadListener() { // from class: android.support.v4.rf2
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                this.f5779do.m25385volatile(str, str2, str3, str4, j);
            }
        });
        this.mWebView.loadUrl(this.f21420goto);
    }
}
