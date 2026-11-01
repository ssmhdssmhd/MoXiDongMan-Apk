package android.support.v4;

import java.util.Random;

/* loaded from: classes3.dex */
public abstract class e01 {
    /* renamed from: case, reason: not valid java name */
    public static void m1572case(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        if (q21.m6352synchronized(length, iArr2)) {
            throw new IllegalArgumentException("'x' cannot be 0");
        }
        int iM1579try = 0;
        if (q21.m6339instanceof(length, iArr2)) {
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            return;
        }
        int[] iArrM6348static = q21.m6348static(length, iArr2);
        int[] iArrM6351switch = q21.m6351switch(length);
        iArrM6351switch[0] = 1;
        int iM1579try2 = (1 & iArrM6348static[0]) == 0 ? m1579try(iArr, iArrM6348static, length, iArrM6351switch, 0) : 0;
        if (q21.m6339instanceof(length, iArrM6348static)) {
            m1578new(iArr, iM1579try2, iArrM6351switch, iArr3);
            return;
        }
        int[] iArrM6348static2 = q21.m6348static(length, iArr);
        int[] iArrM6351switch2 = q21.m6351switch(length);
        int i = length;
        while (true) {
            int i2 = i - 1;
            if (iArrM6348static[i2] == 0 && iArrM6348static2[i2] == 0) {
                i--;
            } else if (q21.m6358volatile(i, iArrM6348static, iArrM6348static2)) {
                q21.V(i, iArrM6348static2, iArrM6348static);
                iM1579try2 = m1579try(iArr, iArrM6348static, i, iArrM6351switch, iM1579try2 + (q21.V(length, iArrM6351switch2, iArrM6351switch) - iM1579try));
                if (q21.m6339instanceof(i, iArrM6348static)) {
                    m1578new(iArr, iM1579try2, iArrM6351switch, iArr3);
                    return;
                }
            } else {
                q21.V(i, iArrM6348static, iArrM6348static2);
                iM1579try = m1579try(iArr, iArrM6348static2, i, iArrM6351switch2, iM1579try + (q21.V(length, iArrM6351switch, iArrM6351switch2) - iM1579try2));
                if (q21.m6339instanceof(i, iArrM6348static2)) {
                    m1578new(iArr, iM1579try, iArrM6351switch2, iArr3);
                    return;
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1573do(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (q21.m6329do(length, iArr2, iArr3, iArr4) != 0) {
            q21.V(length, iArr, iArr4);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int[] m1574else(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] iArrM6351switch = q21.m6351switch(length);
        int i = length - 1;
        int i2 = iArr[i];
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        int i7 = i6 | (i6 >>> 16);
        do {
            for (int i8 = 0; i8 != length; i8++) {
                iArrM6351switch[i8] = random.nextInt();
            }
            iArrM6351switch[i] = iArrM6351switch[i] & i7;
        } while (q21.m6358volatile(length, iArrM6351switch, iArr));
        return iArrM6351switch;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1575for(int i) {
        int i2 = (2 - (i * i)) * i;
        int i3 = i2 * (2 - (i * i2));
        int i4 = i3 * (2 - (i * i3));
        return i4 * (2 - (i * i4));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1576goto(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (q21.J(length, iArr2, iArr3, iArr4) != 0) {
            q21.m6326const(length, iArr, iArr4);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static int m1577if(int i) {
        int i2 = 0;
        while ((i & 1) == 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m1578new(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        if (i < 0) {
            q21.m6329do(iArr.length, iArr2, iArr, iArr3);
        } else {
            System.arraycopy(iArr2, 0, iArr3, 0, iArr.length);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static int m1579try(int[] iArr, int[] iArr2, int i, int[] iArr3, int i2) {
        int length = iArr.length;
        int i3 = 0;
        while (iArr2[0] == 0) {
            q21.s(i, iArr2, 0);
            i3 += 32;
        }
        int iM1577if = m1577if(iArr2[0]);
        if (iM1577if > 0) {
            q21.o(i, iArr2, iM1577if, 0);
            i3 += iM1577if;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if ((iArr3[0] & 1) != 0) {
                i2 += i2 < 0 ? q21.m6326const(length, iArr, iArr3) : q21.V(length, iArr, iArr3);
            }
            q21.k(length, iArr3, i2);
        }
        return i2;
    }
}
