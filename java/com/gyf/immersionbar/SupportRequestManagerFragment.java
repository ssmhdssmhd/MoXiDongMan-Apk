package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* loaded from: classes2.dex */
public final class SupportRequestManagerFragment extends Fragment {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f18028do;

    /* renamed from: do, reason: not valid java name */
    public Celse m22648do(Activity activity, Dialog dialog) {
        if (this.f18028do == null) {
            this.f18028do = new Cgoto(activity, dialog);
        }
        return this.f18028do.m22734if();
    }

    /* renamed from: if, reason: not valid java name */
    public Celse m22649if(Object obj) {
        if (this.f18028do == null) {
            this.f18028do = new Cgoto(obj);
        }
        return this.f18028do.m22734if();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Cgoto cgoto = this.f18028do;
        if (cgoto != null) {
            cgoto.m22733for(getResources().getConfiguration());
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Cgoto cgoto = this.f18028do;
        if (cgoto != null) {
            cgoto.m22735new(configuration);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Cgoto cgoto = this.f18028do;
        if (cgoto != null) {
            cgoto.m22736try();
            this.f18028do = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Cgoto cgoto = this.f18028do;
        if (cgoto != null) {
            cgoto.m22732case();
        }
    }
}
