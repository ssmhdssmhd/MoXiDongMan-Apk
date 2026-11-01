package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.math.Cnew;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

@ki0
/* loaded from: classes2.dex */
final class n3<T> {

    /* renamed from: do, reason: not valid java name */
    private final int f14484do;

    /* renamed from: for, reason: not valid java name */
    private final T[] f14485for;

    /* renamed from: if, reason: not valid java name */
    private final Comparator<? super T> f14486if;

    /* renamed from: new, reason: not valid java name */
    private int f14487new;

    /* renamed from: try, reason: not valid java name */
    @b51
    private T f14488try;

    private n3(Comparator<? super T> comparator, int i) {
        this.f14486if = (Comparator) af1.m227strictfp(comparator, "comparator");
        this.f14484do = i;
        af1.m202catch(i >= 0, "k must be nonnegative, was %s", i);
        this.f14485for = (T[]) new Object[i * 2];
        this.f14487new = 0;
        this.f14488try = null;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m16091catch() {
        int i = (this.f14484do * 2) - 1;
        int iM17354throw = Cnew.m17354throw(i + 0, RoundingMode.CEILING) * 3;
        int iMax = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (iMax >= i) {
                break;
            }
            int iM16094goto = m16094goto(iMax, i, ((iMax + i) + 1) >>> 1);
            int i4 = this.f14484do;
            if (iM16094goto <= i4) {
                if (iM16094goto >= i4) {
                    break;
                }
                iMax = Math.max(iM16094goto, iMax + 1);
                i3 = iM16094goto;
            } else {
                i = iM16094goto - 1;
            }
            i2++;
            if (i2 >= iM17354throw) {
                Arrays.sort(this.f14485for, iMax, i, this.f14486if);
                break;
            }
        }
        this.f14487new = this.f14484do;
        this.f14488try = this.f14485for[i3];
        while (true) {
            i3++;
            if (i3 >= this.f14484do) {
                return;
            }
            if (this.f14486if.compare(this.f14485for[i3], this.f14488try) > 0) {
                this.f14488try = this.f14485for[i3];
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <T extends Comparable<? super T>> n3<T> m16092do(int i) {
        return m16095if(i, k2.natural());
    }

    /* renamed from: for, reason: not valid java name */
    public static <T extends Comparable<? super T>> n3<T> m16093for(int i) {
        return m16096new(i, k2.natural());
    }

    /* renamed from: goto, reason: not valid java name */
    private int m16094goto(int i, int i2, int i3) {
        T[] tArr = this.f14485for;
        T t = tArr[i3];
        tArr[i3] = tArr[i2];
        int i4 = i;
        while (i < i2) {
            if (this.f14486if.compare(this.f14485for[i], t) < 0) {
                m16097this(i4, i);
                i4++;
            }
            i++;
        }
        T[] tArr2 = this.f14485for;
        tArr2[i2] = tArr2[i4];
        tArr2[i4] = t;
        return i4;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> n3<T> m16095if(int i, Comparator<? super T> comparator) {
        return new n3<>(k2.from(comparator).reverse(), i);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> n3<T> m16096new(int i, Comparator<? super T> comparator) {
        return new n3<>(comparator, i);
    }

    /* renamed from: this, reason: not valid java name */
    private void m16097this(int i, int i2) {
        T[] tArr = this.f14485for;
        T t = tArr[i];
        tArr[i] = tArr[i2];
        tArr[i2] = t;
    }

    /* renamed from: break, reason: not valid java name */
    public List<T> m16098break() {
        Arrays.sort(this.f14485for, 0, this.f14487new, this.f14486if);
        int i = this.f14487new;
        int i2 = this.f14484do;
        if (i > i2) {
            T[] tArr = this.f14485for;
            Arrays.fill(tArr, i2, tArr.length, (Object) null);
            int i3 = this.f14484do;
            this.f14487new = i3;
            this.f14488try = this.f14485for[i3 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f14485for, this.f14487new)));
    }

    /* renamed from: case, reason: not valid java name */
    public void m16099case(Iterable<? extends T> iterable) {
        m16100else(iterable.iterator());
    }

    /* renamed from: else, reason: not valid java name */
    public void m16100else(Iterator<? extends T> it) {
        while (it.hasNext()) {
            m16101try(it.next());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m16101try(@b51 T t) {
        int i = this.f14484do;
        if (i == 0) {
            return;
        }
        int i2 = this.f14487new;
        if (i2 == 0) {
            this.f14485for[0] = t;
            this.f14488try = t;
            this.f14487new = 1;
            return;
        }
        if (i2 < i) {
            T[] tArr = this.f14485for;
            this.f14487new = i2 + 1;
            tArr[i2] = t;
            if (this.f14486if.compare(t, this.f14488try) > 0) {
                this.f14488try = t;
                return;
            }
            return;
        }
        if (this.f14486if.compare(t, this.f14488try) < 0) {
            T[] tArr2 = this.f14485for;
            int i3 = this.f14487new;
            int i4 = i3 + 1;
            this.f14487new = i4;
            tArr2[i3] = t;
            if (i4 == this.f14484do * 2) {
                m16091catch();
            }
        }
    }
}
