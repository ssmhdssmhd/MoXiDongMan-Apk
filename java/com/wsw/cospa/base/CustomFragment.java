package com.wsw.cospa.base;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;

/* loaded from: classes2.dex */
public abstract class CustomFragment extends Fragment {

    /* renamed from: do, reason: not valid java name */
    private Unbinder f21933do;

    /* renamed from: for, reason: not valid java name */
    public Context f21934for;

    /* renamed from: if, reason: not valid java name */
    private View f21935if;

    /* renamed from: do, reason: not valid java name */
    public abstract int m25899do();

    /* renamed from: for, reason: not valid java name */
    public abstract void m25900for();

    /* renamed from: if, reason: not valid java name */
    public View m25901if() {
        return this.f21935if;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void m25902new();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f21934for = getActivity().getApplicationContext();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View view = this.f21935if;
        if (view != null) {
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f21935if);
            }
            return this.f21935if;
        }
        if (m25899do() != 0) {
            this.f21935if = layoutInflater.inflate(m25899do(), viewGroup, false);
        } else {
            this.f21935if = super.onCreateView(layoutInflater, viewGroup, bundle);
        }
        this.f21933do = ButterKnife.m10352case(this, this.f21935if);
        m25902new();
        m25900for();
        return this.f21935if;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }
}
