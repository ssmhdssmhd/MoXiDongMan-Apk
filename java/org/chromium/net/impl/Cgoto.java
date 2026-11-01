package org.chromium.net.impl;

import android.content.Context;
import android.support.v4.s21;
import org.chromium.net.Cfor;
import org.chromium.net.impl.VersionSafeCallbacks;

/* renamed from: org.chromium.net.impl.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends s21 {

    /* renamed from: native, reason: not valid java name */
    private VersionSafeCallbacks.Cif f33655native;

    public Cgoto(Context context) {
        super(context);
    }

    @Override // android.support.v4.s21, org.chromium.net.impl.Cif, org.chromium.net.Ccatch
    /* renamed from: d */
    public Cif mo7244const(Cfor.Cdo.Cif cif) {
        this.f33655native = new VersionSafeCallbacks.Cif(cif);
        return this;
    }

    @Override // org.chromium.net.impl.Cif
    /* renamed from: protected, reason: not valid java name */
    public VersionSafeCallbacks.Cif mo37669protected() {
        return this.f33655native;
    }
}
