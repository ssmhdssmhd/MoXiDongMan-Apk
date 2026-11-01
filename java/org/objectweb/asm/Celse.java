package org.objectweb.asm;

import android.support.v4.f92;
import org.bouncycastle.pqc.crypto.qtesla.Ctry;

/* renamed from: org.objectweb.asm.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse {

    /* renamed from: this, reason: not valid java name */
    public static final int[] f34007this;

    /* renamed from: case, reason: not valid java name */
    private int f34008case;

    /* renamed from: do, reason: not valid java name */
    public Cbreak f34009do;

    /* renamed from: else, reason: not valid java name */
    private int f34010else;

    /* renamed from: for, reason: not valid java name */
    public int[] f34011for;

    /* renamed from: goto, reason: not valid java name */
    private int[] f34012goto;

    /* renamed from: if, reason: not valid java name */
    public int[] f34013if;

    /* renamed from: new, reason: not valid java name */
    private int[] f34014new;

    /* renamed from: try, reason: not valid java name */
    private int[] f34015try;

    static {
        m37965do();
        int[] iArr = new int[202];
        for (int i = 0; i < 202; i++) {
            iArr[i] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(i) - 'E';
        }
        f34007this = iArr;
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m37962break(Cfor cfor, int i, int[] iArr, int i2) {
        int iMin;
        int i3 = iArr[i2];
        if (i3 == i) {
            return false;
        }
        if ((268435455 & i) == 16777221) {
            if (i3 == 16777221) {
                return false;
            }
            i = 16777221;
        }
        if (i3 == 0) {
            iArr[i2] = i;
            return true;
        }
        int i4 = i3 & 267386880;
        int iM37984abstract = 16777216;
        if (i4 == 24117248 || (i3 & (-268435456)) != 0) {
            if (i == 16777221) {
                return false;
            }
            if ((i & (-1048576)) != ((-1048576) & i3)) {
                int i5 = i & 267386880;
                if (i5 == 24117248 || (i & (-268435456)) != 0) {
                    int i6 = i & (-268435456);
                    int i7 = ((i6 == 0 || i5 == 24117248) ? 0 : -268435456) + i6;
                    int i8 = i3 & (-268435456);
                    iMin = Math.min(i7, ((i8 == 0 || i4 == 24117248) ? 0 : -268435456) + i8);
                    iM37984abstract = iMin | 24117248 | cfor.m37984abstract("java/lang/Object");
                }
            } else if (i4 == 24117248) {
                iM37984abstract = (i & (-268435456)) | 24117248 | cfor.m37985class(i & 1048575, 1048575 & i3);
            } else {
                iMin = (i3 & (-268435456)) - 268435456;
                iM37984abstract = iMin | 24117248 | cfor.m37984abstract("java/lang/Object");
            }
        } else if (i3 == 16777221) {
            if ((i & 267386880) != 24117248 && (i & (-268435456)) == 0) {
                i = 16777216;
            }
            iM37984abstract = i;
        }
        if (i3 == iM37984abstract) {
            return false;
        }
        iArr[i2] = iM37984abstract;
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    private static int m37963class(Cfor cfor, String str) {
        int iIndexOf = str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0;
        char cCharAt = str.charAt(iIndexOf);
        int iM37984abstract = 16777218;
        if (cCharAt == 'F') {
            return 16777218;
        }
        if (cCharAt == 'L') {
            return cfor.m37984abstract(str.substring(iIndexOf + 1, str.length() - 1)) | 24117248;
        }
        if (cCharAt != 'S') {
            if (cCharAt == 'V') {
                return 0;
            }
            if (cCharAt != 'Z' && cCharAt != 'I') {
                if (cCharAt == 'J') {
                    return 16777220;
                }
                switch (cCharAt) {
                    case 'B':
                    case 'C':
                        break;
                    case 'D':
                        return 16777219;
                    default:
                        int i = iIndexOf + 1;
                        while (str.charAt(i) == '[') {
                            i++;
                        }
                        char cCharAt2 = str.charAt(i);
                        if (cCharAt2 != 'F') {
                            if (cCharAt2 == 'S') {
                                iM37984abstract = 16777228;
                            } else if (cCharAt2 == 'Z') {
                                iM37984abstract = 16777225;
                            } else if (cCharAt2 == 'I') {
                                iM37984abstract = 16777217;
                            } else if (cCharAt2 != 'J') {
                                switch (cCharAt2) {
                                    case 'B':
                                        iM37984abstract = 16777226;
                                        break;
                                    case 'C':
                                        iM37984abstract = 16777227;
                                        break;
                                    case 'D':
                                        iM37984abstract = 16777219;
                                        break;
                                    default:
                                        iM37984abstract = cfor.m37984abstract(str.substring(i + 1, str.length() - 1)) | 24117248;
                                        break;
                                }
                            } else {
                                iM37984abstract = 16777220;
                            }
                        }
                        return ((i - iIndexOf) << 28) | iM37984abstract;
                }
            }
        }
        return 16777217;
    }

    /* renamed from: const, reason: not valid java name */
    private void m37964const(int i) {
        if (this.f34015try == null) {
            this.f34015try = new int[10];
        }
        int length = this.f34015try.length;
        int i2 = this.f34008case;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f34015try, 0, iArr, 0, length);
            this.f34015try = iArr;
        }
        int[] iArr2 = this.f34015try;
        int i3 = this.f34008case;
        int i4 = i3 + 1;
        this.f34008case = i4;
        iArr2[i3] = i;
        Cbreak cbreak = this.f34009do;
        int i5 = cbreak.f33944else + i4;
        if (i5 > cbreak.f33946goto) {
            cbreak.f33946goto = i5;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ void m37965do() {
    }

    /* renamed from: else, reason: not valid java name */
    private void m37966else(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == '(') {
            m37967final((f92.m2218this(str) >> 2) - 1);
        } else if (cCharAt == 'J' || cCharAt == 'D') {
            m37967final(2);
        } else {
            m37967final(1);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m37967final(int i) {
        int i2 = this.f34008case;
        if (i2 >= i) {
            this.f34008case = i2 - i;
            return;
        }
        this.f34009do.f33944else -= i - i2;
        this.f34008case = 0;
    }

    /* renamed from: for, reason: not valid java name */
    private int m37968for(int i) {
        int[] iArr = this.f34014new;
        if (iArr == null || i >= iArr.length) {
            return i | 33554432;
        }
        int i2 = iArr[i];
        if (i2 != 0) {
            return i2;
        }
        int i3 = i | 33554432;
        iArr[i] = i3;
        return i3;
    }

    /* renamed from: if, reason: not valid java name */
    private int m37969if() {
        int i = this.f34008case;
        if (i > 0) {
            int[] iArr = this.f34015try;
            int i2 = i - 1;
            this.f34008case = i2;
            return iArr[i2];
        }
        Cbreak cbreak = this.f34009do;
        int i3 = cbreak.f33944else - 1;
        cbreak.f33944else = i3;
        return 50331648 | (-i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004d A[LOOP:0: B:10:0x0022->B:21:0x004d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c A[SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m37970new(Cfor cfor, int i) {
        String str;
        int i2;
        if (i != 16777222) {
            if (((-1048576) & i) == 25165824) {
                str = cfor.f34021const[1048575 & i].f34096try;
            }
            return i;
        }
        str = cfor.f34052while;
        int iM37984abstract = cfor.m37984abstract(str) | 24117248;
        for (int i3 = 0; i3 < this.f34010else; i3++) {
            int i4 = this.f34012goto[i3];
            int i5 = (-268435456) & i4;
            int i6 = 251658240 & i4;
            if (i6 == 33554432) {
                i2 = this.f34013if[i4 & Ctry.f32296abstract];
            } else {
                if (i6 == 50331648) {
                    int[] iArr = this.f34011for;
                    i2 = iArr[iArr.length - (i4 & Ctry.f32296abstract)];
                }
                if (i != i4) {
                    return iM37984abstract;
                }
            }
            i4 = i2 + i5;
            if (i != i4) {
            }
        }
        return i;
    }

    /* renamed from: super, reason: not valid java name */
    private void m37971super(int i) {
        if (this.f34012goto == null) {
            this.f34012goto = new int[2];
        }
        int length = this.f34012goto.length;
        int i2 = this.f34010else;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f34012goto, 0, iArr, 0, length);
            this.f34012goto = iArr;
        }
        int[] iArr2 = this.f34012goto;
        int i3 = this.f34010else;
        this.f34010else = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: this, reason: not valid java name */
    private void m37972this(Cfor cfor, String str) {
        int iM37963class = m37963class(cfor, str);
        if (iM37963class != 0) {
            m37964const(iM37963class);
            if (iM37963class == 16777220 || iM37963class == 16777219) {
                m37964const(16777216);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m37973try(int i, int i2) {
        if (this.f34014new == null) {
            this.f34014new = new int[10];
        }
        int length = this.f34014new.length;
        if (i >= length) {
            int[] iArr = new int[Math.max(i + 1, length * 2)];
            System.arraycopy(this.f34014new, 0, iArr, 0, length);
            this.f34014new = iArr;
        }
        this.f34014new[i] = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r1.charAt(0) == '[') goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0203  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m37974case(int i, int i2, Cfor cfor, Cthis cthis) {
        int iM37984abstract;
        String string;
        int i3;
        int iM37968for;
        int iM37969if;
        int iM37969if2;
        if (i != 198 && i != 199) {
            switch (i) {
                case 0:
                    return;
                case 1:
                    iM37984abstract = 16777221;
                    m37964const(iM37984abstract);
                    return;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 16:
                case 17:
                    m37964const(16777217);
                    return;
                case 9:
                case 10:
                    m37964const(16777220);
                    m37964const(16777216);
                    return;
                case 11:
                case 12:
                case 13:
                    m37964const(16777218);
                    return;
                case 14:
                case 15:
                    m37964const(16777219);
                    m37964const(16777216);
                    return;
                case 18:
                    int i4 = cthis.f34093if;
                    if (i4 != 16) {
                        switch (i4) {
                            case 3:
                                break;
                            case 4:
                                break;
                            case 5:
                                break;
                            case 6:
                                break;
                            case 7:
                                string = "java/lang/Class";
                                break;
                            case 8:
                                string = "java/lang/String";
                                break;
                            default:
                                string = "java/lang/invoke/MethodHandle";
                                break;
                        }
                    } else {
                        string = "java/lang/invoke/MethodType";
                    }
                    iM37984abstract = cfor.m37984abstract(string) | 24117248;
                    m37964const(iM37984abstract);
                    return;
                default:
                    switch (i) {
                        case 21:
                            break;
                        case 22:
                            break;
                        case 23:
                            break;
                        case 24:
                            break;
                        case 25:
                            iM37984abstract = m37968for(i2);
                            m37964const(iM37984abstract);
                            return;
                        default:
                            switch (i) {
                                case 46:
                                case 51:
                                case 52:
                                case 53:
                                    m37967final(2);
                                    m37964const(16777217);
                                    return;
                                case 47:
                                    m37967final(2);
                                    m37964const(16777220);
                                    m37964const(16777216);
                                    return;
                                case 48:
                                    m37967final(2);
                                    m37964const(16777218);
                                    return;
                                case 49:
                                    m37967final(2);
                                    m37964const(16777219);
                                    m37964const(16777216);
                                    return;
                                case 50:
                                    m37967final(1);
                                    iM37984abstract = m37969if() - 268435456;
                                    m37964const(iM37984abstract);
                                    return;
                                case 54:
                                case 56:
                                case 58:
                                    m37973try(i2, m37969if());
                                    if (i2 > 0) {
                                        i3 = i2 - 1;
                                        iM37968for = m37968for(i3);
                                        if (iM37968for != 16777220 && iM37968for != 16777219) {
                                            if ((iM37968for & 251658240) == 16777216) {
                                                return;
                                            }
                                            m37973try(i3, iM37968for | 8388608);
                                            return;
                                        }
                                        m37973try(i3, 16777216);
                                        return;
                                    }
                                    return;
                                case 55:
                                case 57:
                                    m37967final(1);
                                    m37973try(i2, m37969if());
                                    m37973try(i2 + 1, 16777216);
                                    if (i2 > 0) {
                                        i3 = i2 - 1;
                                        iM37968for = m37968for(i3);
                                        if (iM37968for != 16777220 && iM37968for != 16777219) {
                                            if ((iM37968for & 251658240) == 16777216) {
                                                return;
                                            }
                                            m37973try(i3, iM37968for | 8388608);
                                            return;
                                        }
                                        m37973try(i3, 16777216);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (i) {
                                        case 79:
                                        case 81:
                                        case 83:
                                        case 84:
                                        case 85:
                                        case 86:
                                            m37967final(3);
                                            return;
                                        case 80:
                                        case 82:
                                            m37967final(4);
                                            return;
                                        case 87:
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 170:
                                        case 171:
                                        case 172:
                                        case 174:
                                        case 176:
                                        case 191:
                                        case 194:
                                        case 195:
                                            break;
                                        case 88:
                                        case 159:
                                        case 160:
                                        case 161:
                                        case 162:
                                        case 163:
                                        case 164:
                                        case 165:
                                        case 166:
                                        case 173:
                                        case 175:
                                            m37967final(2);
                                            return;
                                        case 89:
                                            iM37984abstract = m37969if();
                                            m37964const(iM37984abstract);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 90:
                                            iM37984abstract = m37969if();
                                            iM37969if = m37969if();
                                            m37964const(iM37984abstract);
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 91:
                                            iM37984abstract = m37969if();
                                            iM37969if = m37969if();
                                            iM37969if2 = m37969if();
                                            m37964const(iM37984abstract);
                                            m37964const(iM37969if2);
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 92:
                                            iM37984abstract = m37969if();
                                            iM37969if = m37969if();
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 93:
                                            iM37984abstract = m37969if();
                                            iM37969if = m37969if();
                                            iM37969if2 = m37969if();
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            m37964const(iM37969if2);
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 94:
                                            iM37984abstract = m37969if();
                                            iM37969if = m37969if();
                                            iM37969if2 = m37969if();
                                            int iM37969if3 = m37969if();
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            m37964const(iM37969if3);
                                            m37964const(iM37969if2);
                                            m37964const(iM37969if);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 95:
                                            int iM37969if4 = m37969if();
                                            int iM37969if5 = m37969if();
                                            m37964const(iM37969if4);
                                            m37964const(iM37969if5);
                                            return;
                                        case 96:
                                        case 100:
                                        case 104:
                                        case 108:
                                        case 112:
                                        case 120:
                                        case 122:
                                        case 124:
                                        case 126:
                                        case 128:
                                        case 130:
                                        case 136:
                                        case 142:
                                        case 149:
                                        case 150:
                                            break;
                                        case 97:
                                        case 101:
                                        case 105:
                                        case 109:
                                        case 113:
                                        case 127:
                                        case 129:
                                        case 131:
                                            m37967final(4);
                                            m37964const(16777220);
                                            m37964const(16777216);
                                            return;
                                        case 98:
                                        case 102:
                                        case 106:
                                        case 110:
                                        case 114:
                                        case 137:
                                        case 144:
                                            break;
                                        case 99:
                                        case 103:
                                        case 107:
                                        case 111:
                                        case 115:
                                            m37967final(4);
                                            m37964const(16777219);
                                            m37964const(16777216);
                                            return;
                                        case 116:
                                        case 117:
                                        case 118:
                                        case 119:
                                        case 145:
                                        case 146:
                                        case 147:
                                        case 167:
                                        case 177:
                                            return;
                                        case 121:
                                        case 123:
                                        case 125:
                                            m37967final(3);
                                            m37964const(16777220);
                                            m37964const(16777216);
                                            return;
                                        case 132:
                                            m37973try(i2, 16777217);
                                            return;
                                        case 133:
                                        case 140:
                                            m37967final(1);
                                            m37964const(16777220);
                                            m37964const(16777216);
                                            return;
                                        case 134:
                                            m37967final(1);
                                            m37964const(16777218);
                                            return;
                                        case 135:
                                        case 141:
                                            m37967final(1);
                                            m37964const(16777219);
                                            m37964const(16777216);
                                            return;
                                        case 138:
                                            break;
                                        case 139:
                                        case 190:
                                        case 193:
                                            m37967final(1);
                                            m37964const(16777217);
                                            return;
                                        case 143:
                                            break;
                                        case 148:
                                        case 151:
                                        case 152:
                                            m37967final(4);
                                            m37964const(16777217);
                                            return;
                                        case 168:
                                        case 169:
                                            throw new RuntimeException("JSR/RET are not supported with computeFrames option");
                                        case 178:
                                            string = cthis.f34090else;
                                            m37972this(cfor, string);
                                            return;
                                        case 179:
                                            m37966else(cthis.f34090else);
                                            return;
                                        case 180:
                                            m37967final(1);
                                            string = cthis.f34090else;
                                            m37972this(cfor, string);
                                            return;
                                        case 181:
                                            m37966else(cthis.f34090else);
                                            m37969if();
                                            return;
                                        case 182:
                                        case 183:
                                        case 184:
                                        case 185:
                                            m37966else(cthis.f34090else);
                                            if (i != 184) {
                                                int iM37969if6 = m37969if();
                                                if (i == 183 && cthis.f34088case.charAt(0) == '<') {
                                                    m37971super(iM37969if6);
                                                }
                                            }
                                            string = cthis.f34090else;
                                            m37972this(cfor, string);
                                            return;
                                        case 186:
                                            m37966else(cthis.f34088case);
                                            string = cthis.f34088case;
                                            m37972this(cfor, string);
                                            return;
                                        case 187:
                                            iM37984abstract = 25165824 | cfor.m37986const(cthis.f34096try, i2);
                                            m37964const(iM37984abstract);
                                            return;
                                        case 188:
                                            m37969if();
                                            switch (i2) {
                                                case 4:
                                                    iM37984abstract = 285212681;
                                                    break;
                                                case 5:
                                                    iM37984abstract = 285212683;
                                                    break;
                                                case 6:
                                                    iM37984abstract = 285212674;
                                                    break;
                                                case 7:
                                                    iM37984abstract = 285212675;
                                                    break;
                                                case 8:
                                                    iM37984abstract = 285212682;
                                                    break;
                                                case 9:
                                                    iM37984abstract = 285212684;
                                                    break;
                                                case 10:
                                                    iM37984abstract = 285212673;
                                                    break;
                                                default:
                                                    iM37984abstract = 285212676;
                                                    break;
                                            }
                                            m37964const(iM37984abstract);
                                            return;
                                        case 189:
                                            String str = cthis.f34096try;
                                            m37969if();
                                            if (str.charAt(0) != '[') {
                                                iM37984abstract = cfor.m37984abstract(str) | 292552704;
                                                m37964const(iM37984abstract);
                                                return;
                                            }
                                            StringBuffer stringBuffer = new StringBuffer();
                                            stringBuffer.append('[');
                                            stringBuffer.append(str);
                                            string = stringBuffer.toString();
                                            m37972this(cfor, string);
                                            return;
                                        case 192:
                                            string = cthis.f34096try;
                                            m37969if();
                                            break;
                                        default:
                                            m37967final(i2);
                                            string = cthis.f34096try;
                                            m37972this(cfor, string);
                                            return;
                                    }
                            }
                    }
            }
        }
        m37967final(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010a A[SYNTHETIC] */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m37975catch(Cfor cfor, Celse celse, int i) {
        boolean zM37962break;
        boolean zM37962break2;
        int iM37970new;
        boolean z;
        int i2;
        int length = this.f34013if.length;
        int length2 = this.f34011for.length;
        if (celse.f34013if == null) {
            celse.f34013if = new int[length];
            zM37962break = true;
        } else {
            zM37962break = false;
        }
        int i3 = 0;
        while (true) {
            int iM37970new2 = 16777216;
            if (i3 >= length) {
                break;
            }
            int[] iArr = this.f34014new;
            if (iArr == null || i3 >= iArr.length || (i2 = iArr[i3]) == 0) {
                iM37970new2 = this.f34013if[i3];
            } else {
                int i4 = i2 & (-268435456);
                int i5 = 251658240 & i2;
                if (i5 == 16777216) {
                    iM37970new2 = i2;
                } else {
                    int i6 = i4 + (i5 == 33554432 ? this.f34013if[i2 & Ctry.f32296abstract] : this.f34011for[length2 - (i2 & Ctry.f32296abstract)]);
                    if ((i2 & 8388608) == 0 || (i6 != 16777220 && i6 != 16777219)) {
                        iM37970new2 = i6;
                    }
                }
            }
            if (this.f34012goto != null) {
                iM37970new2 = m37970new(cfor, iM37970new2);
            }
            zM37962break |= m37962break(cfor, iM37970new2, celse.f34013if, i3);
            i3++;
        }
        if (i > 0) {
            for (int i7 = 0; i7 < length; i7++) {
                zM37962break |= m37962break(cfor, this.f34013if[i7], celse.f34013if, i7);
            }
            if (celse.f34011for == null) {
                celse.f34011for = new int[1];
                z = true;
            } else {
                z = zM37962break;
            }
            return m37962break(cfor, i, celse.f34011for, 0) | z;
        }
        int length3 = this.f34011for.length + this.f34009do.f33944else;
        if (celse.f34011for == null) {
            celse.f34011for = new int[this.f34008case + length3];
            zM37962break2 = true;
        } else {
            zM37962break2 = zM37962break;
        }
        for (int i8 = 0; i8 < length3; i8++) {
            int iM37970new3 = this.f34011for[i8];
            if (this.f34012goto != null) {
                iM37970new3 = m37970new(cfor, iM37970new3);
            }
            zM37962break2 |= m37962break(cfor, iM37970new3, celse.f34011for, i8);
        }
        for (int i9 = 0; i9 < this.f34008case; i9++) {
            int i10 = this.f34015try[i9];
            int i11 = i10 & (-268435456);
            int i12 = i10 & 251658240;
            if (i12 == 16777216) {
                iM37970new = i10;
            } else {
                iM37970new = i11 + (i12 == 33554432 ? this.f34013if[i10 & Ctry.f32296abstract] : this.f34011for[length2 - (i10 & Ctry.f32296abstract)]);
                if ((i10 & 8388608) != 0) {
                    if (iM37970new == 16777220 || iM37970new == 16777219) {
                        iM37970new = 16777216;
                    }
                }
                if (this.f34012goto == null) {
                    iM37970new = m37970new(cfor, iM37970new);
                }
                zM37962break2 |= m37962break(cfor, iM37970new, celse.f34011for, length3 + i9);
            }
            if (this.f34012goto == null) {
            }
            zM37962break2 |= m37962break(cfor, iM37970new, celse.f34011for, length3 + i9);
        }
        return zM37962break2;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m37976goto(Cfor cfor, int i, f92[] f92VarArr, int i2) {
        int[] iArr = new int[i2];
        this.f34013if = iArr;
        this.f34011for = new int[0];
        int i3 = 1;
        if ((i & 8) != 0) {
            i3 = 0;
        } else if ((i & 524288) == 0) {
            iArr[0] = 24117248 | cfor.m37984abstract(cfor.f34052while);
        } else {
            iArr[0] = 16777222;
        }
        for (f92 f92Var : f92VarArr) {
            int iM37963class = m37963class(cfor, f92Var.m2221class());
            int[] iArr2 = this.f34013if;
            int i4 = i3 + 1;
            iArr2[i3] = iM37963class;
            if (iM37963class == 16777220 || iM37963class == 16777219) {
                iArr2[i4] = 16777216;
                i3 = i4 + 1;
            } else {
                i3 = i4;
            }
        }
        while (i3 < i2) {
            this.f34013if[i3] = 16777216;
            i3++;
        }
    }
}
