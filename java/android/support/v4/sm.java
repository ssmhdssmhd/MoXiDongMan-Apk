package android.support.v4;

import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public abstract class sm {
    /* renamed from: do, reason: not valid java name */
    public static Ccatch m7512do(Cfinally cfinally, int i) {
        return Character.isSupplementaryCodePoint(i) ? new lx1(cfinally, sn0.m7517super(i)) : new g4(cfinally, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccatch m7513if(Cfinally cfinally, int i, int i2) {
        return (Character.isSupplementaryCodePoint(i) || Character.isSupplementaryCodePoint(i2)) ? new lx1(cfinally, sn0.m7518throw(i, i2)) : new il1(cfinally, i, i2);
    }
}
