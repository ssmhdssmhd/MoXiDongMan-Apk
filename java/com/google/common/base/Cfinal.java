package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

@ki0
/* renamed from: com.google.common.base.final, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private final String f13660do;

    /* renamed from: com.google.common.base.final$do, reason: invalid class name */
    public class Cdo extends Cfinal {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f13662if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Cfinal cfinal, String str) {
            super(cfinal, null);
            this.f13662if = str;
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: import */
        public CharSequence mo15081import(@b51 Object obj) {
            return obj == null ? this.f13662if : Cfinal.this.mo15081import(obj);
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: native */
        public Cfinal mo15082native(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: while */
        public Cfinal mo15088while() {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    /* renamed from: com.google.common.base.final$for, reason: invalid class name */
    public static class Cfor extends AbstractList<Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object[] f13663do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f13664for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f13665if;

        public Cfor(Object[] objArr, Object obj, Object obj2) {
            this.f13663do = objArr;
            this.f13665if = obj;
            this.f13664for = obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            return i != 0 ? i != 1 ? this.f13663do[i - 2] : this.f13664for : this.f13665if;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13663do.length + 2;
        }
    }

    /* renamed from: com.google.common.base.final$if, reason: invalid class name */
    public class Cif extends Cfinal {
        public Cif(Cfinal cfinal) {
            super(cfinal, null);
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: native */
        public Cfinal mo15082native(String str) {
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: new */
        public <A extends Appendable> A mo15083new(A a, Iterator<?> it) throws IOException {
            af1.m227strictfp(a, "appendable");
            af1.m227strictfp(it, "parts");
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (next != null) {
                    a.append(Cfinal.this.mo15081import(next));
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a.append(Cfinal.this.f13660do);
                    a.append(Cfinal.this.mo15081import(next2));
                }
            }
            return a;
        }

        @Override // com.google.common.base.Cfinal
        /* renamed from: return */
        public Cnew mo15085return(String str) {
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    /* renamed from: com.google.common.base.final$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Cfinal f13667do;

        /* renamed from: if, reason: not valid java name */
        private final String f13668if;

        public /* synthetic */ Cnew(Cfinal cfinal, String str, Cdo cdo) {
            this(cfinal, str);
        }

        /* renamed from: break, reason: not valid java name */
        public Cnew m15089break(String str) {
            return new Cnew(this.f13667do.mo15082native(str), this.f13668if);
        }

        @lf
        /* renamed from: case, reason: not valid java name */
        public StringBuilder m15090case(StringBuilder sb, Map<?, ?> map) {
            return m15096new(sb, map.entrySet());
        }

        @lf
        @o8
        /* renamed from: do, reason: not valid java name */
        public <A extends Appendable> A m15091do(A a, Iterable<? extends Map.Entry<?, ?>> iterable) throws IOException {
            return (A) m15095if(a, iterable.iterator());
        }

        @o8
        /* renamed from: else, reason: not valid java name */
        public String m15092else(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return m15094goto(iterable.iterator());
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public <A extends Appendable> A m15093for(A a, Map<?, ?> map) throws IOException {
            return (A) m15091do(a, map.entrySet());
        }

        @o8
        /* renamed from: goto, reason: not valid java name */
        public String m15094goto(Iterator<? extends Map.Entry<?, ?>> it) {
            return m15098try(new StringBuilder(), it).toString();
        }

        @lf
        @o8
        /* renamed from: if, reason: not valid java name */
        public <A extends Appendable> A m15095if(A a, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            af1.m205continue(a);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a.append(this.f13667do.mo15081import(next.getKey()));
                a.append(this.f13668if);
                a.append(this.f13667do.mo15081import(next.getValue()));
                while (it.hasNext()) {
                    a.append(this.f13667do.f13660do);
                    Map.Entry<?, ?> next2 = it.next();
                    a.append(this.f13667do.mo15081import(next2.getKey()));
                    a.append(this.f13668if);
                    a.append(this.f13667do.mo15081import(next2.getValue()));
                }
            }
            return a;
        }

        @lf
        @o8
        /* renamed from: new, reason: not valid java name */
        public StringBuilder m15096new(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return m15098try(sb, iterable.iterator());
        }

        /* renamed from: this, reason: not valid java name */
        public String m15097this(Map<?, ?> map) {
            return m15092else(map.entrySet());
        }

        @lf
        @o8
        /* renamed from: try, reason: not valid java name */
        public StringBuilder m15098try(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                m15095if(sb, it);
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        private Cnew(Cfinal cfinal, String str) {
            this.f13667do = cfinal;
            this.f13668if = (String) af1.m205continue(str);
        }
    }

    public /* synthetic */ Cfinal(Cfinal cfinal, Cdo cdo) {
        this(cfinal);
    }

    /* renamed from: break, reason: not valid java name */
    private static Iterable<Object> m15068break(Object obj, Object obj2, Object[] objArr) {
        af1.m205continue(objArr);
        return new Cfor(objArr, obj, obj2);
    }

    /* renamed from: super, reason: not valid java name */
    public static Cfinal m15070super(char c) {
        return new Cfinal(String.valueOf(c));
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cfinal m15071throw(String str) {
        return new Cfinal(str);
    }

    @lf
    /* renamed from: case, reason: not valid java name */
    public final StringBuilder m15072case(StringBuilder sb, Iterable<?> iterable) {
        return m15079goto(sb, iterable.iterator());
    }

    /* renamed from: catch, reason: not valid java name */
    public final String m15073catch(Iterable<?> iterable) {
        return m15075const(iterable.iterator());
    }

    /* renamed from: class, reason: not valid java name */
    public final String m15074class(@b51 Object obj, @b51 Object obj2, Object... objArr) {
        return m15073catch(m15068break(obj, obj2, objArr));
    }

    /* renamed from: const, reason: not valid java name */
    public final String m15075const(Iterator<?> it) {
        return m15079goto(new StringBuilder(), it).toString();
    }

    @lf
    /* renamed from: else, reason: not valid java name */
    public final StringBuilder m15076else(StringBuilder sb, @b51 Object obj, @b51 Object obj2, Object... objArr) {
        return m15072case(sb, m15068break(obj, obj2, objArr));
    }

    /* renamed from: final, reason: not valid java name */
    public final String m15077final(Object[] objArr) {
        return m15073catch(Arrays.asList(objArr));
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public final <A extends Appendable> A m15078for(A a, @b51 Object obj, @b51 Object obj2, Object... objArr) throws IOException {
        return (A) m15080if(a, m15068break(obj, obj2, objArr));
    }

    @lf
    /* renamed from: goto, reason: not valid java name */
    public final StringBuilder m15079goto(StringBuilder sb, Iterator<?> it) {
        try {
            mo15083new(sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public <A extends Appendable> A m15080if(A a, Iterable<?> iterable) throws IOException {
        return (A) mo15083new(a, iterable.iterator());
    }

    /* renamed from: import, reason: not valid java name */
    public CharSequence mo15081import(Object obj) {
        af1.m205continue(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: native, reason: not valid java name */
    public Cfinal mo15082native(String str) {
        af1.m205continue(str);
        return new Cdo(this, str);
    }

    @lf
    /* renamed from: new, reason: not valid java name */
    public <A extends Appendable> A mo15083new(A a, Iterator<?> it) throws IOException {
        af1.m205continue(a);
        if (it.hasNext()) {
            a.append(mo15081import(it.next()));
            while (it.hasNext()) {
                a.append(this.f13660do);
                a.append(mo15081import(it.next()));
            }
        }
        return a;
    }

    /* renamed from: public, reason: not valid java name */
    public Cnew m15084public(char c) {
        return mo15085return(String.valueOf(c));
    }

    /* renamed from: return, reason: not valid java name */
    public Cnew mo15085return(String str) {
        return new Cnew(this, str, null);
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    public final StringBuilder m15086this(StringBuilder sb, Object[] objArr) {
        return m15072case(sb, Arrays.asList(objArr));
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public final <A extends Appendable> A m15087try(A a, Object[] objArr) throws IOException {
        return (A) m15080if(a, Arrays.asList(objArr));
    }

    /* renamed from: while, reason: not valid java name */
    public Cfinal mo15088while() {
        return new Cif(this);
    }

    private Cfinal(String str) {
        this.f13660do = (String) af1.m205continue(str);
    }

    private Cfinal(Cfinal cfinal) {
        this.f13660do = cfinal.f13660do;
    }
}
