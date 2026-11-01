package com.wsw.cospa.base;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.cq;
import android.support.v4.m7;
import android.support.v4.q;
import android.support.v4.rp1;
import android.support.v4.v02;
import android.support.v4.wq;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.widget.swipe.SwipeBackActivity;
import com.wsw.cospa.widget.swipe.SwipeBackLayout;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes2.dex */
public abstract class BaseActivity<P extends m7> extends SwipeBackActivity implements BaseView {

    /* renamed from: case, reason: not valid java name */
    private ViewGroup f21907case;

    /* renamed from: do, reason: not valid java name */
    public cq f21908do = new cq();

    /* renamed from: else, reason: not valid java name */
    private View f21909else;

    /* renamed from: for, reason: not valid java name */
    private Unbinder f21910for;

    /* renamed from: if, reason: not valid java name */
    public P f21911if;

    /* renamed from: new, reason: not valid java name */
    public View f21912new;

    /* renamed from: try, reason: not valid java name */
    private SwipeBackLayout f21913try;

    /* renamed from: class, reason: not valid java name */
    public static boolean m25869class() {
        return (CartoonApplication.m24690do().getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m25870break() {
        return v02.m8711if(this).m8713do(wq.y0, false);
    }

    /* renamed from: case */
    public abstract void mo24703case();

    /* renamed from: catch, reason: not valid java name */
    public boolean m25871catch() {
        return v02.m8711if(this).m8713do("nightTheme", false);
    }

    /* renamed from: const */
    public void mo25106const(@Nullable Bundle bundle) {
    }

    /* renamed from: do, reason: not valid java name */
    public void m25872do(boolean z, Class cls) {
        if (m25871catch()) {
            AppCompatDelegate.setDefaultNightMode(2);
            if (z) {
                finish();
                startActivity(new Intent(this, (Class<?>) cls));
                overridePendingTransition(0, 0);
                return;
            }
            return;
        }
        AppCompatDelegate.setDefaultNightMode(1);
        if (z) {
            finish();
            startActivity(new Intent(this, (Class<?>) cls));
            overridePendingTransition(0, 0);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m25873else() {
        this.f21907case = (ViewGroup) findViewById(R.id.content);
        FrameLayout frameLayout = new FrameLayout(this);
        this.f21909else = frameLayout;
        frameLayout.setBackgroundColor(0);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.flags = 56;
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f21907case.addView(this.f21909else, layoutParams);
    }

    /* renamed from: final */
    public void mo25107final(@NonNull Bundle bundle) {
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    /* renamed from: for, reason: not valid java name */
    public int m25874for(int i) {
        if (i < 10) {
            i = 10;
        } else if (i > 80) {
            i = 80;
        }
        float f = i / 80.0f;
        return Color.argb((int) (180.0f * f), (int) (255.0f - (190.0f * f)), (int) (255.0f - (170.0f * f)), (int) (32.0f - (f * 60.0f)));
    }

    /* renamed from: goto */
    public abstract P mo24704goto();

    /* renamed from: if, reason: not valid java name */
    public void m25875if() {
        this.f21909else.setBackgroundColor(0);
    }

    /* renamed from: new */
    public abstract int mo24705new();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!v02.m8711if(this).m8713do("systemMode", false)) {
            if (m25871catch()) {
                AppCompatDelegate.setDefaultNightMode(2);
                return;
            } else {
                AppCompatDelegate.setDefaultNightMode(1);
                return;
            }
        }
        AppCompatDelegate.setDefaultNightMode(m25869class() ? 2 : 1);
        Stack<Activity> stackM6274final = q.m6265do().m6274final();
        stackM6274final.size();
        Iterator<Activity> it = stackM6274final.iterator();
        while (it.hasNext()) {
            AppCompatActivity appCompatActivity = (AppCompatActivity) it.next();
            appCompatActivity.getDelegate().setLocalNightMode(m25869class() ? 2 : 1);
            appCompatActivity.overridePendingTransition(0, 0);
            appCompatActivity.recreate();
        }
    }

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        mo25106const(bundle);
        setContentView(mo24705new());
        q.m6265do().m6284switch(this);
        setSwipeBackEnable(v02.m8711if(this).m8713do(wq.a, false));
        SwipeBackLayout swipeBackLayout = getSwipeBackLayout();
        this.f21913try = swipeBackLayout;
        swipeBackLayout.setEdgeTrackingEnabled(1);
        this.f21913try.setEdgeSize(200);
        this.f21910for = ButterKnife.m10353do(this);
        mo24707this();
        this.f21911if = (P) mo24704goto();
        mo24955try(bundle);
        mo24703case();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        cq cqVar = this.f21908do;
        if (cqVar != null && !cqVar.isDisposed()) {
            this.f21908do.dispose();
            this.f21908do.m995if();
            this.f21908do = null;
        }
        Unbinder unbinder = this.f21910for;
        if (unbinder != null) {
            unbinder.unbind();
        }
        P p = this.f21911if;
        if (p != null) {
            p.m4863try();
        }
        rp1.m7077if();
        q.m6265do().m6286throws(this);
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        mo25107final(bundle);
    }

    /* renamed from: super, reason: not valid java name */
    public void m25876super() {
        this.f21909else.setBackgroundColor(m25874for(30));
    }

    /* renamed from: this */
    public abstract void mo24707this();

    /* renamed from: throw, reason: not valid java name */
    public void m25877throw(boolean z, Class cls) {
        v02.m8711if(this).m8712case("nightTheme", z);
        m25872do(true, cls);
    }

    /* renamed from: try */
    public void mo24955try(Bundle bundle) {
    }

    /* renamed from: while, reason: not valid java name */
    public void m25878while() {
        this.f21912new = findViewById(com.wsw.cospa.R.id.arg_res_0x7f0904da);
        try {
            if (m25871catch()) {
                this.f21912new.setVisibility(0);
            } else {
                this.f21912new.setVisibility(8);
            }
        } catch (Exception unused) {
            this.f21912new.setVisibility(8);
        }
    }
}
