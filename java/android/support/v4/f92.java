package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.HttpUrl;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
public class f92 {

    /* renamed from: break, reason: not valid java name */
    public static final int f1715break = 5;

    /* renamed from: case, reason: not valid java name */
    public static final int f1716case = 1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f1717catch = 6;

    /* renamed from: class, reason: not valid java name */
    public static final int f1718class = 7;

    /* renamed from: const, reason: not valid java name */
    public static final int f1719const = 8;

    /* renamed from: default, reason: not valid java name */
    public static final f92 f1720default;

    /* renamed from: else, reason: not valid java name */
    public static final int f1721else = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f1722final = 9;

    /* renamed from: goto, reason: not valid java name */
    public static final int f1723goto = 3;

    /* renamed from: import, reason: not valid java name */
    public static final f92 f1724import;

    /* renamed from: native, reason: not valid java name */
    public static final f92 f1725native;

    /* renamed from: public, reason: not valid java name */
    public static final f92 f1726public;

    /* renamed from: return, reason: not valid java name */
    public static final f92 f1727return;

    /* renamed from: static, reason: not valid java name */
    public static final f92 f1728static;

    /* renamed from: super, reason: not valid java name */
    public static final int f1729super = 10;

    /* renamed from: switch, reason: not valid java name */
    public static final f92 f1730switch;

    /* renamed from: this, reason: not valid java name */
    public static final int f1731this = 4;

    /* renamed from: throw, reason: not valid java name */
    public static final int f1732throw = 11;

    /* renamed from: throws, reason: not valid java name */
    public static final f92 f1733throws;

    /* renamed from: try, reason: not valid java name */
    public static final int f1734try = 0;

    /* renamed from: while, reason: not valid java name */
    public static final f92 f1735while;

    /* renamed from: do, reason: not valid java name */
    private final int f1736do;

    /* renamed from: for, reason: not valid java name */
    private final int f1737for;

    /* renamed from: if, reason: not valid java name */
    private final char[] f1738if;

    /* renamed from: new, reason: not valid java name */
    private final int f1739new;

    static {
        m2205do();
        f1735while = new f92(0, null, 1443168256, 1);
        f1724import = new f92(1, null, 1509950721, 1);
        f1725native = new f92(2, null, 1124075009, 1);
        f1726public = new f92(3, null, 1107297537, 1);
        f1727return = new f92(4, null, 1392510721, 1);
        f1728static = new f92(5, null, 1224736769, 1);
        f1730switch = new f92(6, null, 1174536705, 1);
        f1733throws = new f92(7, null, 1241579778, 1);
        f1720default = new f92(8, null, 1141048066, 1);
    }

    private f92(int i, char[] cArr, int i2, int i3) {
        this.f1736do = i;
        this.f1738if = cArr;
        this.f1737for = i2;
        this.f1739new = i3;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static f92 m2199abstract(String str) {
        return m2209if(str.toCharArray(), 0);
    }

    /* renamed from: case, reason: not valid java name */
    public static f92[] m2200case(String str) {
        char[] charArray = str.toCharArray();
        int i = 1;
        int i2 = 1;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            char c = charArray[i2];
            if (c == ')') {
                break;
            }
            if (c == 'L') {
                while (true) {
                    i2 = i4 + 1;
                    if (charArray[i4] == ';') {
                        break;
                    }
                    i4 = i2;
                }
                i3++;
            } else {
                if (c != '[') {
                    i3++;
                }
                i2 = i4;
            }
        }
        f92[] f92VarArr = new f92[i3];
        int i5 = 0;
        while (charArray[i] != ')') {
            f92VarArr[i5] = m2209if(charArray, i);
            i += f92VarArr[i5].f1739new + (f92VarArr[i5].f1736do == 10 ? 2 : 0);
            i5++;
        }
        return f92VarArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m2201catch(Constructor constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : parameterTypes) {
            m2212new(stringBuffer, cls);
        }
        stringBuffer.append(")V");
        return stringBuffer.toString();
    }

    /* renamed from: const, reason: not valid java name */
    public static String m2202const(Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        m2212new(stringBuffer, cls);
        return stringBuffer.toString();
    }

    /* renamed from: continue, reason: not valid java name */
    public static f92 m2203continue(Constructor constructor) {
        return m2199abstract(m2201catch(constructor));
    }

