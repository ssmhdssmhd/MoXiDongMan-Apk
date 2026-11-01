package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.q;
import android.support.v4.v02;
import android.support.v4.vv0;
import android.view.MenuItem;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.view.SwitchButton;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes2.dex */
public class ThemeConfigActivity extends BaseActivity implements CompoundButton.OnCheckedChangeListener {

    @BindView(R.id.arg_res_0x7f09027e)
    public LinearLayout ll_dark_mode;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    @BindView(R.id.arg_res_0x7f0903e3)
    public SwitchButton swAutoNightTheme;

    @BindView(R.id.arg_res_0x7f0903ee)
    public SwitchButton switch_drak_mode;

    /* renamed from: import, reason: not valid java name */
    public static void m25342import(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ThemeConfigActivity.class));
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
        return R.layout.arg_res_0x7f0c0047;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = compoundButton.getId();
        if (id == R.id.arg_res_0x7f0903ee) {
            m25877throw(!m25871catch(), ThemeConfigActivity.class);
            v02.m8711if(this).m8712case("systemMode", false);
            Stack<Activity> stackM6274final = q.m6265do().m6274final();
            int size = stackM6274final.size();
            for (int i = size - 1; i >= 0; i--) {
                AppCompatActivity appCompatActivity = (AppCompatActivity) stackM6274final.pop();
                vv0.m8965if("ThemeConfigActivity switch_drak_mode", "activityStack size : " + size + "activity class " + appCompatActivity.getClass().getSimpleName());
                if (!appCompatActivity.getClass().equals(ThemeConfigActivity.class)) {
                    appCompatActivity.getDelegate().setLocalNightMode(m25871catch() ? 2 : 1);
                    appCompatActivity.overridePendingTransition(0, 0);
                    appCompatActivity.recreate();
                }
            }
            return;
        }
        if (id == R.id.arg_res_0x7f0903e3) {
            v02.m8711if(this).m8712case("systemMode", z);
            v02.m8711if(this).m8712case("nightTheme", false);
            if (!z) {
                this.ll_dark_mode.setVisibility(0);
                Stack<Activity> stackM6274final2 = q.m6265do().m6274final();
                int size2 = stackM6274final2.size();
                Iterator<Activity> it = stackM6274final2.iterator();
                while (it.hasNext()) {
                    AppCompatActivity appCompatActivity2 = (AppCompatActivity) it.next();
                    vv0.m8965if("ThemeConfigActivity swAutoNightTheme false", "activityStack size : " + size2 + "activity class " + appCompatActivity2.getClass().getSimpleName());
                    appCompatActivity2.getDelegate().setLocalNightMode(1);
                    appCompatActivity2.overridePendingTransition(0, 0);
                    appCompatActivity2.recreate();
                }
                return;
            }
            this.ll_dark_mode.setVisibility(8);
            getDelegate().setLocalNightMode(BaseActivity.m25869class() ? 2 : 1);
            Stack<Activity> stackM6274final3 = q.m6265do().m6274final();
            int size3 = stackM6274final3.size();
            Iterator<Activity> it2 = stackM6274final3.iterator();
            while (it2.hasNext()) {
                AppCompatActivity appCompatActivity3 = (AppCompatActivity) it2.next();
                vv0.m8965if("ThemeConfigActivity swAutoNightTheme true", "activityStack size : " + size3 + "activity class " + appCompatActivity3.getClass().getSimpleName());
                if (!appCompatActivity3.getClass().equals(ThemeConfigActivity.class)) {
                    appCompatActivity3.getDelegate().setLocalNightMode(BaseActivity.m25869class() ? 2 : 1);
                    appCompatActivity3.overridePendingTransition(0, 0);
                    appCompatActivity3.recreate();
                }
            }
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
        boolean zM8713do = v02.m8711if(this).m8713do("systemMode", false);
        this.swAutoNightTheme.setChecked(zM8713do);
        this.switch_drak_mode.setChecked(m25871catch());
        if (zM8713do) {
            this.ll_dark_mode.setVisibility(8);
        } else {
            this.ll_dark_mode.setVisibility(0);
        }
        this.switch_drak_mode.setOnCheckedChangeListener(this);
        this.swAutoNightTheme.setOnCheckedChangeListener(this);
    }
}
