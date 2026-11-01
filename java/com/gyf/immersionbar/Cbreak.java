package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* renamed from: com.gyf.immersionbar.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak extends Fragment {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f18029do;

    /* renamed from: do, reason: not valid java name */
    public Celse m22650do(Activity activity, Dialog dialog) {
        if (this.f18029do == null) {
            this.f18029do = new Cgoto(activity, dialog);
        }
        return this.f18029do.m22734if();
    }

    /* renamed from: if, reason: not valid java name */
    public Celse m22651if(Object obj) {
        if (this.f18029do == null) {
            this.f18029do = new Cgoto(obj);
        }
        return this.f18029do.m22734if();
    }

    @Override // android.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Cgoto cgoto = this.f18029do;
        if (cgoto != null) {
            cgoto.m22733for(getResources().getConfiguration());
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Cgoto cgoto = this.f18029do;
        if (cgoto != null) {
            cgoto.m22735new(configuration);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Cgoto cgoto = this.f18029do;
        if (cgoto != null) {
            cgoto.m22736try();
            this.f18029do = null;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Cgoto cgoto = this.f18029do;
        if (cgoto != null) {
            cgoto.m22732case();
        }
    }
}
