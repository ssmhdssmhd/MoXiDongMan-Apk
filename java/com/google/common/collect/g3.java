package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import com.google.common.base.Function;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@ki0
@o8
/* loaded from: classes2.dex */
final class g3 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.collect.g3$for, reason: invalid class name */
    public static abstract class Cfor {
        public static final Cfor ANY_PRESENT;
        public static final Cfor FIRST_AFTER;
        public static final Cfor FIRST_PRESENT;
        public static final Cfor LAST_BEFORE;
        public static final Cfor LAST_PRESENT;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cfor[] f14300do;

        /* renamed from: com.google.common.collect.g3$for$do, reason: invalid class name */
        public enum Cdo extends Cfor {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cfor
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return i;
            }
        }

        /* renamed from: com.google.common.collect.g3$for$for, reason: invalid class name and collision with other inner class name */
        public enum C0097for extends Cfor {
            public C0097for(String str, int i) {
                super(str, i);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.g3.Cfor
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (comparator.compare(list.get(i3), e) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        }

        /* renamed from: com.google.common.collect.g3$for$if, reason: invalid class name */
        public enum Cif extends Cfor {
            public Cif(String str, int i) {
                super(str, i);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.g3.Cfor
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i2), e) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.g3$for$new, reason: invalid class name */
        public enum Cnew extends Cfor {
            public Cnew(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cfor
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return Cfor.LAST_PRESENT.resultIndex(comparator, e, list, i) + 1;
            }
        }

        /* renamed from: com.google.common.collect.g3$for$try, reason: invalid class name */
        public enum Ctry extends Cfor {
            public Ctry(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cfor
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return Cfor.FIRST_PRESENT.resultIndex(comparator, e, list, i) - 1;
            }
        }

        static {
            Cdo cdo = new Cdo("ANY_PRESENT", 0);
            ANY_PRESENT = cdo;
            Cif cif = new Cif("LAST_PRESENT", 1);
            LAST_PRESENT = cif;
            C0097for c0097for = new C0097for("FIRST_PRESENT", 2);
            FIRST_PRESENT = c0097for;
            Cnew cnew = new Cnew("FIRST_AFTER", 3);
            FIRST_AFTER = cnew;
            Ctry ctry = new Ctry("LAST_BEFORE", 4);
            LAST_BEFORE = ctry;
            f14300do = new Cfor[]{cdo, cif, c0097for, cnew, ctry};
        }

        private Cfor(String str, int i) {
        }

        public static Cfor valueOf(String str) {
            return (Cfor) Enum.valueOf(Cfor.class, str);
        }

        public static Cfor[] values() {
            return (Cfor[]) f14300do.clone();
        }

        public abstract <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.collect.g3$if, reason: invalid class name */
    public static abstract class Cif {
        public static final Cif INVERTED_INSERTION_INDEX;
        public static final Cif NEXT_HIGHER;
        public static final Cif NEXT_LOWER;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cif[] f14301do;

        /* renamed from: com.google.common.collect.g3$if$do, reason: invalid class name */
        public enum Cdo extends Cif {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cif
            public int resultIndex(int i) {
                return i - 1;
            }
        }

        /* renamed from: com.google.common.collect.g3$if$for, reason: invalid class name */
        public enum Cfor extends Cif {
            public Cfor(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cif
            public int resultIndex(int i) {
                return i ^ (-1);
            }
        }

        /* renamed from: com.google.common.collect.g3$if$if, reason: invalid class name and collision with other inner class name */
        public enum C0098if extends Cif {
            public C0098if(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.collect.g3.Cif
            public int resultIndex(int i) {
                return i;
            }
        }

        static {
            Cdo cdo = new Cdo("NEXT_LOWER", 0);
            NEXT_LOWER = cdo;
            C0098if c0098if = new C0098if("NEXT_HIGHER", 1);
            NEXT_HIGHER = c0098if;
            Cfor cfor = new Cfor("INVERTED_INSERTION_INDEX", 2);
            INVERTED_INSERTION_INDEX = cfor;
            f14301do = new Cif[]{cdo, c0098if, cfor};
        }

        private Cif(String str, int i) {
        }

        public static Cif valueOf(String str) {
            return (Cif) Enum.valueOf(Cif.class, str);
        }

        public static Cif[] values() {
            return (Cif[]) f14301do.clone();
        }

        public abstract int resultIndex(int i);
    }

    private g3() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <E, K extends Comparable> int m15815do(List<E> list, Function<? super E, K> function, @b51 K k, Cfor cfor, Cif cif) {
        return m15817if(list, function, k, k2.natural(), cfor, cif);
    }

    /* renamed from: for, reason: not valid java name */
    public static <E extends Comparable> int m15816for(List<? extends E> list, E e, Cfor cfor, Cif cif) {
        af1.m205continue(e);
        return m15818new(list, e, k2.natural(), cfor, cif);
    }

    /* renamed from: if, reason: not valid java name */
    public static <E, K> int m15817if(List<E> list, Function<? super E, K> function, @b51 K k, Comparator<? super K> comparator, Cfor cfor, Cif cif) {
        return m15818new(x1.m16491abstract(list, function), k, comparator, cfor, cif);
    }

    /* renamed from: new, reason: not valid java name */
    public static <E> int m15818new(List<? extends E> list, @b51 E e, Comparator<? super E> comparator, Cfor cfor, Cif cif) {
        af1.m205continue(comparator);
        af1.m205continue(list);
        af1.m205continue(cfor);
        af1.m205continue(cif);
        if (!(list instanceof RandomAccess)) {
            list = x1.m16506import(list);
        }
        int i = 0;
        int size = list.size() - 1;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            int iCompare = comparator.compare(e, list.get(i2));
            if (iCompare < 0) {
                size = i2 - 1;
            } else {
                if (iCompare <= 0) {
                    return i + cfor.resultIndex(comparator, e, list.subList(i, size + 1), i2 - i);
                }
                i = i2 + 1;
            }
        }
        return cif.resultIndex(i);
    }
}
