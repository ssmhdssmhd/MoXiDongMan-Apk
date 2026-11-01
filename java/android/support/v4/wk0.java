package android.support.v4;

/* loaded from: classes3.dex */
public class wk0 {
    /* renamed from: break, reason: not valid java name */
    public static float m9190break(float f, float f2) {
        return Float.isNaN(f) ? f2 : Float.isNaN(f2) ? f : Math.min(f, f2);
    }

    /* renamed from: case, reason: not valid java name */
    public static float m9191case(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float fM9199new = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fM9199new = m9199new(fArr[i], fM9199new);
        }
        return fM9199new;
    }

    /* renamed from: catch, reason: not valid java name */
    public static float m9192catch(float f, float f2, float f3) {
        return m9190break(m9190break(f, f2), f3);
    }

    /* renamed from: class, reason: not valid java name */
    public static float m9193class(float[] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        float fM9190break = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fM9190break = m9190break(fArr[i], fM9190break);
        }
        return fM9190break;
    }

    /* renamed from: do, reason: not valid java name */
    public static double m9194do(double d, double d2) {
        return Double.isNaN(d) ? d2 : Double.isNaN(d2) ? d : Math.max(d, d2);
    }

    /* renamed from: else, reason: not valid java name */
    public static double m9195else(double d, double d2) {
        return Double.isNaN(d) ? d2 : Double.isNaN(d2) ? d : Math.min(d, d2);
    }

    /* renamed from: for, reason: not valid java name */
    public static double m9196for(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double dM9194do = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dM9194do = m9194do(dArr[i], dM9194do);
        }
        return dM9194do;
    }

    /* renamed from: goto, reason: not valid java name */
    public static double m9197goto(double d, double d2, double d3) {
        return m9195else(m9195else(d, d2), d3);
    }

    /* renamed from: if, reason: not valid java name */
    public static double m9198if(double d, double d2, double d3) {
        return m9194do(m9194do(d, d2), d3);
    }

    /* renamed from: new, reason: not valid java name */
    public static float m9199new(float f, float f2) {
        return Float.isNaN(f) ? f2 : Float.isNaN(f2) ? f : Math.max(f, f2);
    }

    /* renamed from: this, reason: not valid java name */
    public static double m9200this(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (dArr.length == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
        double dM9195else = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dM9195else = m9195else(dArr[i], dM9195else);
        }
        return dM9195else;
    }

    /* renamed from: try, reason: not valid java name */
    public static float m9201try(float f, float f2, float f3) {
        return m9199new(m9199new(f, f2), f3);
    }
}
