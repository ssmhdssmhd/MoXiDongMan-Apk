package com.google.zxing.oned.rss.expanded;

import android.support.v4.cc0;
import android.support.v4.pw;

/* renamed from: com.google.zxing.oned.rss.expanded.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final boolean f17719do;

    /* renamed from: for, reason: not valid java name */
    private final pw f17720for;

    /* renamed from: if, reason: not valid java name */
    private final pw f17721if;

    /* renamed from: new, reason: not valid java name */
    private final cc0 f17722new;

    public Cif(pw pwVar, pw pwVar2, cc0 cc0Var, boolean z) {
        this.f17721if = pwVar;
        this.f17720for = pwVar2;
        this.f17722new = cc0Var;
        this.f17719do = z;
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m22100do(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: try, reason: not valid java name */
    private static int m22101try(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m22102case() {
        return this.f17719do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m22103else() {
        return this.f17720for == null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return m22100do(this.f17721if, cif.f17721if) && m22100do(this.f17720for, cif.f17720for) && m22100do(this.f17722new, cif.f17722new);
    }

    /* renamed from: for, reason: not valid java name */
    public pw m22104for() {
        return this.f17721if;
    }

    public int hashCode() {
        return (m22101try(this.f17721if) ^ m22101try(this.f17720for)) ^ m22101try(this.f17722new);
    }

    /* renamed from: if, reason: not valid java name */
    public cc0 m22105if() {
        return this.f17722new;
    }

    /* renamed from: new, reason: not valid java name */
    public pw m22106new() {
        return this.f17720for;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.f17721if);
        sb.append(" , ");
        sb.append(this.f17720for);
        sb.append(" : ");
        cc0 cc0Var = this.f17722new;
        sb.append(cc0Var == null ? "null" : Integer.valueOf(cc0Var.m844for()));
        sb.append(" ]");
        return sb.toString();
    }
}
