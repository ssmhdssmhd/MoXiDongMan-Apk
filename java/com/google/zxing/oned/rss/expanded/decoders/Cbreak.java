package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.w8;
import fi.iki.elonen.Cdo;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.break, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final w8 f17677do;

    /* renamed from: if, reason: not valid java name */
    private final Cnative f17678if;

    public Cbreak(w8 w8Var) {
        this.f17677do = w8Var;
        this.f17678if = new Cnative(w8Var);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cbreak m22041do(w8 w8Var) {
        if (w8Var.m9084goto(1)) {
            return new Celse(w8Var);
        }
        if (!w8Var.m9084goto(2)) {
            return new Ccatch(w8Var);
        }
        int iM22070else = Cnative.m22070else(w8Var, 1, 4);
        if (iM22070else == 4) {
            return new Cdo(w8Var);
        }
        if (iM22070else == 5) {
            return new Cif(w8Var);
        }
        int iM22070else2 = Cnative.m22070else(w8Var, 1, 5);
        if (iM22070else2 == 12) {
            return new Cfor(w8Var);
        }
        if (iM22070else2 == 13) {
            return new Cnew(w8Var);
        }
        switch (Cnative.m22070else(w8Var, 1, 7)) {
            case 56:
                return new Ctry(w8Var, "310", "11");
            case 57:
                return new Ctry(w8Var, "320", "11");
            case 58:
                return new Ctry(w8Var, "310", Cdo.HEADER_WEBSOCKET_VERSION_VALUE);
            case 59:
                return new Ctry(w8Var, "320", Cdo.HEADER_WEBSOCKET_VERSION_VALUE);
            case 60:
                return new Ctry(w8Var, "310", "15");
            case 61:
                return new Ctry(w8Var, "320", "15");
            case 62:
                return new Ctry(w8Var, "310", "17");
            case 63:
                return new Ctry(w8Var, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(w8Var)));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final w8 m22042for() {
        return this.f17677do;
    }

    /* renamed from: if, reason: not valid java name */
    public final Cnative m22043if() {
        return this.f17678if;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract String mo22044new() throws ld0, j41;
}
