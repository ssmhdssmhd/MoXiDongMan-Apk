package android.support.v4;

import com.google.common.escape.Cfor;

@ki0
/* loaded from: classes2.dex */
public final class ad2 {

    /* renamed from: if, reason: not valid java name */
    public static final String f109if = "-._~!$'()*,;&=@:";

    /* renamed from: do, reason: not valid java name */
    public static final String f107do = "-_.*";

    /* renamed from: for, reason: not valid java name */
    private static final Cfor f108for = new cd1(f107do, true);

    /* renamed from: new, reason: not valid java name */
    private static final Cfor f110new = new cd1("-._~!$'()*,;&=@:+", false);

    /* renamed from: try, reason: not valid java name */
    private static final Cfor f111try = new cd1("-._~!$'()*,;&=@:+/?", false);

    private ad2() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cfor m181do() {
        return f108for;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfor m182for() {
        return f110new;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfor m183if() {
        return f111try;
    }
}
