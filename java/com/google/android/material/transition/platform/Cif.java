package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif {

    /* renamed from: do, reason: not valid java name */
    public final int f13577do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f13578for;

    /* renamed from: if, reason: not valid java name */
    public final int f13579if;

    private Cif(int i, int i2, boolean z) {
        this.f13577do = i;
        this.f13579if = i2;
        this.f13578for = z;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m14942do(int i, int i2) {
        return new Cif(i, i2, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m14943if(int i, int i2) {
        return new Cif(i, i2, false);
    }
}
