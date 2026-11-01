package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.pk0;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.y8;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.utils.Csynchronized;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class SourceLoginActivity extends BaseActivity {

    /* renamed from: goto, reason: not valid java name */
    private ComicSourceBean f21382goto;

    @BindView(R.id.arg_res_0x7f09027c)
    public LinearLayout llContent;

    @BindView(R.id.arg_res_0x7f090299)
    public AppBarLayout mAppBarLayout;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: this, reason: not valid java name */
    private boolean f21383this = false;

    @BindView(R.id.arg_res_0x7f0904e5)
    public WebView webView;

    /* renamed from: com.wsw.cospa.activity.SourceLoginActivity$do, reason: invalid class name */
    public class Cdo extends WebViewClient {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CookieManager f21384do;

        public Cdo(CookieManager cookieManager) {
            this.f21384do = cookieManager;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            String cookie = this.f21384do.getCookie(str);
            HashMap map = new HashMap();
            map.put(pk0.f5073throw, cookie);
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(SourceLoginActivity.this.f21382goto.getBookSourceUrl());
            if (cookieBeanLoad != null) {
                cookieBeanLoad.setVariable(map);
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
            } else {
                Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(SourceLoginActivity.this.f21382goto.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)));
            }
            if (SourceLoginActivity.this.f21383this) {
                SourceLoginActivity.this.finish();
            } else {
                v72.m8769if("登录成功后请点击右上角图标进行首页访问测试");
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            v02.m8711if(SourceLoginActivity.this).m8718this(SourceLoginActivity.this.f21382goto.getBookSourceUrl(), this.f21384do.getCookie(str));
            super.onPageStarted(webView, str, bitmap);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m25341public(Context context, ComicSourceBean comicSourceBean) {
        if (TextUtils.isEmpty(comicSourceBean.getLoginUrl())) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) SourceLoginActivity.class);
        intent.addFlags(268435456);
        String strValueOf = String.valueOf(System.currentTimeMillis());
        intent.putExtra("data_key", strValueOf);
        try {
            y8.m9768for().m9771new(strValueOf, comicSourceBean.clone());
        } catch (CloneNotSupportedException e) {
            y8.m9768for().m9771new(strValueOf, comicSourceBean);
            e.printStackTrace();
        }
        context.startActivity(intent);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21382goto = (ComicSourceBean) y8.m9768for().m9770if(getIntent().getStringExtra("data_key"));
        WebSettings settings = this.webView.getSettings();
        settings.setCacheMode(2);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setJavaScriptEnabled(true);
        this.webView.setWebViewClient(new Cdo(CookieManager.getInstance()));
        this.webView.loadUrl(this.f21382goto.getLoginUrl());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0045;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d000d, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.arg_res_0x7f09006c && !this.f21383this) {
            this.f21383this = true;
            HashMap map = new HashMap();
            map.put(pk0.g0, "Chrome");
            v72.m8769if("正在打开首页，成功自动返回主界面");
            this.webView.loadUrl(this.f21382goto.getBookSourceUrl(), map);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "图源管理");
    }
}
