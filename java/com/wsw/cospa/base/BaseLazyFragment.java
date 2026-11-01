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
public abstract class BaseLazyFragment<M extends BaseModel, P extends m7> extends Fragment {

    /* renamed from: this, reason: not valid java name */
    private static final String f21921this = BaseFragment.class.getSimpleName();

    /* renamed from: case, reason: not valid java name */
    private ViewGroup f21922case;

    /* renamed from: do, reason: not valid java name */
    private boolean f21923do;

    /* renamed from: else, reason: not valid java name */
    public Context f21924else;

    /* renamed from: for, reason: not valid java name */
    private boolean f21925for;

    /* renamed from: goto, reason: not valid java name */
    private int f21926goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f21927if;

    /* renamed from: new, reason: not valid java name */
    public P f21928new;

    /* renamed from: try, reason: not valid java name */
    private Unbinder f21929try;

    /* renamed from: try, reason: not valid java name */
    private void m25885try() {
        this.f21925for = true;
        this.f21923do = false;
        this.f21922case = null;
        this.f21927if = true;
    }

    /* renamed from: break, reason: not valid java name */
    public void m25886break(boolean z) {
        this.f21927if = z;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract void m25887case();

    /* renamed from: do, reason: not valid java name */
    public abstract int m25888do();

    /* renamed from: else, reason: not valid java name */
    public boolean m25889else() {
        return this.f21923do;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void m25890for();

    /* renamed from: goto, reason: not valid java name */
    public void m25891goto() {
        m25890for();
    }

    /* renamed from: if, reason: not valid java name */
    public View m25892if() {
        return this.f21922case;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract P m25893new();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f21924else = context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f21924else = getActivity();
        this.f21928new = (P) m25893new();
        m25885try();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = this.f21922case;
        if (viewGroup2 != null) {
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this.f21922case);
            }
            return this.f21922case;
        }
        if (m25888do() != 0) {
            this.f21922case = (ViewGroup) layoutInflater.inflate(m25888do(), viewGroup, false);
        } else {
            this.f21922case = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);
        }
        this.f21929try = ButterKnife.m10352case(this, this.f21922case);
        m25887case();
        return this.f21922case;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m25885try();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        P p = this.f21928new;
        if (p != null) {
            p.m4863try();
        }
        rp1.m7077if();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (this.f21922case == null) {
            return;
        }
        if (this.f21925for && z) {
            m25891goto();
            this.f21925for = false;
        }
        if (z) {
            m25894this(true);
            this.f21923do = true;
        } else if (this.f21923do) {
            this.f21923do = false;
            m25894this(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        if (this.f21922case == null) {
            this.f21922case = (ViewGroup) view;
            if (getUserVisibleHint()) {
                if (this.f21925for) {
                    m25891goto();
                    this.f21925for = false;
                }
                m25894this(true);
                this.f21923do = true;
            }
        }
        if (this.f21927if) {
            view = this.f21922case;
        }
        super.onViewCreated(view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
    }

    /* renamed from: this, reason: not valid java name */
    public abstract void m25894this(boolean z);
}
