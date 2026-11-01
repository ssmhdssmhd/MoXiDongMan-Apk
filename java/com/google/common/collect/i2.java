package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.base.Cthrow;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import java.util.Arrays;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
class i2<K> {

    /* renamed from: break, reason: not valid java name */
    public static final float f14325break = 1.0f;

    /* renamed from: catch, reason: not valid java name */
    private static final long f14326catch = 4294967295L;

    /* renamed from: class, reason: not valid java name */
    private static final long f14327class = -4294967296L;

    /* renamed from: const, reason: not valid java name */
    public static final int f14328const = 3;

    /* renamed from: final, reason: not valid java name */
    public static final int f14329final = -1;

    /* renamed from: this, reason: not valid java name */
    private static final int f14330this = 1073741824;

    /* renamed from: case, reason: not valid java name */
    @af2
    public transient long[] f14331case;

    /* renamed from: do, reason: not valid java name */
    public transient Object[] f14332do;

    /* renamed from: else, reason: not valid java name */
    private transient float f14333else;

    /* renamed from: for, reason: not valid java name */
    public transient int f14334for;

    /* renamed from: goto, reason: not valid java name */
    private transient int f14335goto;

    /* renamed from: if, reason: not valid java name */
    public transient int[] f14336if;

    /* renamed from: new, reason: not valid java name */
    public transient int f14337new;

    /* renamed from: try, reason: not valid java name */
    private transient int[] f14338try;

    /* renamed from: com.google.common.collect.i2$do, reason: invalid class name */
    public class Cdo extends c2.Ccase<K> {

        /* renamed from: do, reason: not valid java name */
        @b51
        public final K f14339do;

        /* renamed from: if, reason: not valid java name */
        public int f14341if;

        public Cdo(int i) {
            this.f14339do = (K) i2.this.f14332do[i];
            this.f14341if = i;
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public int m15903do(int i) {
            m15904if();
            int i2 = this.f14341if;
            if (i2 == -1) {
                i2.this.m15897static(this.f14339do, i);
                return 0;
            }
            int[] iArr = i2.this.f14336if;
            int i3 = iArr[i2];
            iArr[i2] = i;
            return i3;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            m15904if();
            int i = this.f14341if;
            if (i == -1) {
                return 0;
            }
            return i2.this.f14336if[i];
        }

        @Override // com.google.common.collect.Multiset.Entry
        public K getElement() {
            return this.f14339do;
        }

        /* renamed from: if, reason: not valid java name */
        public void m15904if() {
            int i = this.f14341if;
            if (i == -1 || i >= i2.this.m15883abstract() || !Cthrow.m15205do(this.f14339do, i2.this.f14332do[this.f14341if])) {
                this.f14341if = i2.this.m15891final(this.f14339do);
            }
        }
    }

