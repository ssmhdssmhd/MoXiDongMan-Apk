package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

@ki0(emulated = true)
/* renamed from: com.google.common.base.public, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cpublic {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.base.public$break, reason: invalid class name */
    public static abstract class Cbreak implements Predicate<Object> {
        public static final Cbreak ALWAYS_FALSE;
        public static final Cbreak ALWAYS_TRUE;
        public static final Cbreak IS_NULL;
        public static final Cbreak NOT_NULL;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cbreak[] f13720do;

        /* renamed from: com.google.common.base.public$break$do, reason: invalid class name */
        public enum Cdo extends Cbreak {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(@b51 Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        /* renamed from: com.google.common.base.public$break$for, reason: invalid class name */
        public enum Cfor extends Cbreak {
            public Cfor(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(@b51 Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        /* renamed from: com.google.common.base.public$break$if, reason: invalid class name */
        public enum Cif extends Cbreak {
            public Cif(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(@b51 Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        /* renamed from: com.google.common.base.public$break$new, reason: invalid class name */
        public enum Cnew extends Cbreak {
            public Cnew(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(@b51 Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }

        static {
            Cdo cdo = new Cdo("ALWAYS_TRUE", 0);
            ALWAYS_TRUE = cdo;
            Cif cif = new Cif("ALWAYS_FALSE", 1);
            ALWAYS_FALSE = cif;
            Cfor cfor = new Cfor("IS_NULL", 2);
            IS_NULL = cfor;
            Cnew cnew = new Cnew("NOT_NULL", 3);
            NOT_NULL = cnew;
            f13720do = new Cbreak[]{cdo, cif, cfor, cnew};
        }

        private Cbreak(String str, int i) {
        }

        public static Cbreak valueOf(String str) {
            return (Cbreak) Enum.valueOf(Cbreak.class, str);
        }

        public static Cbreak[] values() {
            return (Cbreak[]) f13720do.clone();
        }

        public <T> Predicate<T> withNarrowedType() {
            return this;
        }
    }

    /* renamed from: com.google.common.base.public$case, reason: invalid class name */
    public static class Ccase<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> target;

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 T t) {
            try {
                return this.target.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ccase) {
                return this.target.equals(((Ccase) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.target + ")";
        }

        private Ccase(Collection<?> collection) {
            this.target = (Collection) af1.m205continue(collection);
        }
    }

    /* renamed from: com.google.common.base.public$catch, reason: invalid class name */
    public static class Ccatch<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> components;

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (this.components.get(i).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ccatch) {
                return this.components.equals(((Ccatch) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 87855567;
        }

        public String toString() {
            return Cpublic.m15178switch("or", this.components);
        }

        private Ccatch(List<? extends Predicate<? super T>> list) {
            this.components = list;
        }
    }

    @li0
    /* renamed from: com.google.common.base.public$class, reason: invalid class name */
    public static class Cclass implements Predicate<Class<?>>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> clazz;

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            return (obj instanceof Cclass) && this.clazz == ((Cclass) obj).clazz;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            return "Predicates.subtypeOf(" + this.clazz.getName() + ")";
        }

        private Cclass(Class<?> cls) {
            this.clazz = (Class) af1.m205continue(cls);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(Class<?> cls) {
            return this.clazz.isAssignableFrom(cls);
        }
    }

    @li0
    /* renamed from: com.google.common.base.public$else, reason: invalid class name */
    public static class Celse implements Predicate<Object>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> clazz;

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 Object obj) {
            return this.clazz.isInstance(obj);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            return (obj instanceof Celse) && this.clazz == ((Celse) obj).clazz;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            return "Predicates.instanceOf(" + this.clazz.getName() + ")";
        }

        private Celse(Class<?> cls) {
            this.clazz = (Class) af1.m205continue(cls);
        }
    }

    /* renamed from: com.google.common.base.public$for, reason: invalid class name */
    public static class Cfor<A, B> implements Predicate<A>, Serializable {
        private static final long serialVersionUID = 0;
        public final Function<A, ? extends B> f;
        public final Predicate<B> p;

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 A a) {
            return this.p.apply(this.f.apply(a));
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.f.equals(cfor.f) && this.p.equals(cfor.p);
        }

        public int hashCode() {
            return this.f.hashCode() ^ this.p.hashCode();
        }

        public String toString() {
            return this.p + "(" + this.f + ")";
        }

        private Cfor(Predicate<B> predicate, Function<A, ? extends B> function) {
            this.p = (Predicate) af1.m205continue(predicate);
            this.f = (Function) af1.m205continue(function);
        }
    }

    /* renamed from: com.google.common.base.public$goto, reason: invalid class name */
    public static class Cgoto<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final T target;

        @Override // com.google.common.base.Predicate
        public boolean apply(T t) {
            return this.target.equals(t);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cgoto) {
                return this.target.equals(((Cgoto) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.target + ")";
        }

        private Cgoto(T t) {
            this.target = t;
        }
    }

    /* renamed from: com.google.common.base.public$if, reason: invalid class name */
    public static class Cif<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> components;

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (!this.components.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cif) {
                return this.components.equals(((Cif) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return Cpublic.m15178switch("and", this.components);
        }

        private Cif(List<? extends Predicate<? super T>> list) {
            this.components = list;
        }
    }

    @li0
    /* renamed from: com.google.common.base.public$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        private static final long serialVersionUID = 0;

        public Cnew(String str) {
            super(Cnative.m15117if(str));
        }

        @Override // com.google.common.base.Cpublic.Ctry
        public String toString() {
            return "Predicates.containsPattern(" + this.pattern.pattern() + ")";
        }
    }

    /* renamed from: com.google.common.base.public$this, reason: invalid class name */
    public static class Cthis<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        public final Predicate<T> predicate;

        public Cthis(Predicate<T> predicate) {
            this.predicate = (Predicate) af1.m205continue(predicate);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 T t) {
            return !this.predicate.apply(t);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cthis) {
                return this.predicate.equals(((Cthis) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return this.predicate.hashCode() ^ (-1);
        }

        public String toString() {
            return "Predicates.not(" + this.predicate + ")";
        }
    }

    @li0
    /* renamed from: com.google.common.base.public$try, reason: invalid class name */
    public static class Ctry implements Predicate<CharSequence>, Serializable {
        private static final long serialVersionUID = 0;
        public final com.google.common.base.Ccase pattern;

        public Ctry(com.google.common.base.Ccase ccase) {
            this.pattern = (com.google.common.base.Ccase) af1.m205continue(ccase);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Ctry)) {
                return false;
            }
            Ctry ctry = (Ctry) obj;
            return Cthrow.m15205do(this.pattern.pattern(), ctry.pattern.pattern()) && this.pattern.flags() == ctry.pattern.flags();
        }

        public int hashCode() {
            return Cthrow.m15206if(this.pattern.pattern(), Integer.valueOf(this.pattern.flags()));
        }

        public String toString() {
            return "Predicates.contains(" + Csuper.m15184for(this.pattern).m15190case("pattern", this.pattern.pattern()).m15200new("pattern.flags", this.pattern.flags()).toString() + ")";
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(CharSequence charSequence) {
            return this.pattern.matcher(charSequence).mo15030if();
        }
    }

    private Cpublic() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static Predicate<CharSequence> m15160break(String str) {
        return new Cnew(str);
    }

    @SafeVarargs
    /* renamed from: case, reason: not valid java name */
    public static <T> Predicate<T> m15161case(Predicate<? super T>... predicateArr) {
        return new Cif(m15163class(predicateArr));
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> List<T> m15162catch(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(af1.m205continue(it.next()));
        }
        return arrayList;
    }

    /* renamed from: class, reason: not valid java name */
    private static <T> List<T> m15163class(T... tArr) {
        return m15162catch(Arrays.asList(tArr));
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Predicate<T> m15164const(@b51 T t) {
        return t == null ? m15180throw() : new Cgoto(t);
    }

    /* renamed from: else, reason: not valid java name */
    private static <T> List<Predicate<? super T>> m15166else(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return Arrays.asList(predicate, predicate2);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> Predicate<T> m15167final(Collection<? extends T> collection) {
        return new Ccase(collection);
    }

    @ki0(serializable = true)
    /* renamed from: for, reason: not valid java name */
    public static <T> Predicate<T> m15168for() {
        return Cbreak.ALWAYS_TRUE.withNarrowedType();
    }

    /* renamed from: goto, reason: not valid java name */
    public static <A, B> Predicate<A> m15169goto(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new Cfor(predicate, function);
    }

    @ki0(serializable = true)
    /* renamed from: if, reason: not valid java name */
    public static <T> Predicate<T> m15170if() {
        return Cbreak.ALWAYS_FALSE.withNarrowedType();
    }

    @ki0(serializable = true)
    /* renamed from: import, reason: not valid java name */
    public static <T> Predicate<T> m15171import() {
        return Cbreak.NOT_NULL.withNarrowedType();
    }

    /* renamed from: native, reason: not valid java name */
    public static <T> Predicate<T> m15172native(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new Ccatch(m15166else((Predicate) af1.m205continue(predicate), (Predicate) af1.m205continue(predicate2)));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Predicate<T> m15173new(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new Cif(m15166else((Predicate) af1.m205continue(predicate), (Predicate) af1.m205continue(predicate2)));
    }

    /* renamed from: public, reason: not valid java name */
    public static <T> Predicate<T> m15174public(Iterable<? extends Predicate<? super T>> iterable) {
        return new Ccatch(m15162catch(iterable));
    }

    @SafeVarargs
    /* renamed from: return, reason: not valid java name */
    public static <T> Predicate<T> m15175return(Predicate<? super T>... predicateArr) {
        return new Ccatch(m15163class(predicateArr));
    }

    @li0
    @o8
    /* renamed from: static, reason: not valid java name */
    public static Predicate<Class<?>> m15176static(Class<?> cls) {
        return new Cclass(cls);
    }

    @li0
    /* renamed from: super, reason: not valid java name */
    public static Predicate<Object> m15177super(Class<?> cls) {
        return new Celse(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public static String m15178switch(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @li0("java.util.regex.Pattern")
    /* renamed from: this, reason: not valid java name */
    public static Predicate<CharSequence> m15179this(Pattern pattern) {
        return new Ctry(new Cconst(pattern));
    }

    @ki0(serializable = true)
    /* renamed from: throw, reason: not valid java name */
    public static <T> Predicate<T> m15180throw() {
        return Cbreak.IS_NULL.withNarrowedType();
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Predicate<T> m15181try(Iterable<? extends Predicate<? super T>> iterable) {
        return new Cif(m15162catch(iterable));
    }

    /* renamed from: while, reason: not valid java name */
    public static <T> Predicate<T> m15182while(Predicate<T> predicate) {
        return new Cthis(predicate);
    }
}
