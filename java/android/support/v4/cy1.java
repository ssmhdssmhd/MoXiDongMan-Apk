package android.support.v4;

/* loaded from: classes3.dex */
public class cy1 {

    /* renamed from: do, reason: not valid java name */
    private final String f894do;

    public cy1(String str) {
        this.f894do = str;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m1087do(String str, int i, hy1 hy1Var) {
        int i2 = i + 1;
        char cCharAt = str.charAt(i);
        if (cCharAt != 'F' && cCharAt != 'V' && cCharAt != 'I' && cCharAt != 'J' && cCharAt != 'S') {
            if (cCharAt == 'T') {
                int iIndexOf = str.indexOf(59, i2);
                hy1Var.mo3170throw(str.substring(i2, iIndexOf));
                return iIndexOf + 1;
            }
            if (cCharAt != 'Z') {
                if (cCharAt == '[') {
                    return m1087do(str, i2, hy1Var.mo3161do());
                }
                switch (cCharAt) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        int i3 = i2;
                        boolean z = false;
                        boolean z2 = false;
                        while (true) {
                            int iM1087do = i2 + 1;
                            char cCharAt2 = str.charAt(i2);
                            if (cCharAt2 == '.' || cCharAt2 == ';') {
                                if (!z) {
                                    String strSubstring = str.substring(i3, iM1087do - 1);
                                    if (z2) {
                                        hy1Var.mo3165goto(strSubstring);
                                    } else {
                                        hy1Var.mo3167new(strSubstring);
                                    }
                                }
                                if (cCharAt2 == ';') {
                                    hy1Var.mo3171try();
                                    return iM1087do;
                                }
                                i3 = iM1087do;
                                i2 = i3;
                                z = false;
                                z2 = true;
                            } else if (cCharAt2 != '<') {
                                i2 = iM1087do;
                            } else {
                                String strSubstring2 = str.substring(i3, iM1087do - 1);
                                if (z2) {
                                    hy1Var.mo3165goto(strSubstring2);
                                } else {
                                    hy1Var.mo3167new(strSubstring2);
                                }
                                while (true) {
                                    char cCharAt3 = str.charAt(iM1087do);
                                    if (cCharAt3 != '*') {
                                        if (cCharAt3 == '+' || cCharAt3 == '-') {
                                            iM1087do++;
                                        } else if (cCharAt3 != '>') {
                                            cCharAt3 = hy1.f2563new;
                                        } else {
                                            i2 = iM1087do;
                                            z = true;
                                        }
                                        iM1087do = m1087do(str, iM1087do, hy1Var.mo3163final(cCharAt3));
                                    } else {
                                        iM1087do++;
                                        hy1Var.mo3168super();
                                    }
                                }
                            }
                        }
                        break;
                }
            }
        }
        hy1Var.mo3166if(cCharAt);
        return i2;
    }

    /* renamed from: for, reason: not valid java name */
    public void m1088for(hy1 hy1Var) {
        m1087do(this.f894do, 0, hy1Var);
    }

    /* renamed from: if, reason: not valid java name */
    public void m1089if(hy1 hy1Var) {
        char cCharAt;
        String str = this.f894do;
        int length = str.length();
        int iM1087do = 0;
        if (str.charAt(0) == '<') {
            iM1087do = 2;
            do {
                int iIndexOf = str.indexOf(58, iM1087do);
                hy1Var.mo3162else(str.substring(iM1087do - 1, iIndexOf));
                int iM1087do2 = iIndexOf + 1;
                char cCharAt2 = str.charAt(iM1087do2);
                if (cCharAt2 == 'L' || cCharAt2 == '[' || cCharAt2 == 'T') {
                    iM1087do2 = m1087do(str, iM1087do2, hy1Var.mo3164for());
                }
                while (true) {
                    iM1087do = iM1087do2 + 1;
                    cCharAt = str.charAt(iM1087do2);
                    if (cCharAt != ':') {
                        break;
                    } else {
                        iM1087do2 = m1087do(str, iM1087do, hy1Var.mo3156break());
                    }
                }
            } while (cCharAt != '>');
        }
        if (str.charAt(iM1087do) == '(') {
            int iM1087do3 = iM1087do + 1;
            while (str.charAt(iM1087do3) != ')') {
                iM1087do3 = m1087do(str, iM1087do3, hy1Var.mo3158catch());
            }
            int i = iM1087do3 + 1;
            hy1 hy1VarMo3159class = hy1Var.mo3159class();
            while (true) {
                int iM1087do4 = m1087do(str, i, hy1VarMo3159class);
                if (iM1087do4 >= length) {
                    return;
                }
                i = iM1087do4 + 1;
                hy1VarMo3159class = hy1Var.mo3157case();
            }
        } else {
            hy1 hy1VarMo3160const = hy1Var.mo3160const();
            while (true) {
                iM1087do = m1087do(str, iM1087do, hy1VarMo3160const);
                if (iM1087do >= length) {
                    return;
                } else {
                    hy1VarMo3160const = hy1Var.mo3169this();
                }
            }
        }
    }
}
