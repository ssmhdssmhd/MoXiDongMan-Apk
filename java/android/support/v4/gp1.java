package android.support.v4;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class gp1 {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f2189abstract = 121;

    /* renamed from: break, reason: not valid java name */
    public static final int f2190break = 8;

    /* renamed from: case, reason: not valid java name */
    public static final int f2191case = 4;

    /* renamed from: catch, reason: not valid java name */
    public static final int f2192catch = 9;

    /* renamed from: class, reason: not valid java name */
    public static final int f2193class = 10;

    /* renamed from: const, reason: not valid java name */
    public static final int f2194const = 11;

    /* renamed from: continue, reason: not valid java name */
    public static final int f2195continue = 141;

    /* renamed from: default, reason: not valid java name */
    public static final int f2196default = 43;

    /* renamed from: else, reason: not valid java name */
    public static final int f2197else = 5;

    /* renamed from: extends, reason: not valid java name */
    public static final int f2198extends = 44;

    /* renamed from: final, reason: not valid java name */
    public static final int f2199final = 12;

    /* renamed from: finally, reason: not valid java name */
    public static final int f2200finally = 81;

    /* renamed from: for, reason: not valid java name */
    public static final int f2201for = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f2202goto = 6;

    /* renamed from: import, reason: not valid java name */
    public static final int f2203import = 17;

    /* renamed from: native, reason: not valid java name */
    public static final int f2204native = 16;

    /* renamed from: new, reason: not valid java name */
    public static final int f2205new = 2;

    /* renamed from: package, reason: not valid java name */
    public static final int f2206package = 82;

    /* renamed from: private, reason: not valid java name */
    public static final int f2207private = 101;

    /* renamed from: public, reason: not valid java name */
    public static final int f2208public = 21;

    /* renamed from: return, reason: not valid java name */
    public static final int f2209return = 22;

    /* renamed from: static, reason: not valid java name */
    public static final int f2210static = 23;

    /* renamed from: super, reason: not valid java name */
    public static final int f2211super = 13;

    /* renamed from: switch, reason: not valid java name */
    public static final int f2212switch = 41;

    /* renamed from: this, reason: not valid java name */
    public static final int f2213this = 7;

    /* renamed from: throw, reason: not valid java name */
    public static final int f2214throw = 14;

    /* renamed from: throws, reason: not valid java name */
    public static final int f2215throws = 42;

    /* renamed from: try, reason: not valid java name */
    public static final int f2216try = 3;

    /* renamed from: while, reason: not valid java name */
    public static final int f2217while = 15;

    /* renamed from: do, reason: not valid java name */
    private int f2218do;

    /* renamed from: if, reason: not valid java name */
    private Object[] f2219if;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.gp1$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    public gp1(int i, Object... objArr) {
        this.f2218do = i;
        this.f2219if = objArr;
    }

    /* renamed from: do, reason: not valid java name */
    public Object m2765do() {
        return m2767if(0);
    }

    /* renamed from: for, reason: not valid java name */
    public int m2766for() {
        return this.f2218do;
    }

    /* renamed from: if, reason: not valid java name */
    public Object m2767if(int i) {
        Object[] objArr = this.f2219if;
        if (i < objArr.length) {
            return objArr[i];
        }
        return null;
    }
}
