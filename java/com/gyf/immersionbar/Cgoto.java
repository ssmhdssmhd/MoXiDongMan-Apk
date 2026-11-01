package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Build;
import android.support.v4.c7;
import android.support.v4.r41;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;

/* renamed from: com.gyf.immersionbar.goto, reason: invalid class name */
/* loaded from: classes2.dex */
class Cgoto implements Runnable {

    /* renamed from: do, reason: not valid java name */
    private Celse f18130do;

    /* renamed from: for, reason: not valid java name */
    private OnBarListener f18131for;

    /* renamed from: if, reason: not valid java name */
    private c7 f18132if;

    /* renamed from: new, reason: not valid java name */
    private int f18133new;

    public Cgoto(Object obj) {
        if (obj instanceof Activity) {
            if (this.f18130do == null) {
                this.f18130do = new Celse((Activity) obj);
                return;
            }
            return;
        }
        if (obj instanceof Fragment) {
            if (this.f18130do == null) {
                if (obj instanceof DialogFragment) {
                    this.f18130do = new Celse((DialogFragment) obj);
                    return;
                } else {
                    this.f18130do = new Celse((Fragment) obj);
                    return;
                }
            }
            return;
        }
        if ((obj instanceof android.app.Fragment) && this.f18130do == null) {
            if (obj instanceof android.app.DialogFragment) {
                this.f18130do = new Celse((android.app.DialogFragment) obj);
            } else {
                this.f18130do = new Celse((android.app.Fragment) obj);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m22731do(Configuration configuration) {
        Celse celse = this.f18130do;
        if (celse == null || !celse.f0() || Build.VERSION.SDK_INT < 19) {
            return;
        }
        OnBarListener onBarListener = this.f18130do.v().a;
        this.f18131for = onBarListener;
        if (onBarListener != null) {
            Activity activityT = this.f18130do.t();
            if (this.f18132if == null) {
                this.f18132if = new c7();
            }
            this.f18132if.m771native(configuration.orientation == 1);
            int rotation = activityT.getWindowManager().getDefaultDisplay().getRotation();
            if (rotation == 1) {
                this.f18132if.m762class(true);
                this.f18132if.m763const(false);
            } else if (rotation == 3) {
                this.f18132if.m762class(false);
                this.f18132if.m763const(true);
            } else {
                this.f18132if.m762class(false);
                this.f18132if.m763const(false);
            }
            activityT.getWindow().getDecorView().post(this);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m22732case() {
        Celse celse = this.f18130do;
        if (celse != null) {
            celse.L0();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m22733for(Configuration configuration) {
        m22731do(configuration);
    }

    /* renamed from: if, reason: not valid java name */
    public Celse m22734if() {
        return this.f18130do;
    }

    /* renamed from: new, reason: not valid java name */
    public void m22735new(Configuration configuration) {
        Celse celse = this.f18130do;
        if (celse != null) {
            celse.J0(configuration);
            m22731do(configuration);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Celse celse = this.f18130do;
        if (celse == null || celse.t() == null) {
            return;
        }
        Activity activityT = this.f18130do.t();
        Cdo cdo = new Cdo(activityT);
        this.f18132if.m773public(cdo.m22690this());
        this.f18132if.m766final(cdo.m22686catch());
        this.f18132if.m774super(cdo.m22689new());
        this.f18132if.m776throw(cdo.m22685case());
        this.f18132if.m761catch(cdo.m22688do());
        boolean zM6754const = r41.m6754const(activityT);
        this.f18132if.m770import(zM6754const);
        if (zM6754const && this.f18133new == 0) {
            int iM6763try = r41.m6763try(activityT);
            this.f18133new = iM6763try;
            this.f18132if.m778while(iM6763try);
        }
        this.f18131for.onBarChange(this.f18132if);
    }

    /* renamed from: try, reason: not valid java name */
    public void m22736try() {
        this.f18132if = null;
        Celse celse = this.f18130do;
        if (celse != null) {
            celse.K0();
            this.f18130do = null;
        }
    }

    public Cgoto(Activity activity, Dialog dialog) {
        if (this.f18130do == null) {
            this.f18130do = new Celse(activity, dialog);
        }
    }
}
