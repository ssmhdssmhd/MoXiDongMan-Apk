package com.google.android.material.transition;

/* renamed from: com.google.android.material.transition.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif {

    /* renamed from: do, reason: not valid java name */
    public final int f13395do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f13396for;

    /* renamed from: if, reason: not valid java name */
    public final int f13397if;

    private Cif(int i, int i2, boolean z) {
        this.f13395do = i;
        this.f13397if = i2;
        this.f13396for = z;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m14790do(int i, int i2) {
        return new Cif(i, i2, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m14791if(int i, int i2) {
        return new Cif(i, i2, false);
    }
}
