package com.wsw.cospa.base;

import android.os.Bundle;
import android.support.v4.m7;
import android.support.v4.v02;
import android.support.v4.wq;
import androidx.annotation.Nullable;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.wsw.cospa.base.BaseModel;
import com.wsw.cospa.widget.swipe.SwipeBackActivity;
import com.wsw.cospa.widget.swipe.SwipeBackLayout;

/* loaded from: classes2.dex */
public abstract class CustomActivity<M extends BaseModel, P extends m7> extends SwipeBackActivity {

    /* renamed from: do, reason: not valid java name */
    public P f21930do;

    /* renamed from: for, reason: not valid java name */
    private SwipeBackLayout f21931for;

    /* renamed from: if, reason: not valid java name */
    private Unbinder f21932if;

    /* renamed from: do, reason: not valid java name */
    public abstract int m25895do();

    /* renamed from: for, reason: not valid java name */
    public abstract P m25896for();

    /* renamed from: if, reason: not valid java name */
    public abstract void m25897if();

    /* renamed from: new, reason: not valid java name */
    public abstract void m25898new();

    @Override // com.wsw.cospa.widget.swipe.SwipeBackActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(m25895do());
        setSwipeBackEnable(v02.m8711if(this).m8713do(wq.a, false));
        SwipeBackLayout swipeBackLayout = getSwipeBackLayout();
        this.f21931for = swipeBackLayout;
        swipeBackLayout.setEdgeTrackingEnabled(1);
        this.f21931for.setEdgeSize(200);
        this.f21932if = ButterKnife.m10353do(this);
        this.f21930do = (P) m25896for();
        m25898new();
        m25897if();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Unbinder unbinder = this.f21932if;
        if (unbinder != null) {
            unbinder.unbind();
        }
    }
}
