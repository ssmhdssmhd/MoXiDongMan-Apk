package org.antlr.v4.runtime.atn;

import android.support.v4.Cfinally;
import android.support.v4.ap1;
import android.support.v4.bg2;
import android.support.v4.f80;
import android.support.v4.g4;
import android.support.v4.il1;
import android.support.v4.lx1;
import android.support.v4.o41;
import android.support.v4.sn0;
import android.support.v4.u;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: org.antlr.v4.runtime.atn.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccatch {

    /* renamed from: break, reason: not valid java name */
    public static final int f28453break = 9;

    /* renamed from: case, reason: not valid java name */
    public static final int f28454case = 5;

    /* renamed from: catch, reason: not valid java name */
    public static final int f28455catch = 10;

    /* renamed from: class, reason: not valid java name */
    public static final List<String> f28456class = Collections.unmodifiableList(Arrays.asList("INVALID", "EPSILON", "RANGE", "RULE", "PREDICATE", "ATOM", "ACTION", "SET", "NOT_SET", "WILDCARD", "PRECEDENCE"));

    /* renamed from: const, reason: not valid java name */
    public static final Map<Class<? extends Ccatch>, Integer> f28457const = Collections.unmodifiableMap(new Cdo());

    /* renamed from: else, reason: not valid java name */
    public static final int f28458else = 6;

    /* renamed from: for, reason: not valid java name */
    public static final int f28459for = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f28460goto = 7;

    /* renamed from: if, reason: not valid java name */
    public static final int f28461if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f28462new = 3;

    /* renamed from: this, reason: not valid java name */
    public static final int f28463this = 8;

    /* renamed from: try, reason: not valid java name */
    public static final int f28464try = 4;

    /* renamed from: do, reason: not valid java name */
    public Cfinally f28465do;

    /* renamed from: org.antlr.v4.runtime.atn.catch$do, reason: invalid class name */
    public static class Cdo extends HashMap<Class<? extends Ccatch>, Integer> {
        public Cdo() {
            put(f80.class, 1);
            put(il1.class, 2);
            put(ap1.class, 3);
            put(Ccase.class, 4);
            put(g4.class, 5);
            put(u.class, 6);
            put(lx1.class, 7);
            put(o41.class, 8);
            put(bg2.class, 9);
            put(Ctry.class, 10);
        }
    }

    public Ccatch(Cfinally cfinally) {
        Objects.requireNonNull(cfinally, "target cannot be null.");
        this.f28465do = cfinally;
    }

    /* renamed from: do */
    public abstract int mo310do();

    /* renamed from: for */
    public sn0 mo2573for() {
        return null;
    }

    /* renamed from: if */
    public boolean mo311if() {
        return false;
    }

    /* renamed from: new */
    public abstract boolean mo312new(int i, int i2, int i3);
}
