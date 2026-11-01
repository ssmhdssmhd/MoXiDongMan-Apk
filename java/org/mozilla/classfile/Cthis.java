package org.mozilla.classfile;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: org.mozilla.classfile.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis {

    /* renamed from: case, reason: not valid java name */
    public static final int f33896case = 5;

    /* renamed from: do, reason: not valid java name */
    public static final int f33897do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f33898else = 6;

    /* renamed from: for, reason: not valid java name */
    public static final int f33899for = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f33900goto = 7;

    /* renamed from: if, reason: not valid java name */
    public static final int f33901if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f33902new = 3;

    /* renamed from: this, reason: not valid java name */
    public static final int f33903this = 8;

    /* renamed from: try, reason: not valid java name */
    public static final int f33904try = 4;

    private Cthis() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m37893break(int i, int i2, Ctry ctry) {
        int iM37902goto = m37902goto(i);
        int iM37902goto2 = m37902goto(i2);
        boolean z = iM37902goto == 7;
        boolean z2 = iM37902goto2 == 7;
        if (i == i2 || (z && i2 == 5)) {
            return i;
        }
        if (iM37902goto == 0 || iM37902goto2 == 0) {
            return 0;
        }
        if (i == 5 && z2) {
            return i2;
        }
        if (z && z2) {
            String strM37899else = m37899else(i, ctry);
            String strM37899else2 = m37899else(i2, ctry);
            String str = (String) ctry.m37926throw(2);
            String str2 = (String) ctry.m37926throw(4);
            if (strM37899else.equals(str)) {
                strM37899else = str2;
            }
            if (strM37899else2.equals(str)) {
                strM37899else2 = str2;
            }
            Class<?> clsM37906try = m37906try(strM37899else);
            Class<?> clsM37906try2 = m37906try(strM37899else2);
            if (clsM37906try.isAssignableFrom(clsM37906try2)) {
                return i;
            }
            if (clsM37906try2.isAssignableFrom(clsM37906try)) {
                return i2;
            }
            if (clsM37906try2.isInterface() || clsM37906try.isInterface()) {
                return m37903if("java/lang/Object", ctry);
            }
            for (Class<? super Object> superclass = clsM37906try2.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
                if (superclass.isAssignableFrom(clsM37906try)) {
                    return m37903if(Cfor.J(superclass.getName()), ctry);
                }
            }
        }
        throw new IllegalArgumentException("bad merge attempt between " + m37897const(i, ctry) + " and " + m37897const(i2, ctry));
    }

    /* renamed from: case, reason: not valid java name */
    public static final int m37894case(int i) {
        return i >>> 8;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m37895catch(int[] iArr, int i, int[] iArr2, int i2, Ctry ctry) {
        System.out.print("locals: ");
        System.out.println(m37900final(iArr, i, ctry));
        System.out.print("stack: ");
        System.out.println(m37900final(iArr2, i2, ctry));
        System.out.println();
    }

    /* renamed from: class, reason: not valid java name */
    public static void m37896class(int[] iArr, int[] iArr2, Ctry ctry) {
        m37895catch(iArr, iArr.length, iArr2, iArr2.length, ctry);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m37897const(int i, Ctry ctry) {
        int iM37902goto = m37902goto(i);
        switch (iM37902goto) {
            case 0:
                return "top";
            case 1:
                return "int";
            case 2:
                return TypedValues.Custom.S_FLOAT;
            case 3:
                return "double";
            case 4:
                return "long";
            case 5:
                return "null";
            case 6:
                return "uninitialized_this";
            default:
                if (iM37902goto == 7) {
                    return m37899else(i, ctry);
                }
                if (iM37902goto == 8) {
                    return "uninitialized";
                }
                throw new IllegalArgumentException("bad type");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final int m37898do(int i) {
        return ((i & 65535) << 8) | 7;
    }

    /* renamed from: else, reason: not valid java name */
    public static final String m37899else(int i, Ctry ctry) {
        if (m37902goto(i) == 7) {
            return (String) ctry.m37926throw(m37894case(i));
        }
        throw new IllegalArgumentException("expecting object type");
    }

    /* renamed from: final, reason: not valid java name */
    private static String m37900final(int[] iArr, int i, Ctry ctry) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(m37897const(iArr[i2], ctry));
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static final int m37901for(int i) {
        return ((i & 65535) << 8) | 8;
    }

    /* renamed from: goto, reason: not valid java name */
    public static final int m37902goto(int i) {
        return i & 255;
    }

    /* renamed from: if, reason: not valid java name */
    public static final int m37903if(String str, Ctry ctry) {
        return m37898do(ctry.m37913do(str));
    }

    /* renamed from: new, reason: not valid java name */
    public static final int m37904new(String str, Ctry ctry) {
        if (str.length() != 1) {
            return m37903if(str, ctry);
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return 2;
        }
        if (cCharAt != 'S' && cCharAt != 'Z' && cCharAt != 'I') {
            if (cCharAt == 'J') {
                return 4;
            }
            switch (cCharAt) {
                case 'B':
                case 'C':
                    break;
                case 'D':
                    return 3;
                default:
                    throw new IllegalArgumentException("bad type");
            }
        }
        return 1;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m37905this(int i) {
        return i == 3 || i == 4;
    }

    /* renamed from: try, reason: not valid java name */
    private static Class<?> m37906try(String str) {
        try {
            return Class.forName(str.replace(Attributes.InternalPrefix, Ctry.f28883do));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
