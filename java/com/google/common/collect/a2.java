package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

@ki0
/* loaded from: classes2.dex */
public abstract class a2<K0, V0> {

    /* renamed from: do, reason: not valid java name */
    private static final int f14057do = 8;

    /* renamed from: com.google.common.collect.a2$break, reason: invalid class name */
    public static abstract class Cbreak<K0, V0> extends a2<K0, V0> {
        public Cbreak() {
            super(null);
        }

        @Override // com.google.common.collect.a2
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public abstract <K extends K0, V extends V0> ListMultimap<K, V> mo15497do();

        @Override // com.google.common.collect.a2
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public <K extends K0, V extends V0> ListMultimap<K, V> mo15498if(Multimap<? extends K, ? extends V> multimap) {
            return (ListMultimap) super.mo15498if(multimap);
        }
    }

    /* renamed from: com.google.common.collect.a2$case, reason: invalid class name */
    public static final class Ccase<V extends Enum<V>> implements Supplier<Set<V>>, Serializable {
        private final Class<V> clazz;

        public Ccase(Class<V> cls) {
            this.clazz = (Class) af1.m205continue(cls);
        }

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return EnumSet.noneOf(this.clazz);
        }
    }

    /* renamed from: com.google.common.collect.a2$catch, reason: invalid class name */
    public static abstract class Ccatch<K0> {

        /* renamed from: do, reason: not valid java name */
        private static final int f14058do = 2;

        /* renamed from: com.google.common.collect.a2$catch$case, reason: invalid class name */
        public class Ccase extends Cclass<K0, V0> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Class f14060if;

            public Ccase(Class cls) {
                this.f14060if = cls;
            }

            @Override // com.google.common.collect.a2.Cclass, com.google.common.collect.a2
            /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
            public <K extends K0, V extends V0> SetMultimap<K, V> mo15497do() {
                return b2.m15584switch(Ccatch.this.mo15506for(), new Ccase(this.f14060if));
            }
        }

        /* renamed from: com.google.common.collect.a2$catch$do, reason: invalid class name */
        public class Cdo extends Cbreak<K0, Object> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f14062if;

            public Cdo(int i) {
                this.f14062if = i;
            }

            @Override // com.google.common.collect.a2.Cbreak, com.google.common.collect.a2
            /* renamed from: break */
            public <K extends K0, V> ListMultimap<K, V> mo15497do() {
                return b2.m15580return(Ccatch.this.mo15506for(), new Ctry(this.f14062if));
            }
        }

        /* renamed from: com.google.common.collect.a2$catch$for, reason: invalid class name */
        public class Cfor extends Cclass<K0, Object> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f14064if;

            public Cfor(int i) {
                this.f14064if = i;
            }

            @Override // com.google.common.collect.a2.Cclass, com.google.common.collect.a2
            /* renamed from: break */
            public <K extends K0, V> SetMultimap<K, V> mo15497do() {
                return b2.m15584switch(Ccatch.this.mo15506for(), new Celse(this.f14064if));
            }
        }

        /* renamed from: com.google.common.collect.a2$catch$if, reason: invalid class name */
        public class Cif extends Cbreak<K0, Object> {
            public Cif() {
            }

            @Override // com.google.common.collect.a2.Cbreak, com.google.common.collect.a2
            /* renamed from: break */
            public <K extends K0, V> ListMultimap<K, V> mo15497do() {
                return b2.m15580return(Ccatch.this.mo15506for(), Cthis.instance());
            }
        }

        /* renamed from: com.google.common.collect.a2$catch$new, reason: invalid class name */
        public class Cnew extends Cclass<K0, Object> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f14067if;

            public Cnew(int i) {
                this.f14067if = i;
            }

            @Override // com.google.common.collect.a2.Cclass, com.google.common.collect.a2
            /* renamed from: break */
            public <K extends K0, V> SetMultimap<K, V> mo15497do() {
                return b2.m15584switch(Ccatch.this.mo15506for(), new Cgoto(this.f14067if));
            }
        }

        /* renamed from: com.google.common.collect.a2$catch$try, reason: invalid class name */
        public class Ctry extends Cconst<K0, V0> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Comparator f14069if;

            public Ctry(Comparator comparator) {
                this.f14069if = comparator;
            }

            @Override // com.google.common.collect.a2.Cconst, com.google.common.collect.a2.Cclass, com.google.common.collect.a2
            /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
            public <K extends K0, V extends V0> SortedSetMultimap<K, V> mo15497do() {
                return b2.m15588throws(Ccatch.this.mo15506for(), new Cfinal(this.f14069if));
            }
        }

        /* renamed from: break, reason: not valid java name */
        public Cconst<K0, Comparable> m15501break() {
            return m15503catch(k2.natural());
        }

        /* renamed from: case, reason: not valid java name */
        public Cclass<K0, Object> m15502case(int i) {
            Cdefault.m15742if(i, "expectedValuesPerKey");
            return new Cfor(i);
        }

        /* renamed from: catch, reason: not valid java name */
        public <V0> Cconst<K0, V0> m15503catch(Comparator<V0> comparator) {
            af1.m227strictfp(comparator, "comparator");
            return new Ctry(comparator);
        }

        /* renamed from: do, reason: not valid java name */
        public Cbreak<K0, Object> m15504do() {
            return m15508if(2);
        }

        /* renamed from: else, reason: not valid java name */
        public Cclass<K0, Object> m15505else() {
            return m15507goto(2);
        }

        /* renamed from: for, reason: not valid java name */
        public abstract <K extends K0, V> Map<K, Collection<V>> mo15506for();

        /* renamed from: goto, reason: not valid java name */
        public Cclass<K0, Object> m15507goto(int i) {
            Cdefault.m15742if(i, "expectedValuesPerKey");
            return new Cnew(i);
        }

        /* renamed from: if, reason: not valid java name */
        public Cbreak<K0, Object> m15508if(int i) {
            Cdefault.m15742if(i, "expectedValuesPerKey");
            return new Cdo(i);
        }

        /* renamed from: new, reason: not valid java name */
        public <V0 extends Enum<V0>> Cclass<K0, V0> m15509new(Class<V0> cls) {
            af1.m227strictfp(cls, "valueClass");
            return new Ccase(cls);
        }

        /* renamed from: this, reason: not valid java name */
        public Cbreak<K0, Object> m15510this() {
            return new Cif();
        }

        /* renamed from: try, reason: not valid java name */
        public Cclass<K0, Object> m15511try() {
            return m15502case(2);
        }
    }

    /* renamed from: com.google.common.collect.a2$class, reason: invalid class name */
    public static abstract class Cclass<K0, V0> extends a2<K0, V0> {
        public Cclass() {
            super(null);
        }

        @Override // com.google.common.collect.a2
        /* renamed from: break */
        public abstract <K extends K0, V extends V0> SetMultimap<K, V> mo15497do();

        @Override // com.google.common.collect.a2
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public <K extends K0, V extends V0> SetMultimap<K, V> mo15498if(Multimap<? extends K, ? extends V> multimap) {
            return (SetMultimap) super.mo15498if(multimap);
        }
    }

    /* renamed from: com.google.common.collect.a2$const, reason: invalid class name */
    public static abstract class Cconst<K0, V0> extends Cclass<K0, V0> {
        @Override // com.google.common.collect.a2.Cclass, com.google.common.collect.a2
        /* renamed from: class */
        public abstract <K extends K0, V extends V0> SortedSetMultimap<K, V> mo15497do();

        @Override // com.google.common.collect.a2.Cclass, com.google.common.collect.a2
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public <K extends K0, V extends V0> SortedSetMultimap<K, V> mo15498if(Multimap<? extends K, ? extends V> multimap) {
            return (SortedSetMultimap) super.mo15498if(multimap);
        }
    }

    /* renamed from: com.google.common.collect.a2$do, reason: invalid class name */
    public static class Cdo extends Ccatch<Object> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f14070if;

        public Cdo(int i) {
            this.f14070if = i;
        }

        @Override // com.google.common.collect.a2.Ccatch
        /* renamed from: for */
        public <K, V> Map<K, Collection<V>> mo15506for() {
            return l2.m15995new(this.f14070if);
        }
    }

    /* renamed from: com.google.common.collect.a2$else, reason: invalid class name */
    public static final class Celse<V> implements Supplier<Set<V>>, Serializable {
        private final int expectedValuesPerKey;

        public Celse(int i) {
            this.expectedValuesPerKey = Cdefault.m15742if(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return l2.m15997try(this.expectedValuesPerKey);
        }
    }

    /* renamed from: com.google.common.collect.a2$final, reason: invalid class name */
    public static final class Cfinal<V> implements Supplier<SortedSet<V>>, Serializable {
        private final Comparator<? super V> comparator;

        public Cfinal(Comparator<? super V> comparator) {
            this.comparator = (Comparator) af1.m205continue(comparator);
        }

        @Override // com.google.common.base.Supplier
        public SortedSet<V> get() {
            return new TreeSet(this.comparator);
        }
    }

    /* renamed from: com.google.common.collect.a2$for, reason: invalid class name */
    public static class Cfor extends Ccatch<K0> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f14071if;

        public Cfor(Comparator comparator) {
            this.f14071if = comparator;
        }

        @Override // com.google.common.collect.a2.Ccatch
        /* renamed from: for */
        public <K extends K0, V> Map<K, Collection<V>> mo15506for() {
            return new TreeMap(this.f14071if);
        }
    }

    /* renamed from: com.google.common.collect.a2$goto, reason: invalid class name */
    public static final class Cgoto<V> implements Supplier<Set<V>>, Serializable {
        private final int expectedValuesPerKey;

        public Cgoto(int i) {
            this.expectedValuesPerKey = Cdefault.m15742if(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier
        public Set<V> get() {
            return l2.m15991else(this.expectedValuesPerKey);
        }
    }

    /* renamed from: com.google.common.collect.a2$if, reason: invalid class name */
    public static class Cif extends Ccatch<Object> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f14072if;

        public Cif(int i) {
            this.f14072if = i;
        }

        @Override // com.google.common.collect.a2.Ccatch
        /* renamed from: for */
        public <K, V> Map<K, Collection<V>> mo15506for() {
            return l2.m15987case(this.f14072if);
        }
    }

    /* renamed from: com.google.common.collect.a2$new, reason: invalid class name */
    public static class Cnew extends Ccatch<K0> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Class f14073if;

        public Cnew(Class cls) {
            this.f14073if = cls;
        }

        @Override // com.google.common.collect.a2.Ccatch
        /* renamed from: for */
        public <K extends K0, V> Map<K, Collection<V>> mo15506for() {
            return new EnumMap(this.f14073if);
        }
    }

    /* renamed from: com.google.common.collect.a2$this, reason: invalid class name */
    public enum Cthis implements Supplier<List<Object>> {
        INSTANCE;

        public static <V> Supplier<List<V>> instance() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Supplier
        public List<Object> get() {
            return new LinkedList();
        }
    }

    /* renamed from: com.google.common.collect.a2$try, reason: invalid class name */
    public static final class Ctry<V> implements Supplier<List<V>>, Serializable {
        private final int expectedValuesPerKey;

        public Ctry(int i) {
            this.expectedValuesPerKey = Cdefault.m15742if(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.Supplier
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }
    }

    public /* synthetic */ a2(Cdo cdo) {
        this();
    }

    /* renamed from: case, reason: not valid java name */
    public static Ccatch<Object> m15490case() {
        return m15491else(8);
    }

    /* renamed from: else, reason: not valid java name */
    public static Ccatch<Object> m15491else(int i) {
        Cdefault.m15742if(i, "expectedKeys");
        return new Cif(i);
    }

    /* renamed from: for, reason: not valid java name */
    public static <K0 extends Enum<K0>> Ccatch<K0> m15492for(Class<K0> cls) {
        af1.m205continue(cls);
        return new Cnew(cls);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Ccatch<Comparable> m15493goto() {
        return m15495this(k2.natural());
    }

    /* renamed from: new, reason: not valid java name */
    public static Ccatch<Object> m15494new() {
        return m15496try(8);
    }

    /* renamed from: this, reason: not valid java name */
    public static <K0> Ccatch<K0> m15495this(Comparator<K0> comparator) {
        af1.m205continue(comparator);
        return new Cfor(comparator);
    }

    /* renamed from: try, reason: not valid java name */
    public static Ccatch<Object> m15496try(int i) {
        Cdefault.m15742if(i, "expectedKeys");
        return new Cdo(i);
    }

    /* renamed from: do, reason: not valid java name */
    public abstract <K extends K0, V extends V0> Multimap<K, V> mo15497do();

    /* renamed from: if, reason: not valid java name */
    public <K extends K0, V extends V0> Multimap<K, V> mo15498if(Multimap<? extends K, ? extends V> multimap) {
        Multimap<K, V> multimapMo15497do = mo15497do();
        multimapMo15497do.putAll(multimap);
        return multimapMo15497do;
    }

    private a2() {
    }
}
