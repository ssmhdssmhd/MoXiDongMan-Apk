package freemarker.ext.beans;

import android.support.v4.hl2;

/* renamed from: freemarker.ext.beans.import, reason: invalid class name */
/* loaded from: classes.dex */
final class Cimport extends Cextends {

    /* renamed from: new, reason: not valid java name */
    public static final Cimport f24589new = new Cimport("No compatible overloaded variation was found; wrong number of arguments.", true, null);

    /* renamed from: do, reason: not valid java name */
    private final Object f24590do;

    /* renamed from: for, reason: not valid java name */
    private final Object[] f24591for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f24592if;

    private Cimport(Object obj, boolean z, Object[] objArr) {
        this.f24590do = obj;
        this.f24592if = z;
        this.f24591for = objArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cimport m28639case(int i) {
        return new Cimport(new Object[]{"No compatible overloaded variation was found; can't convert (unwrap) the ", new hl2(Integer.valueOf(i)), " argument to the desired Java type."}, false, null);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cimport m28640do(Object[] objArr) {
        return new Cimport("Multiple compatible overloaded variations were found with the same priority.", false, objArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cimport m28641else(Object[] objArr) {
        return new Cimport("No compatible overloaded variation was found; declared parameter types and argument value types mismatch.", false, objArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cextends m28642if(Cwhile cwhile, Object[] objArr) {
        if (cwhile == Cwhile.f24667do) {
            return m28641else(objArr);
        }
        if (cwhile == Cwhile.f24668if) {
            return m28640do(objArr);
        }
        throw new IllegalArgumentException("Unrecognized constant: " + cwhile);
    }

    /* renamed from: for, reason: not valid java name */
    public Object m28643for() {
        return this.f24590do;
    }

    /* renamed from: new, reason: not valid java name */
    public Object[] m28644new() {
        return this.f24591for;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m28645try() {
        return this.f24592if;
    }
}
