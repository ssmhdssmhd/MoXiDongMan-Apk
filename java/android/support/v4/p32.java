package android.support.v4;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class p32 {

    /* renamed from: android.support.v4.p32$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private String f4832do;

        /* renamed from: for, reason: not valid java name */
        private String f4833for;

        /* renamed from: if, reason: not valid java name */
        private int[] f4834if;

        public Cdo(String str, int[] iArr) {
            this.f4832do = str;
            this.f4834if = iArr;
            this.f4833for = str.substring(iArr[0], iArr[1]);
        }

        /* renamed from: do, reason: not valid java name */
        public String m5856do() {
            return this.f4833for;
        }

        /* renamed from: for, reason: not valid java name */
        public int[] m5857for() {
            return this.f4834if;
        }

        /* renamed from: if, reason: not valid java name */
        public String m5858if() {
            return this.f4832do;
        }

        /* renamed from: new, reason: not valid java name */
        public String m5859new(String str) {
            StringBuilder sb = new StringBuilder(this.f4832do);
            int[] iArr = this.f4834if;
            return (iArr[0] <= -1 || iArr[1] <= -1 || iArr[0] > iArr[1]) ? this.f4832do : sb.replace(iArr[0], iArr[1], str).toString();
        }
    }

    /* renamed from: android.support.v4.p32$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        private static final int f4835case = 4;

        /* renamed from: for, reason: not valid java name */
        private static final int f4836for = 1;

        /* renamed from: if, reason: not valid java name */
        private static final int f4837if = 0;

        /* renamed from: new, reason: not valid java name */
        private static final int f4838new = 2;

        /* renamed from: try, reason: not valid java name */
        private static final int f4839try = 3;

        /* renamed from: do, reason: not valid java name */
        private List<int[]> f4840do = new ArrayList();

        public Cif(String str) {
            m5863class(str, 0);
        }

        /* renamed from: break, reason: not valid java name */
        private int[] m5860break(int[] iArr) {
            int i = iArr[0];
            int i2 = 0;
            int i3 = 0;
            while (i2 < iArr.length - 1) {
                i2++;
                if (iArr[i2] > -1 && (i < 0 || i >= iArr[i2])) {
                    i = iArr[i2];
                    i3 = i2;
                }
            }
            return new int[]{i, i3};
        }

        /* renamed from: case, reason: not valid java name */
        private int[] m5861case(String str, int i) {
            if (i < 0) {
                return null;
            }
            int i2 = i + 1;
            int iIndexOf = str.indexOf(on0.f4694final, i2);
            if (m5869this(str, iIndexOf)) {
                return m5861case(str, iIndexOf + 2);
            }
            if (iIndexOf > 0) {
                int i3 = iIndexOf - 1;
                if (str.charAt(i3) == '\\' || str.charAt(i3) == '*') {
                    return m5861case(str, i2);
                }
            }
            if (iIndexOf > -1) {
                return new int[]{i, iIndexOf};
            }
            return null;
        }

        /* renamed from: catch, reason: not valid java name */
        private int[] m5862catch(String str, String[] strArr, int i) {
            int length = str.length();
            int length2 = strArr.length;
            int[] iArr = new int[length2];
            int i2 = i < 0 ? 0 : i;
            for (int i3 = 0; i3 < length2; i3++) {
                iArr[i3] = strArr[i3].length();
                if (iArr[i3] == 0) {
                    int[] iArr2 = new int[2];
                    if (i2 < length) {
                        length = i2;
                    }
                    iArr2[0] = length;
                    iArr2[1] = i3;
                    return iArr2;
                }
            }
            if (i2 >= length) {
                return null;
            }
            while (i2 < length) {
                for (int i4 = 0; i4 < length2; i4++) {
                    int length3 = strArr[i4].length();
                    char cCharAt = str.charAt(i2);
                    char cCharAt2 = strArr[i4].charAt(0);
                    int i5 = i2;
                    int i6 = 0;
                    while (i5 < length - 1 && i6 < length3 - 1 && cCharAt2 == cCharAt) {
                        i5++;
                        i6++;
                        cCharAt = str.charAt(i5);
                        cCharAt2 = strArr[i4].charAt(i6);
                    }
                    if (i6 == length3 - 1 && cCharAt2 == cCharAt) {
                        return new int[]{i2, i4};
                    }
                }
                i2++;
            }
            return null;
        }

        /* renamed from: class, reason: not valid java name */
        private void m5863class(String str, int i) {
            int[] iArrM5870try;
            int[] iArrM5862catch = m5862catch(str, new String[]{"/*", "//", on0.f4694final, "\"", "'"}, i);
            if (iArrM5862catch != null) {
                int i2 = iArrM5862catch[1];
                if (i2 == 0) {
                    int[] iArrM5867if = m5867if(str, iArrM5862catch[0]);
                    if (iArrM5867if != null) {
                        m5864do(iArrM5867if);
                        m5863class(str, iArrM5867if[1] + 1);
                        return;
                    }
                    return;
                }
                if (i2 == 1) {
                    int[] iArrM5866for = m5866for(str, iArrM5862catch[0]);
                    if (iArrM5866for != null) {
                        m5864do(iArrM5866for);
                        m5863class(str, iArrM5866for[1] + 1);
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    int[] iArrM5861case = m5861case(str, iArrM5862catch[0]);
                    if (iArrM5861case != null) {
                        m5864do(iArrM5861case);
                        m5863class(str, iArrM5861case[1] + 1);
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    if (i2 == 4 && (iArrM5870try = m5870try(str, iArrM5862catch[0])) != null) {
                        m5864do(iArrM5870try);
                        m5863class(str, iArrM5870try[1] + 1);
                        return;
                    }
                    return;
                }
                int[] iArrM5868new = m5868new(str, iArrM5862catch[0]);
                if (iArrM5868new != null) {
                    m5864do(iArrM5868new);
                    m5863class(str, iArrM5868new[1] + 1);
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        private void m5864do(int[] iArr) {
            if (this.f4840do == null) {
                this.f4840do = new ArrayList();
            }
            this.f4840do.add(iArr);
        }

        /* renamed from: else, reason: not valid java name */
        private int m5865else(String str, int i) {
            if (i < 0) {
                return -1;
            }
            int i2 = i + 1;
            int iIndexOf = str.indexOf(on0.f4694final, i2);
            if (m5869this(str, iIndexOf)) {
                return m5865else(str, iIndexOf + 2);
            }
            if (iIndexOf > 0) {
                int i3 = iIndexOf - 1;
                if (str.charAt(i3) == '\\' || str.charAt(i3) == '*') {
                    return m5865else(str, i2);
                }
            }
            if (iIndexOf > -1) {
                return iIndexOf;
            }
            return -1;
        }

        /* renamed from: for, reason: not valid java name */
        private int[] m5866for(String str, int i) {
            int iIndexOf;
            if (i >= 0 && (iIndexOf = str.indexOf("\n", i + 2)) > -1) {
                return new int[]{i, iIndexOf};
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        private int[] m5867if(String str, int i) {
            int iIndexOf;
            if (i >= 0 && (iIndexOf = str.indexOf("*/", i + 2)) > -1) {
                return new int[]{i, iIndexOf + 1};
            }
            return null;
        }

        /* renamed from: new, reason: not valid java name */
        private int[] m5868new(String str, int i) {
            if (i < 0) {
                return null;
            }
            int i2 = i + 1;
            int iIndexOf = str.indexOf("\"", i2);
            if (iIndexOf > 0 && str.charAt(iIndexOf - 1) == '\\') {
                return m5868new(str, i2);
            }
            if (iIndexOf > -1) {
                return new int[]{i, iIndexOf};
            }
            return null;
        }

        /* renamed from: this, reason: not valid java name */
        private boolean m5869this(String str, int i) {
            if (i < 0 || i >= str.length() - 2) {
                return false;
            }
            int i2 = i + 1;
            return str.charAt(i2) == '/' || str.charAt(i2) == '*';
        }

        /* renamed from: try, reason: not valid java name */
        private int[] m5870try(String str, int i) {
            if (i < 0) {
                return null;
            }
            int i2 = i + 1;
            int iIndexOf = str.indexOf("'", i2);
            if (iIndexOf > 0 && str.charAt(iIndexOf - 1) == '\\') {
                return m5870try(str, i2);
            }
            if (iIndexOf > -1) {
                return new int[]{i, iIndexOf};
            }
            return null;
        }

        /* renamed from: goto, reason: not valid java name */
        public List<int[]> m5871goto() {
            return this.f4840do;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static Cdo m5850case(String str, String str2, String str3, String str4, String str5) {
        int length;
        int i;
        int length2 = str.length();
        int iIndexOf = str2.indexOf(str3 + str4);
        if (iIndexOf <= -1 || (length = str3.length() + iIndexOf) <= -1 || length >= (i = length2 - 1)) {
            return null;
        }
        int iIndexOf2 = length;
        int iIndexOf3 = iIndexOf2;
        do {
            iIndexOf2 = str2.indexOf(str5, iIndexOf2 + 1);
            iIndexOf3 = str2.indexOf(str4, iIndexOf3 + 1);
            if (iIndexOf3 >= iIndexOf2 || iIndexOf3 <= -1) {
                break;
            }
        } while (iIndexOf2 < i);
        if (iIndexOf2 > length) {
            return new Cdo(str, new int[]{iIndexOf, iIndexOf2 + str5.length()});
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m5851do(String str, String str2, String str3, String str4) {
        String lowerCase = str.toLowerCase();
        String lowerCase2 = str2.toLowerCase();
        String lowerCase3 = str3.toLowerCase();
        String lowerCase4 = str4.toLowerCase();
        if ("@get:".equalsIgnoreCase(lowerCase2) || "@put:".equalsIgnoreCase(lowerCase2) || "@Header:".equalsIgnoreCase(lowerCase2)) {
            return m5850case(str, lowerCase, lowerCase2, lowerCase3, lowerCase4);
        }
        List<int[]> listM5871goto = new Cif(lowerCase).m5871goto();
        StringBuilder sb = new StringBuilder();
        sb.append(lowerCase2);
        sb.append(lowerCase3);
        return m5853if(lowerCase, lowerCase.indexOf(sb.toString()), listM5871goto) ? m5850case(str, lowerCase, lowerCase2, lowerCase3, lowerCase4) : m5855try(str, lowerCase, lowerCase2, lowerCase3, lowerCase4, listM5871goto);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m5852for(String str, String str2, int i, List<int[]> list) {
        int iIndexOf = str.indexOf(str2, i);
        if (!m5853if(str, iIndexOf, list)) {
            return iIndexOf;
        }
        int length = iIndexOf + str2.length();
        if (length < str.length()) {
            return m5852for(str, str2, length, list);
        }
        return -1;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m5853if(String str, int i, List<int[]> list) {
        if (i > -1 && str.charAt(i) != '\n' && list != null) {
            for (int[] iArr : list) {
                if (iArr[0] <= i && iArr[1] >= i) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m5854new(String str, String str2, List<int[]> list) {
        int iIndexOf = str.indexOf(str2);
        if (!m5853if(str, iIndexOf, list)) {
            return iIndexOf;
        }
        int length = iIndexOf + str2.length();
        if (length < str.length()) {
            return m5852for(str, str2, length, list);
        }
        return -1;
    }

    /* renamed from: try, reason: not valid java name */
    private static Cdo m5855try(String str, String str2, String str3, String str4, String str5, List<int[]> list) {
        int length;
        int i;
        int length2 = str.length();
        int iM5854new = m5854new(str2, str3 + str4, list);
        if (iM5854new <= -1 || (length = str3.length() + iM5854new) <= -1 || length >= (i = length2 - 1)) {
            return null;
        }
        int iM5852for = length;
        int iM5852for2 = iM5852for;
        do {
            iM5852for = m5852for(str2, str5, iM5852for + 1, list);
            iM5852for2 = m5852for(str2, str4, iM5852for2 + 1, list);
            if (iM5852for2 >= iM5852for || iM5852for2 <= -1) {
                break;
            }
        } while (iM5852for < i);
        if (iM5852for > length) {
            return new Cdo(str, new int[]{iM5854new, iM5852for + str5.length()});
        }
        return null;
    }
}
