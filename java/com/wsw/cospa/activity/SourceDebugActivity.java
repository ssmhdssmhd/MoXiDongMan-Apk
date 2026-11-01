package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.cq;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.wq;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.model.Debug;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Ctry;
import io.reactivex.functions.Consumer;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class SourceDebugActivity extends BaseActivity {

    /* renamed from: class, reason: not valid java name */
    public static final int f21354class = 202;

    /* renamed from: break, reason: not valid java name */
    private String f21355break;

    /* renamed from: catch, reason: not valid java name */
    private RxPermissions f21356catch;

    /* renamed from: goto, reason: not valid java name */
    private String f21357goto;

    @BindView(R.id.arg_res_0x7f0902a7)
    public ScrollView mScrollView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f090389)
    public SearchView searchView;

    /* renamed from: this, reason: not valid java name */
    private SearchView.SearchAutoComplete f21358this;

    @BindView(R.id.arg_res_0x7f090470)
    public TextView tvContent;

    /* renamed from: com.wsw.cospa.activity.SourceDebugActivity$do, reason: invalid class name */
    public class Cdo implements SearchView.OnQueryTextListener {
        public Cdo() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            SourceDebugActivity.this.f21355break = str;
            SourceDebugActivity.this.m25298private(str);
            j10.m3652do(SourceDebugActivity.this.searchView);
            return true;
        }
    }

    /* renamed from: com.wsw.cospa.activity.SourceDebugActivity$if, reason: invalid class name */
    public class Cif implements Debug.CallBack {
        public Cif() {
        }

        @Override // com.wsw.cospa.model.Debug.CallBack
        public void finish() {
        }

        @Override // com.wsw.cospa.model.Debug.CallBack
        public void printError(String str) {
            SourceDebugActivity.this.m25297package(str);
        }

        @Override // com.wsw.cospa.model.Debug.CallBack
        public void printLog(String str) {
            SourceDebugActivity.this.m25297package(str);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m25291abstract(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) SourceDebugActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(wq.Cdo.f7640catch, str);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m25292default(RefreshLayout refreshLayout) {
        m25298private(this.f21355break);
        refreshLayout.finishRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m25293extends(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            QRCodeScanActivity.m25224default(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m25294finally() {
        this.mScrollView.fullScroll(33);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public void m25297package(String str) {
        int iIndexOf = str.indexOf("★");
        if (iIndexOf >= 0) {
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new StyleSpan(1), iIndexOf, str.length(), 33);
            if (!TextUtils.isEmpty(this.tvContent.getText())) {
                this.tvContent.append("\n");
            }
            this.tvContent.append(spannableString);
        } else {
            if (!TextUtils.isEmpty(this.tvContent.getText())) {
                this.tvContent.append("\n");
            }
            this.tvContent.append(str);
        }
        ScrollView scrollView = this.mScrollView;
        if (scrollView != null) {
            scrollView.post(new Runnable() { // from class: android.support.v4.l02
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3515do.m25294finally();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public void m25298private(String str) {
        if (TextUtils.isEmpty(this.f21357goto)) {
            return;
        }
        cq cqVar = this.f21908do;
        if (cqVar != null) {
            cqVar.dispose();
        }
        this.f21908do = new cq();
        this.tvContent.setText("");
        Debug.m26280final(this.f21357goto, str, this.f21908do, new Cif());
    }

    /* renamed from: throws, reason: not valid java name */
    private void m25303throws() throws Resources.NotFoundException {
        Ctry.m27150super(this.searchView, "搜索漫画名或作者");
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) this.searchView.findViewById(R.id.arg_res_0x7f090394);
        this.f21358this = searchAutoComplete;
        searchAutoComplete.setTextSize(16.0f);
        this.f21358this.setHintTextColor(getResources().getColor(R.color.arg_res_0x7f060384));
        this.searchView.setQueryHint("搜索漫画名或作者");
        this.searchView.onActionViewExpanded();
        this.searchView.clearFocus();
        this.searchView.setOnQueryTextListener(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21356catch = new RxPermissions(this);
        this.f21357goto = getIntent().getStringExtra(wq.Cdo.f7640catch);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0044;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 202) {
            String stringExtra = intent.getStringExtra("result");
            if (Cclass.z(stringExtra)) {
                return;
            }
            this.searchView.setQuery(stringExtra, true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0006, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        cq cqVar = this.f21908do;
        if (cqVar != null) {
            cqVar.dispose();
            this.f21908do = null;
        }
        Debug.m26275catch();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f09007a) {
            this.f21908do.add(((ObservableSubscribeProxy) this.f21356catch.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.k02
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f3248do.m25293extends((Boolean) obj);
                }
            }));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws Resources.NotFoundException {
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "调试图源");
        m25303throws();
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.j02
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f2947do.m25292default(refreshLayout);
            }
        });
    }
}
