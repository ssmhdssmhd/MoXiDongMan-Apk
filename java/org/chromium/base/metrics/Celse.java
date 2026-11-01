package org.chromium.base.metrics;

/* renamed from: org.chromium.base.metrics.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: for, reason: not valid java name */
    private static boolean f33201for;

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f33203new = false;

    /* renamed from: do, reason: not valid java name */
    private static Cdo f33200do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static boolean f33202if = true;

    private Celse() {
    }

    /* renamed from: do, reason: not valid java name */
    public static UmaRecorder m37167do() {
        return f33200do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m37168for() {
        if (f33201for) {
            return;
        }
        f33200do = new Cdo();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37169if() {
        f33201for = true;
        f33200do.m37163case(new NativeUmaRecorder());
    }

    /* renamed from: new, reason: not valid java name */
    public static void m37170new(boolean z) {
        f33202if = z;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m37171try(UmaRecorder umaRecorder) {
        f33200do.m37163case(umaRecorder);
    }
}
