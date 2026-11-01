package org.antlr.v4.runtime.misc;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: org.antlr.v4.runtime.misc.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: for, reason: not valid java name */
    private static int[] f28564for = new int[0];

    /* renamed from: new, reason: not valid java name */
    private static final int f28565new = 4;

    /* renamed from: try, reason: not valid java name */
    private static final int f28566try = 2147483639;

    /* renamed from: do, reason: not valid java name */
    private int[] f28567do;

    /* renamed from: if, reason: not valid java name */
    private int f28568if;

    public Cdo() {
        this.f28567do = f28564for;
    }

    /* renamed from: break, reason: not valid java name */
    private void m32012break(int i) {
        if (i < 0 || i > f28566try) {
            throw new OutOfMemoryError();
        }
        int[] iArr = this.f28567do;
        int length = iArr.length == 0 ? 4 : iArr.length;
        while (length < i) {
            length *= 2;
            if (length < 0 || length > f28566try) {
                length = f28566try;
            }
        }
        this.f28567do = Arrays.copyOf(this.f28567do, length);
    }

    /* renamed from: else, reason: not valid java name */
    private int m32013else() {
        int iCharCount = 0;
        for (int i = 0; i < this.f28568if; i++) {
            iCharCount += Character.charCount(this.f28567do[i]);
        }
        return iCharCount;
    }

    /* renamed from: case, reason: not valid java name */
    public final int m32014case(int i, int i2, int i3) {
        int i4;
        if (i < 0 || i2 < 0 || i > (i4 = this.f28568if) || i2 > i4) {
            throw new IndexOutOfBoundsException();
        }
        if (i <= i2) {
            return Arrays.binarySearch(this.f28567do, i, i2, i3);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: catch, reason: not valid java name */
    public final int m32015catch(int i) {
        if (i < 0 || i >= this.f28568if) {
            throw new IndexOutOfBoundsException();
        }
        return this.f28567do[i];
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m32016class() {
        return this.f28568if == 0;
    }

    /* renamed from: const, reason: not valid java name */
    public final int m32017const(int i) {
        int iM32015catch = m32015catch(i);
        int[] iArr = this.f28567do;
        System.arraycopy(iArr, i + 1, iArr, i, (this.f28568if - i) - 1);
        int[] iArr2 = this.f28567do;
        int i2 = this.f28568if;
        iArr2[i2 - 1] = 0;
        this.f28568if = i2 - 1;
        return iM32015catch;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m32018do(int i) {
        int length = this.f28567do.length;
        int i2 = this.f28568if;
        if (length == i2) {
            m32012break(i2 + 1);
        }
        int[] iArr = this.f28567do;
        int i3 = this.f28568if;
        iArr[i3] = i;
        this.f28568if = i3 + 1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        if (this.f28568if != cdo.f28568if) {
            return false;
        }
        for (int i = 0; i < this.f28568if; i++) {
            if (this.f28567do[i] != cdo.f28567do[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m32019final(int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || i > (i3 = this.f28568if) || i2 > i3) {
            throw new IndexOutOfBoundsException();
        }
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int[] iArr = this.f28567do;
        System.arraycopy(iArr, i2, iArr, i, i3 - i2);
        int[] iArr2 = this.f28567do;
        int i4 = this.f28568if;
        int i5 = i2 - i;
        Arrays.fill(iArr2, i4 - i5, i4, 0);
        this.f28568if -= i5;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m32020for(Cdo cdo) {
        m32012break(this.f28568if + cdo.f28568if);
        System.arraycopy(cdo.f28567do, 0, this.f28567do, this.f28568if, cdo.f28568if);
        this.f28568if += cdo.f28568if;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m32021goto() {
        Arrays.fill(this.f28567do, 0, this.f28568if, 0);
        this.f28568if = 0;
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f28568if; i2++) {
            i = (i * 31) + this.f28567do[i2];
        }
        return i;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m32022if(Collection<Integer> collection) {
        m32012break(this.f28568if + collection.size());
        Iterator<Integer> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.f28567do[this.f28568if + i] = it.next().intValue();
            i++;
        }
        this.f28568if += collection.size();
    }

    /* renamed from: import, reason: not valid java name */
    public final int[] m32023import() {
        int i = this.f28568if;
        return i == 0 ? f28564for : Arrays.copyOf(this.f28567do, i);
    }

    /* renamed from: native, reason: not valid java name */
    public final char[] m32024native() {
        char[] cArrCopyOf = new char[this.f28568if];
        boolean z = false;
        int chars = 0;
        for (int i = 0; i < this.f28568if; i++) {
            int i2 = this.f28567do[i];
            if (!z && Character.isSupplementaryCodePoint(i2)) {
                cArrCopyOf = Arrays.copyOf(cArrCopyOf, m32013else());
                z = true;
            }
            chars += Character.toChars(i2, cArrCopyOf, chars);
        }
        return cArrCopyOf;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m32025new(int[] iArr) {
        m32012break(this.f28568if + iArr.length);
        System.arraycopy(iArr, 0, this.f28567do, this.f28568if, iArr.length);
        this.f28568if += iArr.length;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m32026public() {
        int[] iArr = this.f28567do;
        int length = iArr.length;
        int i = this.f28568if;
        if (length == i) {
            return;
        }
        this.f28567do = Arrays.copyOf(iArr, i);
    }

    /* renamed from: super, reason: not valid java name */
    public final int m32027super(int i, int i2) {
        if (i < 0 || i >= this.f28568if) {
            throw new IndexOutOfBoundsException();
        }
        int[] iArr = this.f28567do;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m32028this(int i) {
        for (int i2 = 0; i2 < this.f28568if; i2++) {
            if (this.f28567do[i2] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public final int m32029throw() {
        return this.f28568if;
    }

    public String toString() {
        return Arrays.toString(m32023import());
    }

    /* renamed from: try, reason: not valid java name */
    public final int m32030try(int i) {
        return Arrays.binarySearch(this.f28567do, 0, this.f28568if, i);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m32031while() {
        Arrays.sort(this.f28567do, 0, this.f28568if);
    }

    public Cdo(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i == 0) {
            this.f28567do = f28564for;
        } else {
            this.f28567do = new int[i];
        }
    }

    public Cdo(Cdo cdo) {
        this.f28567do = (int[]) cdo.f28567do.clone();
        this.f28568if = cdo.f28568if;
    }

    public Cdo(Collection<Integer> collection) {
        this(collection.size());
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            m32018do(it.next().intValue());
        }
    }
}
