package com.wsw.cospa.base;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.m7;
import android.support.v4.rp1;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.wsw.cospa.base.BaseModel;

/* loaded from: classes2.dex */
public abstract class BaseFragment<M extends BaseModel, P extends m7> extends Fragment {

    /* renamed from: case, reason: not valid java name */
    private int f21914case;

    /* renamed from: do, reason: not valid java name */
    public P f21915do;

    /* renamed from: else, reason: not valid java name */
    public View f21916else;

    /* renamed from: for, reason: not valid java name */
    private ViewGroup f21917for;

    /* renamed from: if, reason: not valid java name */
    private Unbinder f21918if;

    /* renamed from: new, reason: not valid java name */
    public Context f21919new;

    /* renamed from: try, reason: not valid java name */
    private BaseActivity f21920try;

    /* renamed from: case, reason: not valid java name */
    public abstract void mo25879case();

    /* renamed from: do, reason: not valid java name */
    public BaseActivity m25880do() {
        return this.f21920try;
    }

    /* renamed from: for, reason: not valid java name */
    public View m25881for() {
        return this.f21917for;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract int mo25882if();

    /* renamed from: new, reason: not valid java name */
    public abstract void mo25883new();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f21919new = context;
        this.f21920try = (BaseActivity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f21919new = getActivity();
        this.f21915do = (P) mo25884try();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = this.f21917for;
        if (viewGroup2 != null) {
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.f21917for);
            }
            return this.f21917for;
        }
        if (mo25882if() != 0) {
            this.f21917for = (ViewGroup) layoutInflater.inflate(mo25882if(), viewGroup, false);
        } else {
            this.f21917for = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);
        }
        this.f21918if = ButterKnife.m10352case(this, this.f21917for);
        mo25879case();
        mo25883new();
        return this.f21917for;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        P p = this.f21915do;
        if (p != null) {
            p.m4863try();
        }
        rp1.m7077if();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f21919new = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    /* renamed from: try, reason: not valid java name */
    public abstract P mo25884try();
}
