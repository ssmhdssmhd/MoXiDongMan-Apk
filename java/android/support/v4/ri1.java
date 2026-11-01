package android.support.v4;

import org.bouncycastle.pqc.crypto.qtesla.Ccase;

/* loaded from: classes3.dex */
public class ri1 {

    /* renamed from: do, reason: not valid java name */
    public static final int f5813do = 0;

    /* renamed from: for, reason: not valid java name */
    public static final int f5814for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f5815if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f5816new = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f5817try = 4;

    private ri1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m6993do(int i) {
        if (i == 0) {
            return "qTESLA-I";
        }
        if (i == 1) {
            return "qTESLA-III-size";
        }
        if (i == 2) {
            return "qTESLA-III-speed";
        }
        if (i == 3) {
            return "qTESLA-p-I";
        }
        if (i == 4) {
            return "qTESLA-p-III";
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6994for(int i) {
        if (i == 0) {
            return Ccase.f32261break;
        }
        if (i == 1) {
            return Ccase.f32263catch;
        }
        if (i == 2) {
            return Ccase.f32264class;
        }
        if (i == 3) {
            return Ccase.f32265const;
        }
        if (i == 4) {
            return Ccase.f32268final;
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6995if(int i) {
        if (i == 0) {
            return Ccase.f32275super;
        }
        if (i == 1) {
            return Ccase.f32277throw;
        }
        if (i == 2) {
            return Ccase.f32279while;
        }
        if (i == 3) {
            return Ccase.f32272import;
        }
        if (i == 4) {
            return Ccase.f32273native;
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6996new(int i) {
        if (i == 0) {
            return Ccase.f32278try;
        }
        if (i == 1) {
            return Ccase.f32262case;
        }
        if (i == 2 || i == 3) {
            return 2848;
        }
        if (i == 4) {
            return Ccase.f32276this;
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m6997try(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
            return;
        }
        throw new IllegalArgumentException("unknown security category: " + i);
    }
}
