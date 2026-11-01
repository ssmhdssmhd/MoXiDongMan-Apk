package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.primitives.Cbreak;
import com.google.common.primitives.Cthis;
import java.util.Comparator;

@ki0
/* renamed from: com.google.common.collect.interface, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cinterface {

    /* renamed from: do, reason: not valid java name */
    private static final Cinterface f14346do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final Cinterface f14348if = new Cif(-1);

    /* renamed from: for, reason: not valid java name */
    private static final Cinterface f14347for = new Cif(1);

    /* renamed from: com.google.common.collect.interface$do, reason: invalid class name */
    public static class Cdo extends Cinterface {
        public Cdo() {
            super(null);
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: break */
        public <T> Cinterface mo15909break(@b51 T t, @b51 T t2, Comparator<T> comparator) {
            return m15919super(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: case */
        public Cinterface mo15910case(int i, int i2) {
            return m15919super(Cthis.m17705try(i, i2));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: catch */
        public Cinterface mo15911catch(boolean z, boolean z2) {
            return m15919super(com.google.common.primitives.Cdo.m17550new(z, z2));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: class */
        public Cinterface mo15912class(boolean z, boolean z2) {
            return m15919super(com.google.common.primitives.Cdo.m17550new(z2, z));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: const */
        public int mo15913const() {
            return 0;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: else */
        public Cinterface mo15914else(long j, long j2) {
            return m15919super(Cbreak.m17482new(j, j2));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: new */
        public Cinterface mo15916new(double d, double d2) {
            return m15919super(Double.compare(d, d2));
        }

        /* renamed from: super, reason: not valid java name */
        public Cinterface m15919super(int i) {
            return i < 0 ? Cinterface.f14348if : i > 0 ? Cinterface.f14347for : Cinterface.f14346do;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: this */
        public Cinterface mo15917this(Comparable comparable, Comparable comparable2) {
            return m15919super(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: try */
        public Cinterface mo15918try(float f, float f2) {
            return m15919super(Float.compare(f, f2));
        }
    }

    /* renamed from: com.google.common.collect.interface$if, reason: invalid class name */
    public static final class Cif extends Cinterface {

        /* renamed from: new, reason: not valid java name */
        public final int f14349new;

        public Cif(int i) {
            super(null);
            this.f14349new = i;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: break */
        public <T> Cinterface mo15909break(@b51 T t, @b51 T t2, @b51 Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: case */
        public Cinterface mo15910case(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: catch */
        public Cinterface mo15911catch(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: class */
        public Cinterface mo15912class(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: const */
        public int mo15913const() {
            return this.f14349new;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: else */
        public Cinterface mo15914else(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: new */
        public Cinterface mo15916new(double d, double d2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: this */
        public Cinterface mo15917this(@b51 Comparable comparable, @b51 Comparable comparable2) {
            return this;
        }

        @Override // com.google.common.collect.Cinterface
        /* renamed from: try */
        public Cinterface mo15918try(float f, float f2) {
            return this;
        }
    }

    public /* synthetic */ Cinterface(Cdo cdo) {
        this();
    }

    /* renamed from: final, reason: not valid java name */
    public static Cinterface m15906final() {
        return f14346do;
    }

    /* renamed from: break, reason: not valid java name */
    public abstract <T> Cinterface mo15909break(@b51 T t, @b51 T t2, Comparator<T> comparator);

    /* renamed from: case, reason: not valid java name */
    public abstract Cinterface mo15910case(int i, int i2);

    /* renamed from: catch, reason: not valid java name */
    public abstract Cinterface mo15911catch(boolean z, boolean z2);

    /* renamed from: class, reason: not valid java name */
    public abstract Cinterface mo15912class(boolean z, boolean z2);

    /* renamed from: const, reason: not valid java name */
    public abstract int mo15913const();

    /* renamed from: else, reason: not valid java name */
    public abstract Cinterface mo15914else(long j, long j2);

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public final Cinterface m15915goto(Boolean bool, Boolean bool2) {
        return mo15911catch(bool.booleanValue(), bool2.booleanValue());
    }

    /* renamed from: new, reason: not valid java name */
    public abstract Cinterface mo15916new(double d, double d2);

    /* renamed from: this, reason: not valid java name */
    public abstract Cinterface mo15917this(Comparable<?> comparable, Comparable<?> comparable2);

    /* renamed from: try, reason: not valid java name */
    public abstract Cinterface mo15918try(float f, float f2);

    private Cinterface() {
    }
}
