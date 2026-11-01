package android.support.v4;

import java.util.Random;
import okio.Utf8;

/* loaded from: classes3.dex */
public class gl1 {

    /* renamed from: do, reason: not valid java name */
    private static final Random f2161do = new Random();

    /* renamed from: break, reason: not valid java name */
    public static String m2724break(int i) {
        return m2731if(i, 32, 127, false, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m2725case(int i, boolean z, boolean z2) {
        return m2731if(i, 0, 0, z, z2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m2726catch(int i) {
        return m2725case(i, false, true);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m2727do(int i) {
        return m2725case(i, false, false);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m2728else(int i, char... cArr) {
        return cArr == null ? m2732new(i, 0, 0, false, false, null, f2161do) : m2732new(i, 0, cArr.length, false, false, cArr, f2161do);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m2729for(int i, int i2, int i3, boolean z, boolean z2, char... cArr) {
        return m2732new(i, i2, i3, z, z2, cArr, f2161do);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m2730goto(int i) {
        return m2725case(i, true, false);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2731if(int i, int i2, int i3, boolean z, boolean z2) {
        return m2732new(i, i2, i3, z, z2, null, f2161do);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x009b  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m2732new(int i, int i2, int i3, boolean z, boolean z2, char[] cArr, Random random) {
        if (i == 0) {
            return "";
        }
        if (i < 0) {
            throw new IllegalArgumentException("Requested random string length " + i + " is less than 0.");
        }
        if (cArr != null && cArr.length == 0) {
            throw new IllegalArgumentException("The chars array must not be empty");
        }
        if (i2 == 0 && i3 == 0) {
            if (cArr != null) {
                i3 = cArr.length;
            } else if (z || z2) {
                i3 = 123;
                i2 = 32;
            } else {
                i3 = Integer.MAX_VALUE;
            }
        } else if (i3 <= i2) {
            throw new IllegalArgumentException("Parameter end (" + i3 + ") must be greater than start (" + i2 + ")");
        }
        char[] cArr2 = new char[i];
        int i4 = i3 - i2;
        while (true) {
            int i5 = i - 1;
            if (i == 0) {
                return new String(cArr2);
            }
            char cNextInt = cArr == null ? (char) (random.nextInt(i4) + i2) : cArr[random.nextInt(i4) + i2];
            if (!(z && Character.isLetter(cNextInt)) && (!(z2 && Character.isDigit(cNextInt)) && (z || z2))) {
                i5++;
            } else if (cNextInt < 56320 || cNextInt > 57343) {
                if (cNextInt < 55296 || cNextInt > 56191) {
                    if (cNextInt < 56192 || cNextInt > 56319) {
                        cArr2[i5] = cNextInt;
                    }
                } else if (i5 != 0) {
                    cArr2[i5] = (char) (random.nextInt(128) + Utf8.LOG_SURROGATE_HEADER);
                    i5--;
                    cArr2[i5] = cNextInt;
                }
            } else if (i5 != 0) {
                cArr2[i5] = cNextInt;
                i5--;
                cArr2[i5] = (char) (random.nextInt(128) + 55296);
            }
            i = i5;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static String m2733this(int i) {
        return m2725case(i, true, true);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m2734try(int i, String str) {
        return str == null ? m2732new(i, 0, 0, false, false, null, f2161do) : m2728else(i, str.toCharArray());
    }
}
