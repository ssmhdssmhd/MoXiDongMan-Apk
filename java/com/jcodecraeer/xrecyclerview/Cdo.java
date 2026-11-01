package com.jcodecraeer.xrecyclerview;

import com.google.android.material.appbar.AppBarLayout;

/* renamed from: com.jcodecraeer.xrecyclerview.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo implements AppBarLayout.OnOffsetChangedListener {

    /* renamed from: do, reason: not valid java name */
    private EnumC0172do f18270do = EnumC0172do.IDLE;

    /* renamed from: com.jcodecraeer.xrecyclerview.do$do, reason: invalid class name and collision with other inner class name */
    public enum EnumC0172do {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    /* renamed from: do */
    public abstract void mo22820do(AppBarLayout appBarLayout, EnumC0172do enumC0172do);

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        if (i == 0) {
            EnumC0172do enumC0172do = this.f18270do;
            EnumC0172do enumC0172do2 = EnumC0172do.EXPANDED;
            if (enumC0172do != enumC0172do2) {
                mo22820do(appBarLayout, enumC0172do2);
            }
            this.f18270do = enumC0172do2;
            return;
        }
        if (Math.abs(i) >= appBarLayout.getTotalScrollRange()) {
            EnumC0172do enumC0172do3 = this.f18270do;
            EnumC0172do enumC0172do4 = EnumC0172do.COLLAPSED;
            if (enumC0172do3 != enumC0172do4) {
                mo22820do(appBarLayout, enumC0172do4);
            }
            this.f18270do = enumC0172do4;
            return;
        }
        EnumC0172do enumC0172do5 = this.f18270do;
        EnumC0172do enumC0172do6 = EnumC0172do.IDLE;
        if (enumC0172do5 != enumC0172do6) {
            mo22820do(appBarLayout, enumC0172do6);
        }
        this.f18270do = enumC0172do6;
    }
}
