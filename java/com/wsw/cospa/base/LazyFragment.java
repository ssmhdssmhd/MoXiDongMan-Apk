package com.wsw.cospa.base;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.m7;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import butterknife.ButterKnife;
import com.wsw.cospa.base.BaseModel;

/* loaded from: classes2.dex */
public abstract class LazyFragment<M extends BaseModel, P extends m7> extends Fragment {

    /* renamed from: case, reason: not valid java name */
    public Context f21936case;

    /* renamed from: do, reason: not valid java name */
    private boolean f21937do;

    /* renamed from: else, reason: not valid java name */
    private BaseActivity f21938else;

    /* renamed from: for, reason: not valid java name */
    private boolean f21939for;

    /* renamed from: if, reason: not valid java name */
    private boolean f21940if = true;

    /* renamed from: new, reason: not valid java name */
    public P f21941new;

    /* renamed from: try, reason: not valid java name */
    private ViewGroup f21942try;

    /* renamed from: case, reason: not valid java name */
    public void m25903case() {
        if (this.f21937do && this.f21939for && this.f21940if) {
            this.f21940if = false;
            mo25906for();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public BaseActivity m25904do() {
        return this.f21938else;
    }

    /* renamed from: else, reason: not valid java name */
    public void m25905else() {
        this.f21939for = false;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo25906for();

    /* renamed from: goto, reason: not valid java name */
    public void m25907goto() {
        this.f21939for = true;
        m25903case();
    }

    /* renamed from: if, reason: not valid java name */
    public abstract int mo25908if();

    /* renamed from: new, reason: not valid java name */
    public abstract P mo25909new();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f21936case = context;
        this.f21938else = (BaseActivity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            bundle.remove(FragmentActivity.FRAGMENTS_TAG);
        }
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) throws NoSuchMethodException, SecurityException {
        this.f21940if = true;
        ViewGroup viewGroup2 = this.f21942try;
        if (viewGroup2 != null) {
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.f21942try);
            }
            return this.f21942try;
        }
        if (mo25908if() != 0) {
            this.f21942try = (ViewGroup) layoutInflater.inflate(mo25908if(), viewGroup, false);
        } else {
            this.f21942try = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);
        }
        ButterKnife.m10352case(this, this.f21942try);
        mo25910try();
        this.f21937do = true;
        m25903case();
        return this.f21942try;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f21937do = false;
        P p = this.f21941new;
        if (p != null) {
            p.m4863try();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            m25905else();
        } else {
            m25907goto();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (getUserVisibleHint()) {
            m25907goto();
        } else {
            m25905else();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public abstract void mo25910try();
}
