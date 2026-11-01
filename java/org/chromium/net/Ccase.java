package org.chromium.net;

import android.content.Context;
import android.support.v4.e31;
import android.support.v4.f31;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.Executor;
import org.chromium.net.Celse;
import org.chromium.net.Cfor;
import org.chromium.net.Cif;
import org.chromium.net.Cnative;
import org.chromium.net.Creturn;
import org.chromium.net.Ctry;

/* renamed from: org.chromium.net.case, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccase extends Cfor {

    /* renamed from: case, reason: not valid java name */
    public static final int f33433case = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f33434else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f33435for = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final int f33436goto = 5;

    /* renamed from: if, reason: not valid java name */
    public static final int f33437if = -1;

    /* renamed from: new, reason: not valid java name */
    public static final int f33438new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f33439try = 2;

    /* renamed from: org.chromium.net.case$do, reason: invalid class name */
    public static class Cdo extends Cfor.Cdo {
        public Cdo(Context context) {
            super(context);
        }

        /* renamed from: abstract, reason: not valid java name */
        public Cdo m37453abstract(int i) {
            this.f33460do.mo7252super(i);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37476throw(String str) {
            super.mo37476throw(str);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37455catch(boolean z) {
            return this;
        }

        @VisibleForTesting
        /* renamed from: extends, reason: not valid java name */
        public Ccatch m37460extends() {
            return this.f33460do;
        }

        /* renamed from: finally, reason: not valid java name */
        public Cdo m37462finally(String str) {
            this.f33460do.mo7243class(str);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37465if(String str, int i, int i2) {
            super.mo37465if(str, i, i2);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccase mo37463for() {
            return this.f33460do.mo7248for();
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37461final(Cfor.Cdo.Cif cif) {
            super.mo37461final(cif);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37473super(String str) {
            super.mo37473super(str);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37459else(boolean z) {
            super.mo37459else(z);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37464goto(int i, long j) {
            super.mo37464goto(i, j);
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public Cdo m37472static(boolean z) {
            this.f33460do.mo7246else(z);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37475this(boolean z) {
            super.mo37475this(z);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37454break(boolean z) {
            super.mo37454break(z);
            return this;
        }

        @Override // org.chromium.net.Cfor.Cdo
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo37458do(String str, Set<byte[]> set, boolean z, Date date) {
            super.mo37458do(str, set, z, date);
            return this;
        }

        public Cdo(Ccatch ccatch) {
            super(ccatch);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void mo37439break(Cnative.Cdo cdo) {
    }

    /* renamed from: catch, reason: not valid java name */
    public void mo37440catch(e31 e31Var) {
    }

    /* renamed from: class, reason: not valid java name */
    public void mo37441class(f31 f31Var) {
    }

    /* renamed from: const, reason: not valid java name */
    public void mo37442const(boolean z, boolean z2, boolean z3) {
    }

    /* renamed from: final, reason: not valid java name */
    public int mo37443final() {
        return -1;
    }

    /* renamed from: import, reason: not valid java name */
    public abstract Ctry.Cdo mo37444import(String str, Cif.AbstractC0480if abstractC0480if, Executor executor);

    @Override // org.chromium.net.Cfor
    /* renamed from: native, reason: merged with bridge method [inline-methods] */
    public abstract Celse.Cdo mo6663try(String str, Creturn.Cif cif, Executor executor);

    /* renamed from: public, reason: not valid java name */
    public URLConnection mo37445public(URL url, Proxy proxy) throws IOException {
        return url.openConnection(proxy);
    }

    /* renamed from: return, reason: not valid java name */
    public void mo37446return(Cnative.Cdo cdo) {
    }

    /* renamed from: static, reason: not valid java name */
    public void mo37447static(e31 e31Var) {
    }

    /* renamed from: super, reason: not valid java name */
    public int mo37448super() {
        return 0;
    }

    /* renamed from: switch, reason: not valid java name */
    public void mo37449switch(f31 f31Var) {
    }

    /* renamed from: throw, reason: not valid java name */
    public int mo37450throw() {
        return -1;
    }

    /* renamed from: throws, reason: not valid java name */
    public void mo37451throws(String str, boolean z, int i) {
    }

    /* renamed from: while, reason: not valid java name */
    public int mo37452while() {
        return -1;
    }
}
