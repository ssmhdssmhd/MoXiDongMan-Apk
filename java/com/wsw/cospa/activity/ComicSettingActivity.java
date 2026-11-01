package com.wsw.cospa.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.v4.hm1;
import android.support.v4.m7;
import android.support.v4.o32;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.wq;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Cvolatile;
import com.wsw.cospa.widget.NumberPickerDialog;

@SuppressLint({"NonConstantResourceId", "UseSwitchCompatOrMaterialCode"})
/* loaded from: classes2.dex */
public class ComicSettingActivity extends BaseActivity implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {

    @BindView(R.id.arg_res_0x7f090280)
    public LinearLayout llDownloadThreed;

    @BindView(R.id.arg_res_0x7f090288)
    public LinearLayout llRefreshThreed;

    @BindView(R.id.arg_res_0x7f09028d)
    public LinearLayout llthread;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f0903f3)
    public Switch switchFindSort;

    @BindView(R.id.arg_res_0x7f0903fe)
    public Switch switchNotch;

    @BindView(R.id.arg_res_0x7f090400)
    public Switch switchPagingReverse;

    @BindView(R.id.arg_res_0x7f090403)
    public Switch switchReaderPaging;

    @BindView(R.id.arg_res_0x7f090406)
    public Switch switchShowAllFind;

    @BindView(R.id.arg_res_0x7f090409)
    public Switch switchSwipeBack;

    @BindView(R.id.arg_res_0x7f09040a)
    public Switch switchToDetail;

    @BindView(R.id.arg_res_0x7f09040d)
    public Switch switchWhiteEdge;

    @BindView(R.id.arg_res_0x7f0903e8)
    public Switch switch_auto_refresh_comic;

    @BindView(R.id.arg_res_0x7f0903ec)
    public Switch switch_dns_parser;

    @BindView(R.id.arg_res_0x7f0903ed)
    public Switch switch_double_click_zoom;

    @BindView(R.id.arg_res_0x7f0903ef)
    public Switch switch_exit_clean_cache;

    @BindView(R.id.arg_res_0x7f0903f1)
    public Switch switch_file_browser;

    @BindView(R.id.arg_res_0x7f0903f2)
    public Switch switch_find_show_mode;

    @BindView(R.id.arg_res_0x7f0903f4)
    public Switch switch_hide_find;

    @BindView(R.id.arg_res_0x7f0903f5)
    public Switch switch_hide_history;

    @BindView(R.id.arg_res_0x7f0903f6)
    public Switch switch_hide_local;

    @BindView(R.id.arg_res_0x7f0903f7)
    public Switch switch_hide_recommend;

    @BindView(R.id.arg_res_0x7f0903f8)
    public Switch switch_join_shelf_tip;

    @BindView(R.id.arg_res_0x7f0903ff)
    public Switch switch_original_image;

    @BindView(R.id.arg_res_0x7f090401)
    public Switch switch_quick_page;

    @BindView(R.id.arg_res_0x7f090480)
    public TextView tvDownloadThreed;

    @BindView(R.id.arg_res_0x7f0904a6)
    public TextView tvRefreshThreed;

    @BindView(R.id.arg_res_0x7f0904ba)
    public TextView tvThreadNum;

    /* renamed from: default, reason: not valid java name */
    public static void m24957default(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ComicSettingActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public /* synthetic */ void m24961return(NumberPicker numberPicker, int i, int i2) {
        if (i2 > 0) {
            this.tvThreadNum.setText(i2 + "");
            v02.m8711if(this).m8714else(wq.f7614implements, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m24962static(NumberPicker numberPicker, int i, int i2) {
        if (i2 > 0) {
            this.tvDownloadThreed.setText(i2 + "");
            v02.m8711if(this).m8714else(wq.f7616instanceof, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m24963switch(NumberPicker numberPicker, int i, int i2) {
        if (i2 > 0) {
            this.tvRefreshThreed.setText(i2 + "");
            v02.m8711if(this).m8714else(wq.f7629synchronized, i2);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m24964throws() {
        Intent intent = new Intent(this, (Class<?>) HomeActivity.class);
        intent.addFlags(32768);
        startActivity(intent);
        overridePendingTransition(0, 0);
        finish();
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
        return R.layout.arg_res_0x7f0c002c;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (compoundButton.getId()) {
            case R.id.arg_res_0x7f0903e8 /* 2131297256 */:
                v02.m8711if(this).m8712case(wq.x, z);
                if (z) {
                    hm1.m3062case().mo970if(new Object[0]);
                    break;
                }
                break;
            case R.id.arg_res_0x7f0903ec /* 2131297260 */:
                v02.m8711if(this).m8712case(wq.y, z);
                Cvolatile.m27161else();
                break;
            case R.id.arg_res_0x7f0903ed /* 2131297261 */:
                v02.m8711if(this).m8712case(wq.q, z);
                break;
            case R.id.arg_res_0x7f0903ef /* 2131297263 */:
                v02.m8711if(this).m8712case(wq.A, z);
                break;
            case R.id.arg_res_0x7f0903f1 /* 2131297265 */:
                v02.m8711if(this).m8712case(wq.z, z);
                break;
            case R.id.arg_res_0x7f0903f2 /* 2131297266 */:
                v02.m8711if(this).m8712case(wq.w, z);
                o32.m5454case().mo970if(Boolean.valueOf(z));
                break;
            case R.id.arg_res_0x7f0903f3 /* 2131297267 */:
                v02.m8711if(this).m8712case(wq.G, z);
                break;
            case R.id.arg_res_0x7f0903f4 /* 2131297268 */:
                v02.m8711if(this).m8712case(wq.f36252J, z);
                m24964throws();
                break;
            case R.id.arg_res_0x7f0903f5 /* 2131297269 */:
                v02.m8711if(this).m8712case(wq.K, z);
                m24964throws();
                break;
            case R.id.arg_res_0x7f0903f6 /* 2131297270 */:
                v02.m8711if(this).m8712case(wq.L, z);
                m24964throws();
                break;
            case R.id.arg_res_0x7f0903f7 /* 2131297271 */:
                v02.m8711if(this).m8712case(wq.I, z);
                m24964throws();
                break;
            case R.id.arg_res_0x7f0903f8 /* 2131297272 */:
                v02.m8711if(this).m8712case(wq.u, z);
                break;
            case R.id.arg_res_0x7f0903fe /* 2131297278 */:
                v02.m8711if(this).m8712case(wq.C, z);
                break;
            case R.id.arg_res_0x7f0903ff /* 2131297279 */:
                v02.m8711if(this).m8712case(wq.v, z);
                hm1.m3062case().mo970if(new Object[0]);
                break;
            case R.id.arg_res_0x7f090400 /* 2131297280 */:
                v02.m8711if(this).m8712case(wq.E, z);
                break;
            case R.id.arg_res_0x7f090401 /* 2131297281 */:
                v02.m8711if(this).m8712case(wq.p, z);
                break;
            case R.id.arg_res_0x7f090403 /* 2131297283 */:
                v02.m8711if(this).m8712case(wq.D, z);
                break;
            case R.id.arg_res_0x7f090406 /* 2131297286 */:
                v02.m8711if(this).m8712case(wq.H, z);
                break;
            case R.id.arg_res_0x7f090409 /* 2131297289 */:
                v02.m8711if(this).m8712case(wq.a, z);
                break;
            case R.id.arg_res_0x7f09040a /* 2131297290 */:
                v02.m8711if(this).m8712case(wq.e, z);
                break;
            case R.id.arg_res_0x7f09040d /* 2131297293 */:
                v02.m8711if(this).m8712case(wq.F, z);
                break;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.arg_res_0x7f090280) {
            new NumberPickerDialog(this, new NumberPicker.OnValueChangeListener() { // from class: android.support.v4.io
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    this.f2817do.m24962static(numberPicker, i, i2);
                }
            }, 10, 1, v02.m8711if(this).m8715for(wq.f7616instanceof, 2)).show();
        } else if (id == R.id.arg_res_0x7f090288) {
            new NumberPickerDialog(this, new NumberPicker.OnValueChangeListener() { // from class: android.support.v4.ho
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    this.f2443do.m24963switch(numberPicker, i, i2);
                }
            }, 10, 1, v02.m8711if(this).m8715for(wq.f7629synchronized, 2)).show();
        } else {
            if (id != R.id.arg_res_0x7f09028d) {
                return;
            }
            new NumberPickerDialog(this, new NumberPicker.OnValueChangeListener() { // from class: android.support.v4.go
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    this.f2178do.m24961return(numberPicker, i, i2);
                }
            }, 64, 1, v02.m8711if(this).m8715for(wq.f7614implements, 32)).show();
        }
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
        this.switchToDetail.setOnCheckedChangeListener(this);
        this.switchToDetail.setChecked(v02.m8711if(this).m8713do(wq.e, false));
        this.switchSwipeBack.setOnCheckedChangeListener(this);
        this.switchSwipeBack.setChecked(v02.m8711if(this).m8713do(wq.a, false));
        this.switchNotch.setOnCheckedChangeListener(this);
        this.switchNotch.setChecked(v02.m8711if(this).m8713do(wq.C, true));
        this.switchReaderPaging.setOnCheckedChangeListener(this);
        this.switchWhiteEdge.setOnCheckedChangeListener(this);
        this.switchPagingReverse.setOnCheckedChangeListener(this);
        this.switchWhiteEdge.setChecked(v02.m8711if(this).m8713do(wq.F, false));
        this.switchReaderPaging.setChecked(v02.m8711if(this).m8713do(wq.D, false));
        this.switchPagingReverse.setChecked(v02.m8711if(this).m8713do(wq.E, false));
        this.switchFindSort.setChecked(v02.m8711if(this).m8713do(wq.G, false));
        this.switchFindSort.setOnCheckedChangeListener(this);
        this.switchShowAllFind.setChecked(v02.m8711if(this).m8713do(wq.H, true));
        this.switchShowAllFind.setOnCheckedChangeListener(this);
        this.switch_hide_recommend.setChecked(v02.m8711if(this).m8713do(wq.I, false));
        this.switch_hide_recommend.setOnCheckedChangeListener(this);
        this.switch_hide_find.setChecked(v02.m8711if(this).m8713do(wq.f36252J, true));
        this.switch_hide_find.setOnCheckedChangeListener(this);
        this.switch_hide_history.setChecked(v02.m8711if(this).m8713do(wq.K, false));
        this.switch_hide_history.setOnCheckedChangeListener(this);
        this.switch_hide_local.setChecked(v02.m8711if(this).m8713do(wq.L, false));
        this.switch_hide_local.setOnCheckedChangeListener(this);
        this.tvThreadNum.setText(v02.m8711if(this).m8715for(wq.f7614implements, 32) + "");
        this.llthread.setOnClickListener(this);
        this.tvDownloadThreed.setText(v02.m8711if(this).m8715for(wq.f7616instanceof, 6) + "");
        this.llDownloadThreed.setOnClickListener(this);
        this.tvRefreshThreed.setText(v02.m8711if(this).m8715for(wq.f7629synchronized, 2) + "");
        this.llRefreshThreed.setOnClickListener(this);
        this.switch_quick_page.setOnCheckedChangeListener(this);
        this.switch_quick_page.setChecked(v02.m8711if(this).m8713do(wq.p, false));
        this.switch_double_click_zoom.setOnCheckedChangeListener(this);
        this.switch_double_click_zoom.setChecked(v02.m8711if(this).m8713do(wq.q, true));
        this.switch_join_shelf_tip.setOnCheckedChangeListener(this);
        this.switch_join_shelf_tip.setChecked(v02.m8711if(this).m8713do(wq.u, true));
        this.switch_original_image.setOnCheckedChangeListener(this);
        this.switch_original_image.setChecked(v02.m8711if(this).m8713do(wq.v, false));
        this.switch_find_show_mode.setOnCheckedChangeListener(this);
        this.switch_find_show_mode.setChecked(v02.m8711if(this).m8713do(wq.w, false));
        this.switch_auto_refresh_comic.setOnCheckedChangeListener(this);
        this.switch_auto_refresh_comic.setChecked(v02.m8711if(this).m8713do(wq.x, true));
        this.switch_dns_parser.setOnCheckedChangeListener(this);
        this.switch_dns_parser.setChecked(v02.m8711if(this).m8713do(wq.y, false));
        this.switch_file_browser.setOnCheckedChangeListener(this);
        this.switch_file_browser.setChecked(v02.m8711if(this).m8713do(wq.z, true));
        this.switch_exit_clean_cache.setOnCheckedChangeListener(this);
        this.switch_exit_clean_cache.setChecked(v02.m8711if(this).m8713do(wq.A, false));
    }
}
