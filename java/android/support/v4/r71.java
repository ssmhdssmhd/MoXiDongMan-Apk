package android.support.v4;

/* loaded from: classes3.dex */
public final class r71<T> {

    /* renamed from: case, reason: not valid java name */
    private static final int f5698case = -1640531527;

    /* renamed from: do, reason: not valid java name */
    public final float f5699do;

    /* renamed from: for, reason: not valid java name */
    public int f5700for;

    /* renamed from: if, reason: not valid java name */
    public int f5701if;

    /* renamed from: new, reason: not valid java name */
    public int f5702new;

    /* renamed from: try, reason: not valid java name */
    public T[] f5703try;

    public r71() {
        this(16, 0.75f);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6798for(int i) {
        int i2 = i * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m6799case(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.f5700for--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int iM6798for = m6798for(t.hashCode()) & i2;
                if (i <= i3) {
                    if (i >= iM6798for || iM6798for > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < iM6798for || iM6798for <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m6800do(T t) {
        T t2;
        T[] tArr = this.f5703try;
        int i = this.f5701if;
        int iM6798for = m6798for(t.hashCode()) & i;
        T t3 = tArr[iM6798for];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                iM6798for = (iM6798for + 1) & i;
                t2 = tArr[iM6798for];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[iM6798for] = t;
        int i2 = this.f5700for + 1;
        this.f5700for = i2;
        if (i2 >= this.f5702new) {
            m6803new();
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public int m6801else() {
        return this.f5700for;
    }

    /* renamed from: if, reason: not valid java name */
    public Object[] m6802if() {
        return this.f5703try;
    }

    /* renamed from: new, reason: not valid java name */
    public void m6803new() {
        T[] tArr = this.f5703try;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        int i3 = this.f5700for;
        while (true) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                this.f5701if = i2;
                this.f5702new = (int) (i * this.f5699do);
                this.f5703try = tArr2;
                return;
            }
            do {
                length--;
            } while (tArr[length] == null);
            int iM6798for = m6798for(tArr[length].hashCode()) & i2;
            if (tArr2[iM6798for] != null) {
                do {
                    iM6798for = (iM6798for + 1) & i2;
                } while (tArr2[iM6798for] != null);
            }
            tArr2[iM6798for] = tArr[length];
            i3 = i4;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m6804try(T t) {
        T t2;
        T[] tArr = this.f5703try;
        int i = this.f5701if;
        int iM6798for = m6798for(t.hashCode()) & i;
        T t3 = tArr[iM6798for];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return m6799case(iM6798for, tArr, i);
        }
        do {
            iM6798for = (iM6798for + 1) & i;
            t2 = tArr[iM6798for];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return m6799case(iM6798for, tArr, i);
    }

    public r71(int i) {
        this(i, 0.75f);
    }

    public r71(int i, float f) {
        this.f5699do = f;
        int iM9129if = we1.m9129if(i);
        this.f5701if = iM9129if - 1;
        this.f5702new = (int) (f * iM9129if);
        this.f5703try = (T[]) new Object[iM9129if];
    }
}
