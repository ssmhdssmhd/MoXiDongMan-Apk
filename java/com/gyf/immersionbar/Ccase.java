package com.gyf.immersionbar;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;

/* renamed from: com.gyf.immersionbar.case, reason: invalid class name */
/* loaded from: classes2.dex */
class Ccase implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: break, reason: not valid java name */
    private int f18030break;

    /* renamed from: case, reason: not valid java name */
    private int f18031case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f18032catch;

    /* renamed from: do, reason: not valid java name */
    private Celse f18033do;

    /* renamed from: else, reason: not valid java name */
    private int f18034else;

    /* renamed from: for, reason: not valid java name */
    private View f18035for;

    /* renamed from: goto, reason: not valid java name */
    private int f18036goto;

    /* renamed from: if, reason: not valid java name */
    private Window f18037if;

    /* renamed from: new, reason: not valid java name */
    private View f18038new;

    /* renamed from: this, reason: not valid java name */
    private int f18039this;

    /* renamed from: try, reason: not valid java name */
    private View f18040try;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View] */
    public Ccase(Celse celse) {
        this.f18031case = 0;
        this.f18034else = 0;
        this.f18036goto = 0;
        this.f18039this = 0;
        this.f18033do = celse;
        Window windowQ = celse.Q();
        this.f18037if = windowQ;
        View decorView = windowQ.getDecorView();
        this.f18035for = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(android.R.id.content);
        if (celse.g0()) {
            Fragment fragmentO = celse.O();
            if (fragmentO != null) {
                this.f18040try = fragmentO.getView();
            } else {
                android.app.Fragment fragmentW = celse.w();
                if (fragmentW != null) {
                    this.f18040try = fragmentW.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.f18040try = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.f18040try = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.f18040try;
        if (view != null) {
            this.f18031case = view.getPaddingLeft();
            this.f18034else = this.f18040try.getPaddingTop();
            this.f18036goto = this.f18040try.getPaddingRight();
            this.f18039this = this.f18040try.getPaddingBottom();
        }
        ?? r4 = this.f18040try;
        this.f18038new = r4 != 0 ? r4 : frameLayout;
    }

    /* renamed from: do, reason: not valid java name */
    public void m22652do() {
        if (Build.VERSION.SDK_INT < 19 || !this.f18032catch) {
            return;
        }
        this.f18035for.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.f18032catch = false;
    }

    /* renamed from: for, reason: not valid java name */
    public void m22653for(int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f18037if.setSoftInputMode(i);
            if (this.f18032catch) {
                return;
            }
            this.f18035for.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f18032catch = true;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m22654if() {
        if (Build.VERSION.SDK_INT < 19 || !this.f18032catch) {
            return;
        }
        if (this.f18040try != null) {
            this.f18038new.setPadding(this.f18031case, this.f18034else, this.f18036goto, this.f18039this);
        } else {
            this.f18038new.setPadding(this.f18033do.H(), this.f18033do.J(), this.f18033do.I(), this.f18033do.G());
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int i;
        Celse celse = this.f18033do;
        if (celse == null || celse.v() == null || !this.f18033do.v().f18119strictfp) {
            return;
        }
        Cdo cdoU = this.f18033do.u();
        int iM22689new = cdoU.m22687class() ? cdoU.m22689new() : cdoU.m22685case();
        Rect rect = new Rect();
        this.f18035for.getWindowVisibleDisplayFrame(rect);
        int height = this.f18038new.getHeight() - rect.bottom;
        if (height != this.f18030break) {
            this.f18030break = height;
            boolean z = true;
            if (Celse.m22696strictfp(this.f18037if.getDecorView().findViewById(android.R.id.content))) {
                height -= iM22689new;
                if (height <= iM22689new) {
                    z = false;
                }
            } else if (this.f18040try != null) {
                if (this.f18033do.v().f18097continue) {
                    height += this.f18033do.p() + cdoU.m22690this();
                }
                if (this.f18033do.v().f18098default) {
                    height += cdoU.m22690this();
                }
                if (height > iM22689new) {
                    i = this.f18039this + height;
                } else {
                    i = 0;
                    z = false;
                }
                this.f18038new.setPadding(this.f18031case, this.f18034else, this.f18036goto, i);
            } else {
                int iG = this.f18033do.G();
                height -= iM22689new;
                if (height > iM22689new) {
                    iG = height + iM22689new;
                } else {
                    z = false;
                }
                this.f18038new.setPadding(this.f18033do.H(), this.f18033do.J(), this.f18033do.I(), iG);
            }
            int i2 = height >= 0 ? height : 0;
            if (this.f18033do.v().f18109instanceof != null) {
                this.f18033do.v().f18109instanceof.onKeyboardChange(z, i2);
            }
            if (z || this.f18033do.v().f18092break == Cif.FLAG_SHOW_BAR) {
                return;
            }
            this.f18033do.Q0();
        }
    }
}
