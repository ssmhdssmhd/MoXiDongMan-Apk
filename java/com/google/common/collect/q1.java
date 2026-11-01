package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cthis;
import com.google.common.base.Function;
import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.y1;

@li0
@o8
/* loaded from: classes2.dex */
public final class q1 {

    /* renamed from: com.google.common.collect.q1$for, reason: invalid class name */
    public static class Cfor<E> implements Function<E, E> {

        /* renamed from: do, reason: not valid java name */
        private final Interner<E> f14541do;

        public Cfor(Interner<E> interner) {
            this.f14541do = interner;
        }

        @Override // com.google.common.base.Function
        public E apply(E e) {
            return this.f14541do.intern(e);
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof Cfor) {
                return this.f14541do.equals(((Cfor) obj).f14541do);
            }
            return false;
        }

        public int hashCode() {
            return this.f14541do.hashCode();
        }
    }

    /* renamed from: com.google.common.collect.q1$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final y1 f14542do;

        /* renamed from: if, reason: not valid java name */
        private boolean f14543if;

        /* renamed from: do, reason: not valid java name */
        public <E> Interner<E> m16160do() {
            if (!this.f14543if) {
                this.f14542do.m16531class();
            }
            return new Cnew(this.f14542do);
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m16161for() {
            this.f14543if = true;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m16162if(int i) {
            this.f14542do.m16533do(i);
            return this;
        }

        @li0("java.lang.ref.WeakReference")
        /* renamed from: new, reason: not valid java name */
        public Cif m16163new() {
            this.f14543if = false;
            return this;
        }

        private Cif() {
            this.f14542do = new y1();
            this.f14543if = true;
        }
    }

    @af2
    /* renamed from: com.google.common.collect.q1$new, reason: invalid class name */
    public static final class Cnew<E> implements Interner<E> {

        /* renamed from: do, reason: not valid java name */
        @af2
        public final MapMakerInternalMap<E, y1.Cdo, ?, ?> f14544do;

        @Override // com.google.common.collect.Interner
        public E intern(E e) {
            E e2;
            do {
                MapMakerInternalMap.InternalEntry entry = this.f14544do.getEntry(e);
                if (entry != null && (e2 = (E) entry.getKey()) != null) {
                    return e2;
                }
            } while (this.f14544do.putIfAbsent(e, y1.Cdo.VALUE) != null);
            return e;
        }

        private Cnew(y1 y1Var) {
            this.f14544do = MapMakerInternalMap.createWithDummyValues(y1Var.m16536goto(Cthis.equals()));
        }
    }

    private q1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <E> Function<E, E> m16156do(Interner<E> interner) {
        return new Cfor((Interner) af1.m205continue(interner));
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> Interner<E> m16157for() {
        return m16158if().m16161for().m16160do();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m16158if() {
        return new Cif();
    }

    @li0("java.lang.ref.WeakReference")
    /* renamed from: new, reason: not valid java name */
    public static <E> Interner<E> m16159new() {
        return m16158if().m16163new().m16160do();
    }
}
