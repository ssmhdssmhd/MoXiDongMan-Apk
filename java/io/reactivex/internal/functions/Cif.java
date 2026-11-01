package io.reactivex.internal.functions;

import io.reactivex.functions.BiPredicate;
import java.util.Objects;

/* renamed from: io.reactivex.internal.functions.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public static final BiPredicate<Object, Object> f25319do = new Cdo();

    /* renamed from: io.reactivex.internal.functions.if$do, reason: invalid class name */
    public static final class Cdo implements BiPredicate<Object, Object> {
        @Override // io.reactivex.functions.BiPredicate
        public boolean test(Object obj, Object obj2) {
            return Cif.m29469for(obj, obj2);
        }
    }

    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public static long m29466case(long j, String str) {
        throw new InternalError("Null check on a primitive: " + str);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m29467do(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> T m29468else(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m29469for(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m29470goto(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m29471if(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> BiPredicate<T, T> m29472new() {
        return (BiPredicate<T, T>) f25319do;
    }

    /* renamed from: this, reason: not valid java name */
    public static long m29473this(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m29474try(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }
}
