package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.n51;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.gyf.immersionbar.this, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthis extends ContentObserver {

    /* renamed from: do, reason: not valid java name */
    private ArrayList<OnNavigationBarListener> f18151do;

    /* renamed from: for, reason: not valid java name */
    private Boolean f18152for;

    /* renamed from: if, reason: not valid java name */
    private Application f18153if;

    /* renamed from: com.gyf.immersionbar.this$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final Cthis f18154do = new Cthis();

        private Cif() {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cthis m22737do() {
        return Cif.f18154do;
    }

    public void addOnNavigationBarListener(OnNavigationBarListener onNavigationBarListener) {
        if (onNavigationBarListener == null) {
            return;
        }
        if (this.f18151do == null) {
            this.f18151do = new ArrayList<>();
        }
        if (this.f18151do.contains(onNavigationBarListener)) {
            return;
        }
        this.f18151do.add(onNavigationBarListener);
    }

    /* renamed from: if, reason: not valid java name */
    public void m22738if(Application application) {
        this.f18153if = application;
        int i = Build.VERSION.SDK_INT;
        if (i < 17 || application == null || application.getContentResolver() == null || this.f18152for.booleanValue()) {
            return;
        }
        Uri uriFor = null;
        if (n51.m5096const()) {
            uriFor = Settings.Global.getUriFor(Cnew.f18141else);
        } else if (n51.m5093case()) {
            uriFor = (n51.m5104this() || i < 21) ? Settings.System.getUriFor(Cnew.f18144goto) : Settings.Global.getUriFor(Cnew.f18144goto);
        }
        if (uriFor != null) {
            this.f18153if.getContentResolver().registerContentObserver(uriFor, true, this);
            this.f18152for = Boolean.TRUE;
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Application application;
        ArrayList<OnNavigationBarListener> arrayList;
        super.onChange(z);
        int i = Build.VERSION.SDK_INT;
        if (i < 17 || (application = this.f18153if) == null || application.getContentResolver() == null || (arrayList = this.f18151do) == null || arrayList.isEmpty()) {
            return;
        }
        int i2 = n51.m5096const() ? Settings.Global.getInt(this.f18153if.getContentResolver(), Cnew.f18141else, 0) : n51.m5093case() ? (n51.m5104this() || i < 21) ? Settings.System.getInt(this.f18153if.getContentResolver(), Cnew.f18144goto, 0) : Settings.Global.getInt(this.f18153if.getContentResolver(), Cnew.f18144goto, 0) : 0;
        Iterator<OnNavigationBarListener> it = this.f18151do.iterator();
        while (it.hasNext()) {
            OnNavigationBarListener next = it.next();
            boolean z2 = true;
            if (i2 == 1) {
                z2 = false;
            }
            next.onNavigationBarChange(z2);
        }
    }

    public void removeOnNavigationBarListener(OnNavigationBarListener onNavigationBarListener) {
        ArrayList<OnNavigationBarListener> arrayList;
        if (onNavigationBarListener == null || (arrayList = this.f18151do) == null) {
            return;
        }
        arrayList.remove(onNavigationBarListener);
    }

    private Cthis() {
        super(new Handler(Looper.getMainLooper()));
        this.f18152for = Boolean.FALSE;
    }
}
