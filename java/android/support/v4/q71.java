package android.support.v4;

import android.R;
import java.util.Arrays;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class q71<T> {

    /* renamed from: case, reason: not valid java name */
    private static final int f5282case = -1640531527;

    /* renamed from: do, reason: not valid java name */
    public final float f5283do;

    /* renamed from: for, reason: not valid java name */
    public int f5284for;

    /* renamed from: if, reason: not valid java name */
    public int f5285if;

    /* renamed from: new, reason: not valid java name */
    public int f5286new;

    /* renamed from: try, reason: not valid java name */
    public T[] f5287try;

    public q71() {
        this(16, 0.75f);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6431new(int i) {
        int i2 = i * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m6432case(T t) {
        T t2;
        T[] tArr = this.f5287try;
        int i = this.f5285if;
        int iM6431new = m6431new(t.hashCode()) & i;
        T t3 = tArr[iM6431new];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return m6434else(iM6431new, tArr, i);
        }
        do {
            iM6431new = (iM6431new + 1) & i;
            t2 = tArr[iM6431new];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return m6434else(iM6431new, tArr, i);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m6433do(T t) {
        T t2;
        T[] tArr = this.f5287try;
        int i = this.f5285if;
        int iM6431new = m6431new(t.hashCode()) & i;
        T t3 = tArr[iM6431new];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                iM6431new = (iM6431new + 1) & i;
                t2 = tArr[iM6431new];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[iM6431new] = t;
        int i2 = this.f5284for + 1;
        this.f5284for = i2;
        if (i2 >= this.f5286new) {
            m6439try();
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m6434else(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.f5284for--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int iM6431new = m6431new(t.hashCode()) & i2;
                if (i <= i3) {
                    if (i >= iM6431new || iM6431new > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < iM6431new || iM6431new <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m6435for() {
        return this.f5284for == 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m6436goto() {
        this.f5284for = 0;
        this.f5287try = (T[]) new Object[0];
    }

    /* renamed from: if, reason: not valid java name */
    public void m6437if(Action1<? super T> action1) {
        if (this.f5284for == 0) {
            return;
        }
        T[] tArr = this.f5287try;
        for (R.attr attrVar : tArr) {
            if (attrVar != null) {
                action1.call(attrVar);
            }
        }
        Arrays.fill(tArr, (Object) null);
        this.f5284for = 0;
    }

    /* renamed from: this, reason: not valid java name */
    public T[] m6438this() {
        return this.f5287try;
    }

    /* renamed from: try, reason: not valid java name */
    public void m6439try() {
        T[] tArr = this.f5287try;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        int i3 = this.f5284for;
        while (true) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                this.f5285if = i2;
                this.f5286new = (int) (i * this.f5283do);
                this.f5287try = tArr2;
                return;
            }
            do {
                length--;
            } while (tArr[length] == null);
            int iM6431new = m6431new(tArr[length].hashCode()) & i2;
            if (tArr2[iM6431new] != null) {
                do {
                    iM6431new = (iM6431new + 1) & i2;
                } while (tArr2[iM6431new] != null);
            }
            tArr2[iM6431new] = tArr[length];
            i3 = i4;
        }
    }

    public q71(int i) {
        this(i, 0.75f);
    }

    public q71(int i, float f) {
        this.f5283do = f;
        int iM8842if = ve1.m8842if(i);
        this.f5285if = iM8842if - 1;
        this.f5286new = (int) (f * iM8842if);
        this.f5287try = (T[]) new Object[iM8842if];
    }
}