    /* renamed from: default, reason: not valid java name */
    public static f92 m2204default(String str) {
        return m2209if(str.toCharArray(), str.indexOf(41) + 1);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ void m2205do() {
    }

    /* renamed from: else, reason: not valid java name */
    public static f92[] m2206else(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        f92[] f92VarArr = new f92[parameterTypes.length];
        for (int length = parameterTypes.length - 1; length >= 0; length--) {
            f92VarArr[length] = m2213private(parameterTypes[length]);
        }
        return f92VarArr;
    }

    /* renamed from: extends, reason: not valid java name */
    public static f92 m2207extends(Method method) {
        return m2213private(method.getReturnType());
    }

    /* renamed from: for, reason: not valid java name */
    private void m2208for(StringBuffer stringBuffer) {
        char c;
        char[] cArr = this.f1738if;
        if (cArr == null) {
            c = (char) ((this.f1737for & (-16777216)) >>> 24);
        } else if (this.f1736do != 10) {
            stringBuffer.append(cArr, this.f1737for, this.f1739new);
            return;
        } else {
            stringBuffer.append(ay0.f288try);
            stringBuffer.append(this.f1738if, this.f1737for, this.f1739new);
            c = ';';
        }
        stringBuffer.append(c);
    }

    /* renamed from: if, reason: not valid java name */
    private static f92 m2209if(char[] cArr, int i) {
        int i2;
        char c = cArr[i];
        if (c == 'F') {
            return f1730switch;
        }
        if (c == 'L') {
            int i3 = 1;
            while (cArr[i + i3] != ';') {
                i3++;
            }
            return new f92(10, cArr, i + 1, i3 - 1);
        }
        if (c == 'S') {
            return f1727return;
        }
        if (c == 'V') {
            return f1735while;
        }
        if (c == 'I') {
            return f1728static;
        }
        if (c == 'J') {
            return f1733throws;
        }
        if (c == 'Z') {
            return f1724import;
        }
        if (c != '[') {
            switch (c) {
                case 'B':
                    return f1726public;
                case 'C':
                    return f1725native;
                case 'D':
                    return f1720default;
                default:
                    return new f92(11, cArr, i, cArr.length - i);
            }
        }
        int i4 = 1;
        while (true) {
            i2 = i + i4;
            if (cArr[i2] != '[') {
                break;
            }
            i4++;
        }
        if (cArr[i2] == 'L') {
            do {
                i4++;
            } while (cArr[i + i4] != ';');
        }
        return new f92(9, cArr, i, i4 + 1);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m2210import(f92 f92Var, f92... f92VarArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (f92 f92Var2 : f92VarArr) {
            f92Var2.m2208for(stringBuffer);
        }
        stringBuffer.append(')');
        f92Var.m2208for(stringBuffer);
        return stringBuffer.toString();
    }

    /* renamed from: native, reason: not valid java name */
    public static String m2211native(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : parameterTypes) {
            m2212new(stringBuffer, cls);
        }
        stringBuffer.append(')');
        m2212new(stringBuffer, method.getReturnType());
        return stringBuffer.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private static void m2212new(StringBuffer stringBuffer, Class cls) {
        while (!cls.isPrimitive()) {
            if (!cls.isArray()) {
                stringBuffer.append(ay0.f288try);
                String name = cls.getName();
                int length = name.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = name.charAt(i);
                    if (cCharAt == '.') {
                        cCharAt = Attributes.InternalPrefix;
                    }
                    stringBuffer.append(cCharAt);
                }
                stringBuffer.append(';');
                return;
            }
            stringBuffer.append('[');
            cls = cls.getComponentType();
        }
        stringBuffer.append(cls == Integer.TYPE ? 'I' : cls == Void.TYPE ? 'V' : cls == Boolean.TYPE ? ay0.f286for : cls == Byte.TYPE ? 'B' : cls == Character.TYPE ? 'C' : cls == Short.TYPE ? 'S' : cls == Double.TYPE ? 'D' : cls == Float.TYPE ? 'F' : 'J');
    }

    /* renamed from: private, reason: not valid java name */
    public static f92 m2213private(Class cls) {
        return cls.isPrimitive() ? cls == Integer.TYPE ? f1728static : cls == Void.TYPE ? f1735while : cls == Boolean.TYPE ? f1724import : cls == Byte.TYPE ? f1726public : cls == Character.TYPE ? f1725native : cls == Short.TYPE ? f1727return : cls == Double.TYPE ? f1720default : cls == Float.TYPE ? f1730switch : f1733throws : m2199abstract(m2202const(cls));
    }

    /* renamed from: public, reason: not valid java name */
    public static f92 m2214public(f92 f92Var, f92... f92VarArr) {
        return m2199abstract(m2210import(f92Var, f92VarArr));
    }

    /* renamed from: return, reason: not valid java name */
    public static f92 m2215return(String str) {
        return m2209if(str.toCharArray(), 0);
    }

    /* renamed from: static, reason: not valid java name */
    public static f92 m2216static(String str) {
        char[] charArray = str.toCharArray();
        return new f92(charArray[0] == '[' ? 9 : 10, charArray, 0, charArray.length);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static f92 m2217strictfp(Method method) {
        return m2199abstract(m2211native(method));
    }

    /* renamed from: this, reason: not valid java name */
    public static int m2218this(String str) {
        int i;
        char cCharAt;
        int i2 = 1;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            i = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 == ')') {
                break;
            }
            if (cCharAt2 == 'L') {
                while (true) {
                    i3 = i + 1;
                    if (str.charAt(i) == ';') {
                        break;
                    }
                    i = i3;
                }
                i4++;
            } else {
                if (cCharAt2 == '[') {
                    while (true) {
                        cCharAt = str.charAt(i);
                        if (cCharAt != '[') {
                            break;
                        }
                        i++;
                    }
                    if (cCharAt == 'D' || cCharAt == 'J') {
                        i4--;
                    }
                } else {
                    i4 = (cCharAt2 == 'D' || cCharAt2 == 'J') ? i4 + 2 : i4 + 1;
                }
                i3 = i;
            }
        }
        char cCharAt3 = str.charAt(i);
        int i5 = i4 << 2;
        if (cCharAt3 == 'V') {
            i2 = 0;
        } else if (cCharAt3 == 'D' || cCharAt3 == 'J') {
            i2 = 2;
        }
        return i5 | i2;
    }

