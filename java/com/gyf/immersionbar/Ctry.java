package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.gyf.immersionbar.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry extends ContentObserver {

    /* renamed from: do, reason: not valid java name */
    private ArrayList<ImmersionCallback> f18155do;

    /* renamed from: for, reason: not valid java name */
    private Boolean f18156for;

    /* renamed from: if, reason: not valid java name */
    private Application f18157if;

    /* renamed from: com.gyf.immersionbar.try$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final Ctry f18158do = new Ctry();

        private Cif() {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Ctry m22740if() {
        return Cif.f18158do;
    }

    /* renamed from: do, reason: not valid java name */
    public void m22741do(ImmersionCallback immersionCallback) {
        if (immersionCallback == null) {
            return;
        }
        if (this.f18155do == null) {
            this.f18155do = new ArrayList<>();
        }
        if (this.f18155do.contains(immersionCallback)) {
            return;
        }
        this.f18155do.add(immersionCallback);
    }

    /* renamed from: for, reason: not valid java name */
    public void m22742for(Application application) {
        Uri uriFor;
        this.f18157if = application;
        if (Build.VERSION.SDK_INT < 17 || application == null || application.getContentResolver() == null || this.f18156for.booleanValue() || (uriFor = Settings.System.getUriFor(Cnew.f18144goto)) == null) {
            return;
        }
        this.f18157if.getContentResolver().registerContentObserver(uriFor, true, this);
        this.f18156for = Boolean.TRUE;
    }

    /* renamed from: new, reason: not valid java name */
    public void m22743new(ImmersionCallback immersionCallback) {
        ArrayList<ImmersionCallback> arrayList;
        if (immersionCallback == null || (arrayList = this.f18155do) == null) {
            return;
        }
        arrayList.remove(immersionCallback);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Application application;
        ArrayList<ImmersionCallback> arrayList;
        super.onChange(z);
        if (Build.VERSION.SDK_INT < 17 || (application = this.f18157if) == null || application.getContentResolver() == null || (arrayList = this.f18155do) == null || arrayList.isEmpty()) {
            return;
        }
        int i = Settings.System.getInt(this.f18157if.getContentResolver(), Cnew.f18144goto, 0);
        Iterator<ImmersionCallback> it = this.f18155do.iterator();
        while (it.hasNext()) {
            ImmersionCallback next = it.next();
            boolean z2 = true;
            if (i == 1) {
                z2 = false;
            }
            next.onNavigationBarChange(z2);
        }
    }

    private Ctry() {
        super(new Handler(Looper.getMainLooper()));
        this.f18156for = Boolean.FALSE;
    }
}
