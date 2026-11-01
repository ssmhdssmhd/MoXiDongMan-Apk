package android.support.v4;

import java.io.PrintStream;

/* loaded from: classes3.dex */
public final class qe1 {
    private qe1() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m6535break(long j, int i) {
        if (i == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        long j2 = i & 4294967295L;
        while ((j >>> 32) != 0) {
            j ^= j2 << (m6539for(j) - m6539for(j2));
        }
        int iM6541if = (int) (j & (-1));
        while (m6541if(iM6541if) >= m6541if(i)) {
            iM6541if ^= i << (m6541if(iM6541if) - m6541if(i));
        }
        return iM6541if;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m6536case(int i) {
        if (i == 0) {
            return false;
        }
        int iM6541if = m6541if(i) >>> 1;
        int iM6538else = 2;
        for (int i2 = 0; i2 < iM6541if; i2++) {
            iM6538else = m6538else(iM6538else, iM6538else, i);
            if (m6542new(iM6538else ^ 2, i) != 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m6537do(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m6538else(int i, int i2, int i3) {
        int iM6543this = m6543this(i, i3);
        int iM6543this2 = m6543this(i2, i3);
        int i4 = 0;
        if (iM6543this2 != 0) {
            int iM6541if = 1 << m6541if(i3);
            while (iM6543this != 0) {
                if (((byte) (iM6543this & 1)) == 1) {
                    i4 ^= iM6543this2;
                }
                iM6543this >>>= 1;
                iM6543this2 <<= 1;
                if (iM6543this2 >= iM6541if) {
                    iM6543this2 ^= i3;
                }
            }
        }
        return i4;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6539for(long j) {
        int i = 0;
        while (j != 0) {
            i++;
            j >>>= 1;
        }
        return i - 1;
    }

    /* renamed from: goto, reason: not valid java name */
    public static long m6540goto(int i, int i2) {
        long j = 0;
        if (i2 != 0) {
            long j2 = i2 & 4294967295L;
            while (i != 0) {
                if (((byte) (i & 1)) == 1) {
                    j ^= j2;
                }
                i >>>= 1;
                j2 <<= 1;
            }
        }
        return j;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6541if(int i) {
        int i2 = -1;
        while (i != 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6542new(int i, int i2) {
        while (true) {
            int i3 = i2;
            int i4 = i;
            i = i3;
            if (i == 0) {
                return i4;
            }
            i2 = m6543this(i4, i);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m6543this(int i, int i2) {
        if (i2 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (m6541if(i) >= m6541if(i2)) {
            i ^= i2 << (m6541if(i) - m6541if(i2));
        }
        return i;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6544try(int i) {
        PrintStream printStream;
        String str;
        if (i < 0) {
            printStream = System.err;
            str = "The Degree is negative";
        } else {
            if (i <= 31) {
                if (i == 0) {
                    return 1;
                }
                int i2 = 1 << (i + 1);
                for (int i3 = (1 << i) + 1; i3 < i2; i3 += 2) {
                    if (m6536case(i3)) {
                        return i3;
                    }
                }
                return 0;
            }
            printStream = System.err;
            str = "The Degree is more then 31";
        }
        printStream.println(str);
        return 0;
    }
}