    public i2() {
        mo15898super(3, 1.0f);
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m15872catch(long j) {
        return (int) j;
    }

    /* renamed from: const, reason: not valid java name */
    private int m15873const() {
        return this.f14338try.length - 1;
    }

    /* renamed from: continue, reason: not valid java name */
    private static long m15874continue(long j, int i) {
        return (j & f14327class) | (i & 4294967295L);
    }

    /* renamed from: finally, reason: not valid java name */
    private void m15875finally(int i) {
        int length = this.f14331case.length;
        if (i > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                mo15890extends(iMax);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <K> i2<K> m15876for() {
        return new i2<>();
    }

    /* renamed from: import, reason: not valid java name */
    private static long[] m15877import(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    /* renamed from: native, reason: not valid java name */
    private static int[] m15878native(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static <K> i2<K> m15879new(int i) {
        return new i2<>(i);
    }

    /* renamed from: package, reason: not valid java name */
    private void m15880package(int i) {
        if (this.f14338try.length >= 1073741824) {
            this.f14335goto = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.f14333else)) + 1;
        int[] iArrM15878native = m15878native(i);
        long[] jArr = this.f14331case;
        int length = iArrM15878native.length - 1;
        for (int i3 = 0; i3 < this.f14334for; i3++) {
            int iM15881this = m15881this(jArr[i3]);
            int i4 = iM15881this & length;
            int i5 = iArrM15878native[i4];
            iArrM15878native[i4] = i3;
            jArr[i3] = (iM15881this << 32) | (4294967295L & i5);
        }
        this.f14335goto = i2;
        this.f14338try = iArrM15878native;
    }

    /* renamed from: this, reason: not valid java name */
    private static int m15881this(long j) {
        return (int) (j >>> 32);
    }

    /* renamed from: throws, reason: not valid java name */
    private int m15882throws(@b51 Object obj, int i) {
        int iM15873const = m15873const() & i;
        int i2 = this.f14338try[iM15873const];
        if (i2 == -1) {
            return 0;
        }
        int i3 = -1;
        while (true) {
            if (m15881this(this.f14331case[i2]) == i && Cthrow.m15205do(obj, this.f14332do[i2])) {
                int i4 = this.f14336if[i2];
                if (i3 == -1) {
                    this.f14338try[iM15873const] = m15872catch(this.f14331case[i2]);
                } else {
                    long[] jArr = this.f14331case;
                    jArr[i3] = m15874continue(jArr[i3], m15872catch(jArr[i2]));
                }
                mo15902while(i2);
                this.f14334for--;
                this.f14337new++;
                return i4;
            }
            int iM15872catch = m15872catch(this.f14331case[i2]);
            if (iM15872catch == -1) {
                return 0;
            }
            i3 = i2;
            i2 = iM15872catch;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public int m15883abstract() {
        return this.f14334for;
    }

    /* renamed from: break, reason: not valid java name */
    public K m15884break(int i) {
        af1.m222private(i, this.f14334for);
        return (K) this.f14332do[i];
    }

    /* renamed from: case, reason: not valid java name */
    public int mo15885case() {
        return this.f14334for == 0 ? -1 : 0;
    }

    /* renamed from: class, reason: not valid java name */
    public int m15886class(int i) {
        af1.m222private(i, this.f14334for);
        return this.f14336if[i];
    }

    @lf
    /* renamed from: default, reason: not valid java name */
    public int m15887default(int i) {
        return m15882throws(this.f14332do[i], m15881this(this.f14331case[i]));
    }

    /* renamed from: do, reason: not valid java name */
    public void mo15888do() {
        this.f14337new++;
        Arrays.fill(this.f14332do, 0, this.f14334for, (Object) null);
        Arrays.fill(this.f14336if, 0, this.f14334for, 0);
        Arrays.fill(this.f14338try, -1);
        Arrays.fill(this.f14331case, -1L);
        this.f14334for = 0;
    }

    /* renamed from: else, reason: not valid java name */
    public int m15889else(@b51 Object obj) {
        int iM15891final = m15891final(obj);
        if (iM15891final == -1) {
            return 0;
        }
        return this.f14336if[iM15891final];
    }

    /* renamed from: extends, reason: not valid java name */
    public void mo15890extends(int i) {
        this.f14332do = Arrays.copyOf(this.f14332do, i);
        this.f14336if = Arrays.copyOf(this.f14336if, i);
        long[] jArr = this.f14331case;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.f14331case = jArrCopyOf;
    }

    /* renamed from: final, reason: not valid java name */
    public int m15891final(@b51 Object obj) {
        int iM16086new = n0.m16086new(obj);
        int iM15872catch = this.f14338try[m15873const() & iM16086new];
        while (iM15872catch != -1) {
            long j = this.f14331case[iM15872catch];
            if (m15881this(j) == iM16086new && Cthrow.m15205do(obj, this.f14332do[iM15872catch])) {
                return iM15872catch;
            }
            iM15872catch = m15872catch(j);
        }
        return -1;
    }

    /* renamed from: goto, reason: not valid java name */
    public Multiset.Entry<K> m15892goto(int i) {
        af1.m222private(i, this.f14334for);
        return new Cdo(i);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m15893if(@b51 Object obj) {
        return m15891final(obj) != -1;
    }

    /* renamed from: private, reason: not valid java name */
    public void m15894private(int i, int i2) {
        af1.m222private(i, this.f14334for);
        this.f14336if[i] = i2;
    }

    /* renamed from: public, reason: not valid java name */
    public int mo15895public(int i) {
        int i2 = i + 1;
        if (i2 < this.f14334for) {
            return i2;
        }
        return -1;
    }

    /* renamed from: return, reason: not valid java name */
    public int mo15896return(int i, int i2) {
        return i - 1;
    }

    @lf
    /* renamed from: static, reason: not valid java name */
    public int m15897static(@b51 K k, int i) {
        Cdefault.m15743new(i, "count");
        long[] jArr = this.f14331case;
        Object[] objArr = this.f14332do;
        int[] iArr = this.f14336if;
        int iM16086new = n0.m16086new(k);
        int iM15873const = m15873const() & iM16086new;
        int i2 = this.f14334for;
        int[] iArr2 = this.f14338try;
        int i3 = iArr2[iM15873const];
        if (i3 == -1) {
            iArr2[iM15873const] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (m15881this(j) == iM16086new && Cthrow.m15205do(k, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return i4;
                }
                int iM15872catch = m15872catch(j);
                if (iM15872catch == -1) {
                    jArr[i3] = m15874continue(j, i2);
                    break;
                }
                i3 = iM15872catch;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i5 = i2 + 1;
        m15875finally(i5);
        mo15900throw(i2, k, i, iM16086new);
        this.f14334for = i5;
        if (i2 >= this.f14335goto) {
            m15880package(this.f14338try.length * 2);
        }
        this.f14337new++;
        return 0;
    }

    /* renamed from: super, reason: not valid java name */
    public void mo15898super(int i, float f) {
        af1.m235try(i >= 0, "Initial capacity must be non-negative");
        af1.m235try(f > 0.0f, "Illegal load factor");
        int iM16083do = n0.m16083do(i, f);
        this.f14338try = m15878native(iM16083do);
        this.f14333else = f;
        this.f14332do = new Object[i];
        this.f14336if = new int[i];
        this.f14331case = m15877import(i);
        this.f14335goto = Math.max(1, (int) (iM16083do * f));
    }

    @lf
    /* renamed from: switch, reason: not valid java name */
    public int m15899switch(@b51 Object obj) {
        return m15882throws(obj, n0.m16086new(obj));
    }

    /* renamed from: throw, reason: not valid java name */
    public void mo15900throw(int i, @b51 K k, int i2, int i3) {
        this.f14331case[i] = (i3 << 32) | 4294967295L;
        this.f14332do[i] = k;
        this.f14336if[i] = i2;
    }

    /* renamed from: try, reason: not valid java name */
    public void m15901try(int i) {
        if (i > this.f14331case.length) {
            mo15890extends(i);
        }
        if (i >= this.f14335goto) {
            m15880package(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void mo15902while(int i) {
        int iM15883abstract = m15883abstract() - 1;
        if (i >= iM15883abstract) {
            this.f14332do[i] = null;
            this.f14336if[i] = 0;
            this.f14331case[i] = -1;
            return;
        }
        Object[] objArr = this.f14332do;
        objArr[i] = objArr[iM15883abstract];
        int[] iArr = this.f14336if;
        iArr[i] = iArr[iM15883abstract];
        objArr[iM15883abstract] = null;
        iArr[iM15883abstract] = 0;
        long[] jArr = this.f14331case;
        long j = jArr[iM15883abstract];
        jArr[i] = j;
        jArr[iM15883abstract] = -1;
        int iM15881this = m15881this(j) & m15873const();
        int[] iArr2 = this.f14338try;
        int i2 = iArr2[iM15881this];
        if (i2 == iM15883abstract) {
            iArr2[iM15881this] = i;
            return;
        }
        while (true) {
            long j2 = this.f14331case[i2];
            int iM15872catch = m15872catch(j2);
            if (iM15872catch == iM15883abstract) {
                this.f14331case[i2] = m15874continue(j2, i);
                return;
            }
            i2 = iM15872catch;
        }
    }

    public i2(i2<? extends K> i2Var) {
        mo15898super(i2Var.m15883abstract(), 1.0f);
        int iMo15885case = i2Var.mo15885case();
        while (iMo15885case != -1) {
            m15897static(i2Var.m15884break(iMo15885case), i2Var.m15886class(iMo15885case));
            iMo15885case = i2Var.mo15895public(iMo15885case);
        }
    }

    public i2(int i) {
        this(i, 1.0f);
    }

    public i2(int i, float f) {
        mo15898super(i, f);
    }
}
