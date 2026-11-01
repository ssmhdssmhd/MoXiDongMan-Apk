package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class gv {

    /* renamed from: case, reason: not valid java name */
    public static final int f2249case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f2250else = 2;

    /* renamed from: do, reason: not valid java name */
    private final int f2251do;

    /* renamed from: for, reason: not valid java name */
    private final int f2252for;

    /* renamed from: if, reason: not valid java name */
    private final int f2253if;

    /* renamed from: new, reason: not valid java name */
    private final int f2254new;

    /* renamed from: try, reason: not valid java name */
    private final SecureRandom f2255try;

    public gv(int i, int i2, int i3, SecureRandom secureRandom) {
        this(i, i2, i3, secureRandom, -1);
    }

    public gv(int i, int i2, int i3, SecureRandom secureRandom, int i4) {
        this.f2251do = i;
        this.f2253if = i2;
        this.f2254new = i3;
        this.f2252for = i4;
        this.f2255try = secureRandom;
    }

    /* renamed from: do, reason: not valid java name */
    public int m2785do() {
        return this.f2254new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m2786for() {
        return this.f2253if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m2787if() {
        return this.f2251do;
    }

    /* renamed from: new, reason: not valid java name */
    public SecureRandom m2788new() {
        return this.f2255try;
    }

    /* renamed from: try, reason: not valid java name */
    public int m2789try() {
        return this.f2252for;
    }
}
