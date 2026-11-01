package freemarker.ext.beans;

import android.support.v4.al2;
import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.vl2;
import com.umeng.analytics.pro.ak;
import freemarker.template.utility.Cif;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import okhttp3.HttpUrl;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: freemarker.ext.beans.j$do, reason: invalid class name */
    public static class Cdo extends al2 {
        public Cdo(Object obj) {
            super(obj);
        }

        @Override // android.support.v4.al2
        /* renamed from: do */
        public String mo273do(Object obj) {
            return ((Cthis) obj).mo28628do();
        }
    }

    private j() {
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m28649break(Class cls, Class cls2) {
        Class cls3 = Short.TYPE;
        if (cls2 == cls3 && cls == Byte.TYPE) {
            return true;
        }
        Class cls4 = Integer.TYPE;
        if (cls2 == cls4 && (cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        Class cls5 = Long.TYPE;
        if (cls2 == cls5 && (cls == cls4 || cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        Class cls6 = Float.TYPE;
        if (cls2 == cls6 && (cls == cls5 || cls == cls4 || cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        if (cls2 == Double.TYPE) {
            return cls == cls6 || cls == cls5 || cls == cls4 || cls == cls3 || cls == Byte.TYPE;
        }
        return false;
    }

    /* renamed from: case, reason: not valid java name */
    public static Object[] m28650case(Member member) {
        return m28662try(member, member instanceof Constructor);
    }

    /* renamed from: catch, reason: not valid java name */
    public static k52 m28651catch(Object obj, Cthis cthis, Throwable th) {
        return m28652class(obj, new Cdo(cthis), cthis.mo28629else(), cthis.mo28627case(), th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: class, reason: not valid java name */
    private static k52 m28652class(Object obj, Object obj2, boolean z, boolean z2, Throwable th) {
        Throwable targetException;
        while ((th instanceof InvocationTargetException) && (targetException = ((InvocationTargetException) th).getTargetException()) != null) {
            th = targetException;
        }
        Object[] objArr = new Object[4];
        objArr[0] = m28662try(obj2, z2);
        objArr[1] = " threw an exception";
        objArr[2] = (z || z2) ? "" : new Object[]{" when invoked on ", obj.getClass(), " object ", new fl2(obj)};
        objArr[3] = "; see cause exception in the Java stack trace.";
        return new vl2(th, objArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static k52 m28653const(Object obj, Member member, Throwable th) {
        return m28652class(obj, member, (member.getModifiers() & 8) != 0, member instanceof Constructor, th);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m28654do(Class cls, Class cls2, Set set) {
        if (cls.isAssignableFrom(cls2)) {
            set.add(cls);
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            m28654do(superclass, cls2, set);
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            m28654do(cls3, cls2, set);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m28655else(Class cls, Class cls2, boolean z, int i) {
        if (i >= 4) {
            return 0;
        }
        if (cls2.isAssignableFrom(cls)) {
            return cls2 == cls ? 1 : 4;
        }
        boolean zIsPrimitive = cls.isPrimitive();
        boolean zIsPrimitive2 = cls2.isPrimitive();
        if (!zIsPrimitive) {
            return (i < 3 && z && !zIsPrimitive2 && Number.class.isAssignableFrom(cls) && Number.class.isAssignableFrom(cls2) && m28661this(cls, cls2)) ? 3 : 0;
        }
        if (zIsPrimitive2) {
            return (i < 3 && m28649break(cls, cls2)) ? 3 : 0;
        }
        if (!z) {
            return 0;
        }
        Class clsM29286while = Cif.m29286while(cls);
        if (clsM29286while == cls2) {
            return 2;
        }
        if (cls2.isAssignableFrom(clsM29286while)) {
            return 4;
        }
        return (i < 3 && Number.class.isAssignableFrom(clsM29286while) && Number.class.isAssignableFrom(cls2) && m28661this(clsM29286while, cls2)) ? 3 : 0;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m28656final(Member member) {
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            throw new IllegalArgumentException("\"member\" must be a Method or Constructor");
        }
        StringBuilder sb = new StringBuilder();
        if ((member.getModifiers() & 8) != 0) {
            sb.append("static ");
        }
        String strM29270break = Cif.m29270break(member.getDeclaringClass());
        if (strM29270break != null) {
            sb.append(strM29270break);
            sb.append(Ctry.f28883do);
        }
        sb.append(member.getName());
        sb.append('(');
        Class[] clsArrM28660new = m28660new(member);
        for (int i = 0; i < clsArrM28660new.length; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            String strM29270break2 = Cif.m29270break(clsArrM28660new[i]);
            if (i == clsArrM28660new.length - 1 && strM29270break2.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI) && m28658goto(member)) {
                sb.append(strM29270break2.substring(0, strM29270break2.length() - 2));
                sb.append("...");
            } else {
                sb.append(strM29270break2);
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m28657for(String str, Class<?> cls) {
        int i;
        if (str.startsWith("get")) {
            i = 3;
        } else {
            if (cls != Boolean.TYPE || !str.startsWith(ak.ae)) {
                return null;
            }
            i = 2;
        }
        int length = str.length();
        if (i == length) {
            return null;
        }
        char cCharAt = str.charAt(i);
        int i2 = i + 1;
        if (i2 < length && Character.isUpperCase(str.charAt(i2)) && Character.isUpperCase(cCharAt)) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(Character.toLowerCase(cCharAt));
        sb.append((CharSequence) str, i2, length);
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m28658goto(Member member) {
        if (member instanceof Method) {
            return ((Method) member).isVarArgs();
        }
        if (member instanceof Constructor) {
            return ((Constructor) member).isVarArgs();
        }
        throw new mc();
    }

    /* renamed from: if, reason: not valid java name */
    public static Set m28659if(Class cls, Class cls2) {
        HashSet hashSet = new HashSet();
        m28654do(cls, cls2, hashSet);
        return hashSet;
    }

    /* renamed from: new, reason: not valid java name */
    public static Class[] m28660new(Member member) {
        if (member instanceof Method) {
            return ((Method) member).getParameterTypes();
        }
        if (member instanceof Constructor) {
            return ((Constructor) member).getParameterTypes();
        }
        throw new IllegalArgumentException("\"member\" must be Method or Constructor");
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m28661this(Class cls, Class cls2) {
        if (cls2 == Short.class && cls == Byte.class) {
            return true;
        }
        if (cls2 == Integer.class && (cls == Short.class || cls == Byte.class)) {
            return true;
        }
        if (cls2 == Long.class && (cls == Integer.class || cls == Short.class || cls == Byte.class)) {
            return true;
        }
        if (cls2 == Float.class && (cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class)) {
            return true;
        }
        if (cls2 == Double.class) {
            return cls == Float.class || cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class;
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private static Object[] m28662try(Object obj, boolean z) {
        Object[] objArr = new Object[3];
        objArr[0] = "Java ";
        objArr[1] = z ? "constructor " : "method ";
        objArr[2] = new fl2(obj);
        return objArr;
    }
}
