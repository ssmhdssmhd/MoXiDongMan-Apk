package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Csuper;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import com.google.common.primitives.Cthis;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class s3<E> extends Cfinal<E> implements Serializable {

    @li0
    private static final long serialVersionUID = 1;

    /* renamed from: case, reason: not valid java name */
    private final transient Ccase<E> f14621case;

    /* renamed from: new, reason: not valid java name */
    private final transient Celse<Ccase<E>> f14622new;

    /* renamed from: try, reason: not valid java name */
    private final transient g0<E> f14623try;

    /* renamed from: com.google.common.collect.s3$case, reason: invalid class name */
    public static final class Ccase<E> {

        /* renamed from: case, reason: not valid java name */
        @b51
        private Ccase<E> f14624case;

        /* renamed from: do, reason: not valid java name */
        @b51
        private final E f14625do;

        /* renamed from: else, reason: not valid java name */
        @b51
        private Ccase<E> f14626else;

        /* renamed from: for, reason: not valid java name */
        private int f14627for;

        /* renamed from: goto, reason: not valid java name */
        @b51
        private Ccase<E> f14628goto;

        /* renamed from: if, reason: not valid java name */
        private int f14629if;

        /* renamed from: new, reason: not valid java name */
        private long f14630new;

        /* renamed from: this, reason: not valid java name */
        @b51
        private Ccase<E> f14631this;

        /* renamed from: try, reason: not valid java name */
        private int f14632try;

        public Ccase(@b51 E e, int i) {
            af1.m220new(i > 0);
            this.f14625do = e;
            this.f14629if = i;
            this.f14630new = i;
            this.f14627for = 1;
            this.f14632try = 1;
            this.f14624case = null;
            this.f14626else = null;
        }

        /* renamed from: abstract, reason: not valid java name */
        private void m16264abstract() {
            this.f14627for = s3.distinctElements(this.f14624case) + 1 + s3.distinctElements(this.f14626else);
            this.f14630new = this.f14629if + m16279instanceof(this.f14624case) + m16279instanceof(this.f14626else);
        }

        /* renamed from: extends, reason: not valid java name */
        private static int m16272extends(@b51 Ccase<?> ccase) {
            if (ccase == null) {
                return 0;
            }
            return ((Ccase) ccase).f14632try;
        }

        /* renamed from: finally, reason: not valid java name */
        private Ccase<E> m16274finally() {
            int iM16281native = m16281native();
            if (iM16281native == -2) {
                if (this.f14626else.m16281native() > 0) {
                    this.f14626else = this.f14626else.m16285protected();
                }
                return m16280interface();
            }
            if (iM16281native != 2) {
                m16284private();
                return this;
            }
            if (this.f14624case.m16281native() < 0) {
                this.f14624case = this.f14624case.m16280interface();
            }
            return m16285protected();
        }

        /* renamed from: import, reason: not valid java name */
        private Ccase<E> m16278import(E e, int i) {
            Ccase<E> ccase = new Ccase<>(e, i);
            this.f14626else = ccase;
            s3.m16258else(this, ccase, this.f14631this);
            this.f14632try = Math.max(2, this.f14632try);
            this.f14627for++;
            this.f14630new += i;
            return this;
        }

        /* renamed from: instanceof, reason: not valid java name */
        private static long m16279instanceof(@b51 Ccase<?> ccase) {
            if (ccase == null) {
                return 0L;
            }
            return ((Ccase) ccase).f14630new;
        }

        /* renamed from: interface, reason: not valid java name */
        private Ccase<E> m16280interface() {
            af1.t(this.f14626else != null);
            Ccase<E> ccase = this.f14626else;
            this.f14626else = ccase.f14624case;
            ccase.f14624case = this;
            ccase.f14630new = this.f14630new;
            ccase.f14627for = this.f14627for;
            m16283package();
            ccase.m16284private();
            return ccase;
        }

        /* renamed from: native, reason: not valid java name */
        private int m16281native() {
            return m16272extends(this.f14624case) - m16272extends(this.f14626else);
        }

        /* renamed from: package, reason: not valid java name */
        private void m16283package() {
            m16264abstract();
            m16284private();
        }

        /* renamed from: private, reason: not valid java name */
        private void m16284private() {
            this.f14632try = Math.max(m16272extends(this.f14624case), m16272extends(this.f14626else)) + 1;
        }

        /* renamed from: protected, reason: not valid java name */
        private Ccase<E> m16285protected() {
            af1.t(this.f14624case != null);
            Ccase<E> ccase = this.f14624case;
            this.f14624case = ccase.f14626else;
            ccase.f14626else = this;
            ccase.f14630new = this.f14630new;
            ccase.f14627for = this.f14627for;
            m16283package();
            ccase.m16284private();
            return ccase;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @b51
        /* renamed from: public, reason: not valid java name */
        public Ccase<E> m16286public(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                return ccase == null ? this : (Ccase) Csuper.m15183do(ccase.m16286public(comparator, e), this);
            }
            if (iCompare == 0) {
                return this;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                return null;
            }
            return ccase2.m16286public(comparator, e);
        }

        /* renamed from: static, reason: not valid java name */
        private Ccase<E> m16287static() {
            int i = this.f14629if;
            this.f14629if = 0;
            s3.m16256case(this.f14628goto, this.f14631this);
            Ccase<E> ccase = this.f14624case;
            if (ccase == null) {
                return this.f14626else;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                return ccase;
            }
            if (ccase.f14632try >= ccase2.f14632try) {
                Ccase<E> ccase3 = this.f14628goto;
                ccase3.f14624case = ccase.m16288strictfp(ccase3);
                ccase3.f14626else = this.f14626else;
                ccase3.f14627for = this.f14627for - 1;
                ccase3.f14630new = this.f14630new - i;
                return ccase3.m16274finally();
            }
            Ccase<E> ccase4 = this.f14631this;
            ccase4.f14626else = ccase2.m16293volatile(ccase4);
            ccase4.f14624case = this.f14624case;
            ccase4.f14627for = this.f14627for - 1;
            ccase4.f14630new = this.f14630new - i;
            return ccase4.m16274finally();
        }

        /* renamed from: strictfp, reason: not valid java name */
        private Ccase<E> m16288strictfp(Ccase<E> ccase) {
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                return this.f14624case;
            }
            this.f14626else = ccase2.m16288strictfp(ccase);
            this.f14627for--;
            this.f14630new -= ccase.f14629if;
            return m16274finally();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @b51
        /* renamed from: switch, reason: not valid java name */
        public Ccase<E> m16290switch(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare > 0) {
                Ccase<E> ccase = this.f14626else;
                return ccase == null ? this : (Ccase) Csuper.m15183do(ccase.m16290switch(comparator, e), this);
            }
            if (iCompare == 0) {
                return this;
            }
            Ccase<E> ccase2 = this.f14624case;
            if (ccase2 == null) {
                return null;
            }
            return ccase2.m16290switch(comparator, e);
        }

        /* renamed from: volatile, reason: not valid java name */
        private Ccase<E> m16293volatile(Ccase<E> ccase) {
            Ccase<E> ccase2 = this.f14624case;
            if (ccase2 == null) {
                return this.f14626else;
            }
            this.f14624case = ccase2.m16293volatile(ccase);
            this.f14627for--;
            this.f14630new -= ccase.f14629if;
            return m16274finally();
        }

        /* renamed from: while, reason: not valid java name */
        private Ccase<E> m16294while(E e, int i) {
            Ccase<E> ccase = new Ccase<>(e, i);
            this.f14624case = ccase;
            s3.m16258else(this.f14628goto, ccase, this);
            this.f14632try = Math.max(2, this.f14632try);
            this.f14627for++;
            this.f14630new += i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: continue, reason: not valid java name */
        public Ccase<E> m16295continue(Comparator<? super E> comparator, @b51 E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                if (ccase == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f14624case = ccase.m16295continue(comparator, e, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.f14627for--;
                        this.f14630new -= iArr[0];
                    } else {
                        this.f14630new -= i;
                    }
                }
                return iArr[0] == 0 ? this : m16274finally();
            }
            if (iCompare <= 0) {
                int i2 = this.f14629if;
                iArr[0] = i2;
                if (i >= i2) {
                    return m16287static();
                }
                this.f14629if = i2 - i;
                this.f14630new -= i;
                return this;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f14626else = ccase2.m16295continue(comparator, e, i, iArr);
            if (iArr[0] > 0) {
                if (i >= iArr[0]) {
                    this.f14627for--;
                    this.f14630new -= iArr[0];
                } else {
                    this.f14630new -= i;
                }
            }
            return m16274finally();
        }

        /* renamed from: default, reason: not valid java name */
        public E m16296default() {
            return this.f14625do;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: implements, reason: not valid java name */
        public Ccase<E> m16297implements(Comparator<? super E> comparator, @b51 E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                if (ccase == null) {
                    iArr[0] = 0;
                    return i > 0 ? m16294while(e, i) : this;
                }
                this.f14624case = ccase.m16297implements(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.f14627for--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.f14627for++;
                }
                this.f14630new += i - iArr[0];
                return m16274finally();
            }
            if (iCompare <= 0) {
                iArr[0] = this.f14629if;
                if (i == 0) {
                    return m16287static();
                }
                this.f14630new += i - r3;
                this.f14629if = i;
                return this;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                iArr[0] = 0;
                return i > 0 ? m16278import(e, i) : this;
            }
            this.f14626else = ccase2.m16297implements(comparator, e, i, iArr);
            if (i == 0 && iArr[0] != 0) {
                this.f14627for--;
            } else if (i > 0 && iArr[0] == 0) {
                this.f14627for++;
            }
            this.f14630new += i - iArr[0];
            return m16274finally();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: return, reason: not valid java name */
        public int m16298return(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                if (ccase == null) {
                    return 0;
                }
                return ccase.m16298return(comparator, e);
            }
            if (iCompare <= 0) {
                return this.f14629if;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                return 0;
            }
            return ccase2.m16298return(comparator, e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: throw, reason: not valid java name */
        public Ccase<E> m16299throw(Comparator<? super E> comparator, @b51 E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                if (ccase == null) {
                    iArr[0] = 0;
                    return m16294while(e, i);
                }
                int i2 = ccase.f14632try;
                Ccase<E> ccaseM16299throw = ccase.m16299throw(comparator, e, i, iArr);
                this.f14624case = ccaseM16299throw;
                if (iArr[0] == 0) {
                    this.f14627for++;
                }
                this.f14630new += i;
                return ccaseM16299throw.f14632try == i2 ? this : m16274finally();
            }
            if (iCompare <= 0) {
                int i3 = this.f14629if;
                iArr[0] = i3;
                long j = i;
                af1.m220new(((long) i3) + j <= 2147483647L);
                this.f14629if += i;
                this.f14630new += j;
                return this;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                iArr[0] = 0;
                return m16278import(e, i);
            }
            int i4 = ccase2.f14632try;
            Ccase<E> ccaseM16299throw2 = ccase2.m16299throw(comparator, e, i, iArr);
            this.f14626else = ccaseM16299throw2;
            if (iArr[0] == 0) {
                this.f14627for++;
            }
            this.f14630new += i;
            return ccaseM16299throw2.f14632try == i4 ? this : m16274finally();
        }

        /* renamed from: throws, reason: not valid java name */
        public int m16300throws() {
            return this.f14629if;
        }

        public String toString() {
            return c2.m15645catch(m16296default(), m16300throws()).toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: transient, reason: not valid java name */
        public Ccase<E> m16301transient(Comparator<? super E> comparator, @b51 E e, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(e, this.f14625do);
            if (iCompare < 0) {
                Ccase<E> ccase = this.f14624case;
                if (ccase == null) {
                    iArr[0] = 0;
                    return (i != 0 || i2 <= 0) ? this : m16294while(e, i2);
                }
                this.f14624case = ccase.m16301transient(comparator, e, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.f14627for--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.f14627for++;
                    }
                    this.f14630new += i2 - iArr[0];
                }
                return m16274finally();
            }
            if (iCompare <= 0) {
                int i3 = this.f14629if;
                iArr[0] = i3;
                if (i == i3) {
                    if (i2 == 0) {
                        return m16287static();
                    }
                    this.f14630new += i2 - i3;
                    this.f14629if = i2;
                }
                return this;
            }
            Ccase<E> ccase2 = this.f14626else;
            if (ccase2 == null) {
                iArr[0] = 0;
                return (i != 0 || i2 <= 0) ? this : m16278import(e, i2);
            }
            this.f14626else = ccase2.m16301transient(comparator, e, i, i2, iArr);
            if (iArr[0] == i) {
                if (i2 == 0 && iArr[0] != 0) {
                    this.f14627for--;
                } else if (i2 > 0 && iArr[0] == 0) {
                    this.f14627for++;
                }
                this.f14630new += i2 - iArr[0];
            }
            return m16274finally();
        }
    }

    /* renamed from: com.google.common.collect.s3$do, reason: invalid class name */
    public class Cdo extends c2.Ccase<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Ccase f14633do;

        public Cdo(Ccase ccase) {
            this.f14633do = ccase;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            int iM16300throws = this.f14633do.m16300throws();
            return iM16300throws == 0 ? s3.this.count(getElement()) : iM16300throws;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public E getElement() {
            return (E) this.f14633do.m16296default();
        }
    }

    /* renamed from: com.google.common.collect.s3$else, reason: invalid class name */
    public static final class Celse<T> {

        /* renamed from: do, reason: not valid java name */
        @b51
        private T f14635do;

        private Celse() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m16302do(@b51 T t, T t2) {
            if (this.f14635do != t) {
                throw new ConcurrentModificationException();
            }
            this.f14635do = t2;
        }

        @b51
        /* renamed from: for, reason: not valid java name */
        public T m16303for() {
            return this.f14635do;
        }

        /* renamed from: if, reason: not valid java name */
        public void m16304if() {
            this.f14635do = null;
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.collect.s3$for, reason: invalid class name */
    public class Cfor implements Iterator<Multiset.Entry<E>> {

        /* renamed from: do, reason: not valid java name */
        public Ccase<E> f14636do;

        /* renamed from: if, reason: not valid java name */
        public Multiset.Entry<E> f14638if = null;

        public Cfor() {
            this.f14636do = s3.this.m16263try();
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Multiset.Entry<E> entryM16260goto = s3.this.m16260goto(this.f14636do);
            this.f14638if = entryM16260goto;
            if (((Ccase) this.f14636do).f14628goto == s3.this.f14621case) {
                this.f14636do = null;
            } else {
                this.f14636do = ((Ccase) this.f14636do).f14628goto;
            }
            return entryM16260goto;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14636do == null) {
                return false;
            }
            if (!s3.this.f14623try.tooLow(this.f14636do.m16296default())) {
                return true;
            }
            this.f14636do = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14638if != null);
            s3.this.setCount(this.f14638if.getElement(), 0);
            this.f14638if = null;
        }
    }

    /* renamed from: com.google.common.collect.s3$if, reason: invalid class name */
    public class Cif implements Iterator<Multiset.Entry<E>> {

        /* renamed from: do, reason: not valid java name */
        public Ccase<E> f14639do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public Multiset.Entry<E> f14641if;

        public Cif() {
            this.f14639do = s3.this.m16262new();
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Multiset.Entry<E> entryM16260goto = s3.this.m16260goto(this.f14639do);
            this.f14641if = entryM16260goto;
            if (((Ccase) this.f14639do).f14631this == s3.this.f14621case) {
                this.f14639do = null;
            } else {
                this.f14639do = ((Ccase) this.f14639do).f14631this;
            }
            return entryM16260goto;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14639do == null) {
                return false;
            }
            if (!s3.this.f14623try.tooHigh(this.f14639do.m16296default())) {
                return true;
            }
            this.f14639do = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14641if != null);
            s3.this.setCount(this.f14641if.getElement(), 0);
            this.f14641if = null;
        }
    }

    /* renamed from: com.google.common.collect.s3$new, reason: invalid class name */
    public static /* synthetic */ class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f14642do;

        static {
            int[] iArr = new int[Cstatic.values().length];
            f14642do = iArr;
            try {
                iArr[Cstatic.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14642do[Cstatic.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.collect.s3$try, reason: invalid class name */
    public static abstract class Ctry {
        public static final Ctry DISTINCT;
        public static final Ctry SIZE;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Ctry[] f14643do;

        /* renamed from: com.google.common.collect.s3$try$do, reason: invalid class name */
        public enum Cdo extends Ctry {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.s3.Ctry
            public int nodeAggregate(Ccase<?> ccase) {
                return ((Ccase) ccase).f14629if;
            }

            @Override // com.google.common.collect.s3.Ctry
            public long treeAggregate(@b51 Ccase<?> ccase) {
                if (ccase == null) {
                    return 0L;
                }
                return ((Ccase) ccase).f14630new;
            }
        }

        /* renamed from: com.google.common.collect.s3$try$if, reason: invalid class name */
        public enum Cif extends Ctry {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.s3.Ctry
            public int nodeAggregate(Ccase<?> ccase) {
                return 1;
            }

            @Override // com.google.common.collect.s3.Ctry
            public long treeAggregate(@b51 Ccase<?> ccase) {
                if (ccase == null) {
                    return 0L;
                }
                return ((Ccase) ccase).f14627for;
            }
        }

        static {
            Cdo cdo = new Cdo("SIZE", 0);
            SIZE = cdo;
            Cif cif = new Cif("DISTINCT", 1);
            DISTINCT = cif;
            f14643do = new Ctry[]{cdo, cif};
        }

        private Ctry(String str, int i) {
        }

        public static Ctry valueOf(String str) {
            return (Ctry) Enum.valueOf(Ctry.class, str);
        }

        public static Ctry[] values() {
            return (Ctry[]) f14643do.clone();
        }

        public abstract int nodeAggregate(Ccase<?> ccase);

        public abstract long treeAggregate(@b51 Ccase<?> ccase);

        public /* synthetic */ Ctry(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    public s3(Celse<Ccase<E>> celse, g0<E> g0Var, Ccase<E> ccase) {
        super(g0Var.comparator());
        this.f14622new = celse;
        this.f14623try = g0Var;
        this.f14621case = ccase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static <T> void m16256case(Ccase<T> ccase, Ccase<T> ccase2) {
        ((Ccase) ccase).f14631this = ccase2;
        ((Ccase) ccase2).f14628goto = ccase;
    }

    public static <E extends Comparable> s3<E> create() {
        return new s3<>(k2.natural());
    }

    /* renamed from: do, reason: not valid java name */
    private long m16257do(Ctry ctry, @b51 Ccase<E> ccase) {
        long jTreeAggregate;
        long jM16257do;
        if (ccase == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.f14623try.getUpperEndpoint(), ((Ccase) ccase).f14625do);
        if (iCompare > 0) {
            return m16257do(ctry, ((Ccase) ccase).f14626else);
        }
        if (iCompare == 0) {
            int i = Cnew.f14642do[this.f14623try.getUpperBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ctry.treeAggregate(((Ccase) ccase).f14626else);
                }
                throw new AssertionError();
            }
            jTreeAggregate = ctry.nodeAggregate(ccase);
            jM16257do = ctry.treeAggregate(((Ccase) ccase).f14626else);
        } else {
            jTreeAggregate = ctry.treeAggregate(((Ccase) ccase).f14626else) + ctry.nodeAggregate(ccase);
            jM16257do = m16257do(ctry, ((Ccase) ccase).f14624case);
        }
        return jTreeAggregate + jM16257do;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static <T> void m16258else(Ccase<T> ccase, Ccase<T> ccase2, Ccase<T> ccase3) {
        m16256case(ccase, ccase2);
        m16256case(ccase2, ccase3);
    }

    /* renamed from: for, reason: not valid java name */
    private long m16259for(Ctry ctry) {
        Ccase<E> ccaseM16303for = this.f14622new.m16303for();
        long jTreeAggregate = ctry.treeAggregate(ccaseM16303for);
        if (this.f14623try.hasLowerBound()) {
            jTreeAggregate -= m16261if(ctry, ccaseM16303for);
        }
        return this.f14623try.hasUpperBound() ? jTreeAggregate - m16257do(ctry, ccaseM16303for) : jTreeAggregate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public Multiset.Entry<E> m16260goto(Ccase<E> ccase) {
        return new Cdo(ccase);
    }

    /* renamed from: if, reason: not valid java name */
    private long m16261if(Ctry ctry, @b51 Ccase<E> ccase) {
        long jTreeAggregate;
        long jM16261if;
        if (ccase == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.f14623try.getLowerEndpoint(), ((Ccase) ccase).f14625do);
        if (iCompare < 0) {
            return m16261if(ctry, ((Ccase) ccase).f14624case);
        }
        if (iCompare == 0) {
            int i = Cnew.f14642do[this.f14623try.getLowerBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return ctry.treeAggregate(((Ccase) ccase).f14624case);
                }
                throw new AssertionError();
            }
            jTreeAggregate = ctry.nodeAggregate(ccase);
            jM16261if = ctry.treeAggregate(((Ccase) ccase).f14624case);
        } else {
            jTreeAggregate = ctry.treeAggregate(((Ccase) ccase).f14624case) + ctry.nodeAggregate(ccase);
            jM16261if = m16261if(ctry, ((Ccase) ccase).f14626else);
        }
        return jTreeAggregate + jM16261if;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    /* renamed from: new, reason: not valid java name */
    public Ccase<E> m16262new() {
        Ccase<E> ccaseM16286public;
        if (this.f14622new.m16303for() == null) {
            return null;
        }
        if (this.f14623try.hasLowerBound()) {
            E lowerEndpoint = this.f14623try.getLowerEndpoint();
            ccaseM16286public = this.f14622new.m16303for().m16286public(comparator(), lowerEndpoint);
            if (ccaseM16286public == null) {
                return null;
            }
            if (this.f14623try.getLowerBoundType() == Cstatic.OPEN && comparator().compare(lowerEndpoint, ccaseM16286public.m16296default()) == 0) {
                ccaseM16286public = ((Ccase) ccaseM16286public).f14631this;
            }
        } else {
            ccaseM16286public = ((Ccase) this.f14621case).f14631this;
        }
        if (ccaseM16286public == this.f14621case || !this.f14623try.contains(ccaseM16286public.m16296default())) {
            return null;
        }
        return ccaseM16286public;
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, ClassNotFoundException, IOException, IllegalArgumentException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        b3.m15607do(Cfinal.class, "comparator").m15616if(this, comparator);
        b3.m15607do(s3.class, "range").m15616if(this, g0.all(comparator));
        b3.m15607do(s3.class, "rootReference").m15616if(this, new Celse(null));
        Ccase ccase = new Ccase(null, 1);
        b3.m15607do(s3.class, "header").m15616if(this, ccase);
        m16256case(ccase, ccase);
        b3.m15605case(this, objectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    /* renamed from: try, reason: not valid java name */
    public Ccase<E> m16263try() {
        Ccase<E> ccaseM16290switch;
        if (this.f14622new.m16303for() == null) {
            return null;
        }
        if (this.f14623try.hasUpperBound()) {
            E upperEndpoint = this.f14623try.getUpperEndpoint();
            ccaseM16290switch = this.f14622new.m16303for().m16290switch(comparator(), upperEndpoint);
            if (ccaseM16290switch == null) {
                return null;
            }
            if (this.f14623try.getUpperBoundType() == Cstatic.OPEN && comparator().compare(upperEndpoint, ccaseM16290switch.m16296default()) == 0) {
                ccaseM16290switch = ((Ccase) ccaseM16290switch).f14628goto;
            }
        } else {
            ccaseM16290switch = ((Ccase) this.f14621case).f14628goto;
        }
        if (ccaseM16290switch == this.f14621case || !this.f14623try.contains(ccaseM16290switch.m16296default())) {
            return null;
        }
        return ccaseM16290switch;
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        b3.m15606catch(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int add(@b51 E e, int i) {
        Cdefault.m15742if(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        af1.m220new(this.f14623try.contains(e));
        Ccase<E> ccaseM16303for = this.f14622new.m16303for();
        if (ccaseM16303for != null) {
            int[] iArr = new int[1];
            this.f14622new.m16302do(ccaseM16303for, ccaseM16303for.m16299throw(comparator(), e, i, iArr));
            return iArr[0];
        }
        comparator().compare(e, e);
        Ccase<E> ccase = new Ccase<>(e, i);
        Ccase<E> ccase2 = this.f14621case;
        m16258else(ccase2, ccase, ccase2);
        this.f14622new.m16302do(ccaseM16303for, ccase);
        return 0;
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.f14623try.hasLowerBound() || this.f14623try.hasUpperBound()) {
            s1.m16228goto(entryIterator());
            return;
        }
        Ccase<E> ccase = ((Ccase) this.f14621case).f14631this;
        while (true) {
            Ccase<E> ccase2 = this.f14621case;
            if (ccase == ccase2) {
                m16256case(ccase2, ccase2);
                this.f14622new.m16304if();
                return;
            }
            Ccase<E> ccase3 = ((Ccase) ccase).f14631this;
            ((Ccase) ccase).f14629if = 0;
            ((Ccase) ccase).f14624case = null;
            ((Ccase) ccase).f14626else = null;
            ((Ccase) ccase).f14628goto = null;
            ((Ccase) ccase).f14631this = null;
            ccase = ccase3;
        }
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@b51 Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        try {
            Ccase<E> ccaseM16303for = this.f14622new.m16303for();
            if (this.f14623try.contains(obj) && ccaseM16303for != null) {
                return ccaseM16303for.m16298return(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.Cfinal
    public Iterator<Multiset.Entry<E>> descendingEntryIterator() {
        return new Cfor();
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.Cthis
    public int distinctElements() {
        return Cthis.m17704throws(m16259for(Ctry.DISTINCT));
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<E> elementIterator() {
        return c2.m15655goto(entryIterator());
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@b51 E e, Cstatic cstatic) {
        return new s3(this.f14622new, this.f14623try.intersect(g0.upTo(comparator(), e, cstatic)), this.f14621case);
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return c2.m15652final(this);
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int remove(@b51 Object obj, int i) {
        Cdefault.m15742if(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        Ccase<E> ccaseM16303for = this.f14622new.m16303for();
        int[] iArr = new int[1];
        try {
            if (this.f14623try.contains(obj) && ccaseM16303for != null) {
                this.f14622new.m16302do(ccaseM16303for, ccaseM16303for.m16295continue(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int setCount(@b51 E e, int i) {
        Cdefault.m15742if(i, "count");
        if (!this.f14623try.contains(e)) {
            af1.m220new(i == 0);
            return 0;
        }
        Ccase<E> ccaseM16303for = this.f14622new.m16303for();
        if (ccaseM16303for == null) {
            if (i > 0) {
                add(e, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.f14622new.m16302do(ccaseM16303for, ccaseM16303for.m16297implements(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Cthis.m17704throws(m16259for(Ctry.SIZE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cfinal, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(@b51 Object obj, Cstatic cstatic, @b51 Object obj2, Cstatic cstatic2) {
        return super.subMultiset(obj, cstatic, obj2, cstatic2);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@b51 E e, Cstatic cstatic) {
        return new s3(this.f14622new, this.f14623try.intersect(g0.downTo(comparator(), e, cstatic)), this.f14621case);
    }

    public static <E> s3<E> create(@b51 Comparator<? super E> comparator) {
        return comparator == null ? new s3<>(k2.natural()) : new s3<>(comparator);
    }

    public static int distinctElements(@b51 Ccase<?> ccase) {
        if (ccase == null) {
            return 0;
        }
        return ((Ccase) ccase).f14627for;
    }

    public static <E extends Comparable> s3<E> create(Iterable<? extends E> iterable) {
        s3<E> s3VarCreate = create();
        r1.m16182do(s3VarCreate, iterable);
        return s3VarCreate;
    }

    public s3(Comparator<? super E> comparator) {
        super(comparator);
        this.f14623try = g0.all(comparator);
        Ccase<E> ccase = new Ccase<>(null, 1);
        this.f14621case = ccase;
        m16256case(ccase, ccase);
        this.f14622new = new Celse<>(null);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public boolean setCount(@b51 E e, int i, int i2) {
        Cdefault.m15742if(i2, "newCount");
        Cdefault.m15742if(i, "oldCount");
        af1.m220new(this.f14623try.contains(e));
        Ccase<E> ccaseM16303for = this.f14622new.m16303for();
        if (ccaseM16303for != null) {
            int[] iArr = new int[1];
            this.f14622new.m16302do(ccaseM16303for, ccaseM16303for.m16301transient(comparator(), e, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i != 0) {
            return false;
        }
        if (i2 > 0) {
            add(e, i2);
        }
        return true;
    }
}
