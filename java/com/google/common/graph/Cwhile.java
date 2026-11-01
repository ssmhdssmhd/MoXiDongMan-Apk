package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.collect.Maps;
import com.google.common.collect.k2;
import java.util.Comparator;
import java.util.Map;

@fm0
@o8
/* renamed from: com.google.common.graph.while, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cwhile<T> {

    /* renamed from: do, reason: not valid java name */
    private final Cif f15131do;

    /* renamed from: if, reason: not valid java name */
    @b51
    private final Comparator<T> f15132if;

    /* renamed from: com.google.common.graph.while$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f15133do;

        static {
            int[] iArr = new int[Cif.values().length];
            f15133do = iArr;
            try {
                iArr[Cif.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15133do[Cif.INSERTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15133do[Cif.STABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15133do[Cif.SORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.google.common.graph.while$if, reason: invalid class name */
    public enum Cif {
        UNORDERED,
        STABLE,
        INSERTION,
        SORTED
    }

    private Cwhile(Cif cif, @b51 Comparator<T> comparator) {
        this.f15131do = (Cif) af1.m205continue(cif);
        this.f15132if = comparator;
        af1.t((cif == Cif.SORTED) == (comparator != null));
    }

    /* renamed from: case, reason: not valid java name */
    public static <S> Cwhile<S> m16857case(Comparator<S> comparator) {
        return new Cwhile<>(Cif.SORTED, comparator);
    }

    /* renamed from: else, reason: not valid java name */
    public static <S> Cwhile<S> m16858else() {
        return new Cwhile<>(Cif.STABLE, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static <S> Cwhile<S> m16859new() {
        return new Cwhile<>(Cif.INSERTION, null);
    }

    /* renamed from: this, reason: not valid java name */
    public static <S> Cwhile<S> m16860this() {
        return new Cwhile<>(Cif.UNORDERED, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static <S extends Comparable<? super S>> Cwhile<S> m16861try() {
        return new Cwhile<>(Cif.SORTED, k2.natural());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public <T1 extends T> Cwhile<T1> m16862do() {
        return this;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cwhile)) {
            return false;
        }
        Cwhile cwhile = (Cwhile) obj;
        return this.f15131do == cwhile.f15131do && Cthrow.m15205do(this.f15132if, cwhile.f15132if);
    }

    /* renamed from: for, reason: not valid java name */
    public <K extends T, V> Map<K, V> m16863for(int i) {
        int i2 = Cdo.f15133do[this.f15131do.ordinal()];
        if (i2 == 1) {
            return Maps.n(i);
        }
        if (i2 == 2 || i2 == 3) {
            return Maps.r(i);
        }
        if (i2 == 4) {
            return Maps.t(m16865if());
        }
        throw new AssertionError();
    }

    /* renamed from: goto, reason: not valid java name */
    public Cif m16864goto() {
        return this.f15131do;
    }

    public int hashCode() {
        return Cthrow.m15206if(this.f15131do, this.f15132if);
    }

    /* renamed from: if, reason: not valid java name */
    public Comparator<T> m16865if() {
        Comparator<T> comparator = this.f15132if;
        if (comparator != null) {
            return comparator;
        }
        throw new UnsupportedOperationException("This ordering does not define a comparator.");
    }

    public String toString() {
        Csuper.Cif cifM15190case = Csuper.m15184for(this).m15190case("type", this.f15131do);
        Comparator<T> comparator = this.f15132if;
        if (comparator != null) {
            cifM15190case.m15190case("comparator", comparator);
        }
        return cifM15190case.toString();
    }
}
