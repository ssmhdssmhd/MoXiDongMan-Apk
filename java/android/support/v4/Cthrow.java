package android.support.v4;

import java.lang.reflect.Field;
import java.util.HashMap;
import net.minidev.asm.Accessor;
import net.minidev.asm.FieldFilter;
import org.objectweb.asm.Cbreak;

/* renamed from: android.support.v4.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow {
    /* renamed from: case, reason: not valid java name */
    public static String m7920case(String str) {
        int length = str.length();
        char[] cArr = new char[length + 3];
        cArr[0] = 'g';
        cArr[1] = 'e';
        cArr[2] = 't';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[3] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 3] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7921do(xz0 xz0Var, f92 f92Var) {
        switch (f92Var.m2225package()) {
            case 1:
                xz0Var.m9649return(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                break;
            case 2:
                xz0Var.m9649return(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                break;
            case 3:
                xz0Var.m9649return(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                break;
            case 4:
                xz0Var.m9649return(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                break;
            case 5:
                xz0Var.m9649return(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                break;
            case 6:
                xz0Var.m9649return(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                break;
            case 7:
                xz0Var.m9649return(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                break;
            case 8:
                xz0Var.m9649return(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                break;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static String m7922else(String str) {
        int length = str.length();
        char[] cArr = new char[length + 2];
        cArr[0] = 'i';
        cArr[1] = 's';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[2] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 2] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7923for(xz0 xz0Var, f92 f92Var) {
        switch (f92Var.m2225package()) {
            case 1:
                xz0Var.mo9627abstract(192, "java/lang/Boolean");
                xz0Var.m9649return(182, "java/lang/Boolean", "booleanValue", "()Z");
                break;
            case 2:
                xz0Var.mo9627abstract(192, "java/lang/Character");
                xz0Var.m9649return(182, "java/lang/Character", "charValue", "()C");
                break;
            case 3:
                xz0Var.mo9627abstract(192, "java/lang/Byte");
                xz0Var.m9649return(182, "java/lang/Byte", "byteValue", "()B");
                break;
            case 4:
                xz0Var.mo9627abstract(192, "java/lang/Short");
                xz0Var.m9649return(182, "java/lang/Short", "shortValue", "()S");
                break;
            case 5:
                xz0Var.mo9627abstract(192, "java/lang/Integer");
                xz0Var.m9649return(182, "java/lang/Integer", "intValue", "()I");
                break;
            case 6:
                xz0Var.mo9627abstract(192, "java/lang/Float");
                xz0Var.m9649return(182, "java/lang/Float", "floatValue", "()F");
                break;
            case 7:
                xz0Var.mo9627abstract(192, "java/lang/Long");
                xz0Var.m9649return(182, "java/lang/Long", "longValue", "()J");
                break;
            case 8:
                xz0Var.mo9627abstract(192, "java/lang/Double");
                xz0Var.m9649return(182, "java/lang/Double", "doubleValue", "()D");
                break;
            case 9:
                xz0Var.mo9627abstract(192, f92Var.m2228throw());
                break;
            default:
                xz0Var.mo9627abstract(192, f92Var.m2228throw());
                break;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m7924goto(String str) {
        int length = str.length();
        char[] cArr = new char[length + 3];
        cArr[0] = 's';
        cArr[1] = 'e';
        cArr[2] = 't';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[3] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 3] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7925if(xz0 xz0Var, Class<?> cls) {
        m7921do(xz0Var, f92.m2213private(cls));
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7926new(xz0 xz0Var, f92 f92Var) {
        switch (f92Var.m2225package()) {
            case 1:
                xz0Var.mo9627abstract(192, "java/lang/Boolean");
                xz0Var.m9649return(182, "java/lang/Boolean", "booleanValue", "()Z");
                break;
            case 2:
                xz0Var.mo9627abstract(192, "java/lang/Character");
                xz0Var.m9649return(182, "java/lang/Character", "charValue", "()C");
                break;
            case 3:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "byteValue", "()B");
                break;
            case 4:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "shortValue", "()S");
                break;
            case 5:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "intValue", "()I");
                break;
            case 6:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "floatValue", "()F");
                break;
            case 7:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "longValue", "()J");
                break;
            case 8:
                xz0Var.mo9627abstract(192, "java/lang/Number");
                xz0Var.m9649return(182, "java/lang/Number", "doubleValue", "()D");
                break;
            case 9:
                xz0Var.mo9627abstract(192, f92Var.m2228throw());
                break;
            default:
                xz0Var.mo9627abstract(192, f92Var.m2228throw());
                break;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static Cbreak[] m7927this(int i) {
        Cbreak[] cbreakArr = new Cbreak[i];
        for (int i2 = 0; i2 < i; i2++) {
            cbreakArr[i2] = new Cbreak();
        }
        return cbreakArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static Accessor[] m7928try(Class<?> cls, FieldFilter fieldFilter) {
        HashMap map = new HashMap();
        if (fieldFilter == null) {
            fieldFilter = s7.f6036do;
        }
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                String name = field.getName();
                if (!map.containsKey(name)) {
                    o oVar = new o(cls, field, fieldFilter);
                    if (oVar.m5431goto()) {
                        map.put(name, oVar);
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return (o[]) map.values().toArray(new o[map.size()]);
    }
}