    /* renamed from: while, reason: not valid java name */
    public static String m2219while(Class cls) {
        return cls.getName().replace(Ctry.f28883do, Attributes.InternalPrefix);
    }

    /* renamed from: break, reason: not valid java name */
    public String m2220break() {
        switch (this.f1736do) {
            case 0:
                return "void";
            case 1:
                return TypedValues.Custom.S_BOOLEAN;
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return TypedValues.Custom.S_FLOAT;
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuffer stringBuffer = new StringBuffer(m2226super().m2220break());
                for (int iM2222final = m2222final(); iM2222final > 0; iM2222final--) {
                    stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                }
                return stringBuffer.toString();
            case 10:
                return new String(this.f1738if, this.f1737for, this.f1739new).replace(Attributes.InternalPrefix, Ctry.f28883do);
            default:
                return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public String m2221class() {
        StringBuffer stringBuffer = new StringBuffer();
        m2208for(stringBuffer);
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f92)) {
            return false;
        }
        f92 f92Var = (f92) obj;
        int i = this.f1736do;
        if (i != f92Var.f1736do) {
            return false;
        }
        if (i >= 9) {
            int i2 = this.f1739new;
            if (i2 != f92Var.f1739new) {
                return false;
            }
            int i3 = this.f1737for;
            int i4 = f92Var.f1737for;
            int i5 = i2 + i3;
            while (i3 < i5) {
                if (this.f1738if[i3] != f92Var.f1738if[i4]) {
                    return false;
                }
                i3++;
                i4++;
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public int m2222final() {
        int i = 1;
        while (this.f1738if[this.f1737for + i] == '[') {
            i++;
        }
        return i;
    }

    /* renamed from: finally, reason: not valid java name */
    public int m2223finally() {
        if (this.f1738if == null) {
            return this.f1737for & 255;
        }
        return 1;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m2224goto() {
        return m2218this(m2221class());
    }

    public int hashCode() {
        int i = this.f1736do;
        int i2 = i * 13;
        if (i >= 9) {
            int i3 = this.f1737for;
            int i4 = this.f1739new + i3;
            while (i3 < i4) {
                i2 = (i2 + this.f1738if[i3]) * 17;
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: package, reason: not valid java name */
    public int m2225package() {
        return this.f1736do;
    }

    /* renamed from: super, reason: not valid java name */
    public f92 m2226super() {
        return m2209if(this.f1738if, this.f1737for + m2222final());
    }

    /* renamed from: switch, reason: not valid java name */
    public int m2227switch(int i) {
        if (i == 46 || i == 79) {
            return i + (this.f1738if == null ? (this.f1737for & 65280) >> 8 : 4);
        }
        return i + (this.f1738if == null ? (this.f1737for & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16 : 4);
    }

    /* renamed from: throw, reason: not valid java name */
    public String m2228throw() {
        return new String(this.f1738if, this.f1737for, this.f1739new);
    }

    /* renamed from: throws, reason: not valid java name */
    public f92 m2229throws() {
        return m2204default(m2221class());
    }

    public String toString() {
        return m2221class();
    }

    /* renamed from: try, reason: not valid java name */
    public f92[] m2230try() {
        return m2200case(m2221class());
    }
}
