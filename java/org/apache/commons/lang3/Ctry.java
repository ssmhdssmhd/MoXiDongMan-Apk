package org.apache.commons.lang3;

import android.support.v4.d11;
import android.support.v4.v32;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import freemarker.template.Cstatic;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import okhttp3.HttpUrl;
import org.mozilla.javascript.optimizer.OptRuntime;

/* renamed from: org.apache.commons.lang3.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: case, reason: not valid java name */
    private static final Map<Class<?>, Class<?>> f28882case;

    /* renamed from: else, reason: not valid java name */
    private static final Map<String, String> f28884else;

    /* renamed from: for, reason: not valid java name */
    public static final char f28885for = '$';

    /* renamed from: goto, reason: not valid java name */
    private static final Map<String, String> f28886goto;

    /* renamed from: try, reason: not valid java name */
    private static final Map<Class<?>, Class<?>> f28889try;

    /* renamed from: do, reason: not valid java name */
    public static final char f28883do = '.';

    /* renamed from: if, reason: not valid java name */
    public static final String f28887if = String.valueOf(f28883do);

    /* renamed from: new, reason: not valid java name */
    public static final String f28888new = String.valueOf('$');

    /* renamed from: org.apache.commons.lang3.try$do, reason: invalid class name */
    public static class Cdo implements Iterable<Class<?>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Class f28890do;

        /* renamed from: org.apache.commons.lang3.try$do$do, reason: invalid class name and collision with other inner class name */
        public class C0396do implements Iterator<Class<?>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ d11 f28891do;

            public C0396do(d11 d11Var) {
                this.f28891do = d11Var;
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Class<?> next() {
                Class<?> cls = (Class) this.f28891do.getValue();
                this.f28891do.setValue(cls.getSuperclass());
                return cls;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f28891do.getValue() != null;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public Cdo(Class cls) {
            this.f28890do = cls;
        }

        @Override // java.lang.Iterable
        public Iterator<Class<?>> iterator() {
            return new C0396do(new d11(this.f28890do));
        }
    }

    /* renamed from: org.apache.commons.lang3.try$for, reason: invalid class name */
    public enum Cfor {
        INCLUDE,
        EXCLUDE
    }

    /* renamed from: org.apache.commons.lang3.try$if, reason: invalid class name */
    public static class Cif implements Iterable<Class<?>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterable f28894do;

        /* renamed from: org.apache.commons.lang3.try$if$do, reason: invalid class name */
        public class Cdo implements Iterator<Class<?>> {

            /* renamed from: do, reason: not valid java name */
            public Iterator<Class<?>> f28895do = Collections.emptySet().iterator();

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Set f28896for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Iterator f28897if;

            public Cdo(Iterator it, Set set) {
                this.f28897if = it;
                this.f28896for = set;
            }

            /* renamed from: if, reason: not valid java name */
            private void m32742if(Set<Class<?>> set, Class<?> cls) {
                for (Class<?> cls2 : cls.getInterfaces()) {
                    if (!this.f28896for.contains(cls2)) {
                        set.add(cls2);
                    }
                    m32742if(set, cls2);
                }
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Class<?> next() {
                if (this.f28895do.hasNext()) {
                    Class<?> next = this.f28895do.next();
                    this.f28896for.add(next);
                    return next;
                }
                Class<?> cls = (Class) this.f28897if.next();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                m32742if(linkedHashSet, cls);
                this.f28895do = linkedHashSet.iterator();
                return cls;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f28895do.hasNext() || this.f28897if.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public Cif(Iterable iterable) {
            this.f28894do = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<Class<?>> iterator() {
            return new Cdo(this.f28894do.iterator(), new HashSet());
        }
    }

    static {
        HashMap map = new HashMap();
        f28889try = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Character.TYPE, Character.class);
        map.put(Short.TYPE, Short.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Long.TYPE, Long.class);
        map.put(Double.TYPE, Double.class);
        map.put(Float.TYPE, Float.class);
        Class cls = Void.TYPE;
        map.put(cls, cls);
        f28882case = new HashMap();
        for (Class<?> cls2 : map.keySet()) {
            Class<?> cls3 = f28889try.get(cls2);
            if (!cls2.equals(cls3)) {
                f28882case.put(cls3, cls2);
            }
        }
        HashMap map2 = new HashMap();
        map2.put("int", OptRuntime.GeneratorState.resumptionPoint_TYPE);
        map2.put(TypedValues.Custom.S_BOOLEAN, "Z");
        map2.put(TypedValues.Custom.S_FLOAT, "F");
        map2.put("long", "J");
        map2.put("short", ExifInterface.LATITUDE_SOUTH);
        map2.put("byte", "B");
        map2.put("double", Cstatic.m1);
        map2.put("char", "C");
        map2.put("void", ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        HashMap map3 = new HashMap();
        for (Map.Entry entry : map2.entrySet()) {
            map3.put(entry.getValue(), entry.getKey());
        }
        f28884else = Collections.unmodifiableMap(map2);
        f28886goto = Collections.unmodifiableMap(map3);
    }

    public static Class<?>[] a(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            clsArr2[i] = m32733synchronized(clsArr[i]);
        }
        return clsArr2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m32702abstract(Class<?>[] clsArr, Class<?>... clsArr2) {
        return m32708continue(clsArr, clsArr2, v32.m8730break(Ccase.JAVA_1_5));
    }

    /* renamed from: break, reason: not valid java name */
    public static Class<?> m32703break(String str, boolean z) throws ClassNotFoundException {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            contextClassLoader = Ctry.class.getClassLoader();
        }
        return m32716goto(contextClassLoader, str, z);
    }

    /* renamed from: case, reason: not valid java name */
    private static String m32704case(String str) {
        String strM32238abstract = Cclass.m32238abstract(str);
        if (strM32238abstract == null) {
            return null;
        }
        int i = 0;
        while (strM32238abstract.startsWith("[")) {
            i++;
            strM32238abstract = strM32238abstract.substring(1);
        }
        if (i < 1) {
            return strM32238abstract;
        }
        if (strM32238abstract.startsWith("L")) {
            strM32238abstract = strM32238abstract.substring(1, strM32238abstract.endsWith(";") ? strM32238abstract.length() - 1 : strM32238abstract.length());
        } else if (strM32238abstract.length() > 0) {
            strM32238abstract = f28886goto.get(strM32238abstract.substring(0, 1));
        }
        StringBuilder sb = new StringBuilder(strM32238abstract);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m32705catch(Class<?> cls) {
        return cls == null ? "" : m32707const(cls.getName());
    }

    /* renamed from: class, reason: not valid java name */
    public static String m32706class(Object obj, String str) {
        return obj == null ? str : m32707const(obj.getClass().getName());
    }

    /* renamed from: const, reason: not valid java name */
    public static String m32707const(String str) {
        return m32735throw(m32704case(str));
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m32708continue(Class<?>[] clsArr, Class<?>[] clsArr2, boolean z) {
        if (!org.apache.commons.lang3.Cif.e0(clsArr, clsArr2)) {
            return false;
        }
        if (clsArr == null) {
            clsArr = org.apache.commons.lang3.Cif.f28726if;
        }
        if (clsArr2 == null) {
            clsArr2 = org.apache.commons.lang3.Cif.f28726if;
        }
        for (int i = 0; i < clsArr.length; i++) {
            if (!m32725private(clsArr[i], clsArr2[i], z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: default, reason: not valid java name */
    public static String m32709default(Object obj, String str) {
        return obj == null ? str : m32736throws(obj.getClass());
    }

    /* renamed from: do, reason: not valid java name */
    public static List<Class<?>> m32710do(List<String> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Class.forName(it.next()));
            } catch (Exception unused) {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* renamed from: else, reason: not valid java name */
    public static Class<?> m32711else(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return m32716goto(classLoader, str, true);
    }

    /* renamed from: extends, reason: not valid java name */
    public static Iterable<Class<?>> m32712extends(Class<?> cls) {
        return m32714finally(cls, Cfor.EXCLUDE);
    }

    /* renamed from: final, reason: not valid java name */
    public static String m32713final(Class<?> cls) {
        return cls == null ? "" : m32735throw(cls.getName());
    }

    /* renamed from: finally, reason: not valid java name */
    public static Iterable<Class<?>> m32714finally(Class<?> cls, Cfor cfor) {
        Cdo cdo = new Cdo(cls);
        return cfor != Cfor.INCLUDE ? cdo : new Cif(cdo);
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Class<?>> m32715for(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m32723new(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Class<?> m32716goto(ClassLoader classLoader, String str, boolean z) throws ClassNotFoundException {
        try {
            Map<String, String> map = f28884else;
            if (!map.containsKey(str)) {
                return Class.forName(m32718implements(str), z, classLoader);
            }
            return Class.forName("[" + map.get(str), z, classLoader).getComponentType();
        } catch (ClassNotFoundException e) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                try {
                    return m32716goto(classLoader, str.substring(0, iLastIndexOf) + '$' + str.substring(iLastIndexOf + 1), z);
                } catch (ClassNotFoundException unused) {
                    throw e;
                }
            }
            throw e;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static List<String> m32717if(List<Class<?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Class<?> cls : list) {
            if (cls == null) {
                arrayList.add(null);
            } else {
                arrayList.add(cls.getName());
            }
        }
        return arrayList;
    }

    /* renamed from: implements, reason: not valid java name */
    private static String m32718implements(String str) {
        String strM32238abstract = Cclass.m32238abstract(str);
        Objects.requireNonNull(strM32238abstract, "className must not be null.");
        if (!strM32238abstract.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)) {
            return strM32238abstract;
        }
        StringBuilder sb = new StringBuilder();
        while (strM32238abstract.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)) {
            strM32238abstract = strM32238abstract.substring(0, strM32238abstract.length() - 2);
            sb.append("[");
        }
        String str2 = f28884else.get(strM32238abstract);
        if (str2 != null) {
            sb.append(str2);
        } else {
            sb.append("L");
            sb.append(strM32238abstract);
            sb.append(";");
        }
        return sb.toString();
    }

    /* renamed from: import, reason: not valid java name */
    public static String m32719import(Class<?> cls) {
        return cls == null ? "" : m32727public(cls.getName());
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Class<?>[] m32720instanceof(Object... objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return org.apache.commons.lang3.Cif.f28726if;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            clsArr[i] = objArr[i] == null ? null : objArr[i].getClass();
        }
        return clsArr;
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m32721interface(Class<?> cls) {
        return f28882case.containsKey(cls);
    }

    /* renamed from: native, reason: not valid java name */
    public static String m32722native(Object obj, String str) {
        return obj == null ? str : m32727public(obj.getClass().getName());
    }

    /* renamed from: new, reason: not valid java name */
    private static void m32723new(Class<?> cls, HashSet<Class<?>> hashSet) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    m32723new(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m32724package(Class<?> cls, Class<?> cls2) {
        return m32725private(cls, cls2, v32.m8730break(Ccase.JAVA_1_5));
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m32725private(Class<?> cls, Class<?> cls2, boolean z) {
        if (cls2 == null) {
            return false;
        }
        if (cls == null) {
            return !cls2.isPrimitive();
        }
        if (z) {
            if (cls.isPrimitive() && !cls2.isPrimitive() && (cls = m32726protected(cls)) == null) {
                return false;
            }
            if (cls2.isPrimitive() && !cls.isPrimitive() && (cls = m32733synchronized(cls)) == null) {
                return false;
            }
        }
        if (cls.equals(cls2)) {
            return true;
        }
        if (!cls.isPrimitive()) {
            return cls2.isAssignableFrom(cls);
        }
        if (!cls2.isPrimitive()) {
            return false;
        }
        Class cls3 = Integer.TYPE;
        if (cls3.equals(cls)) {
            return Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
        }
        Class cls4 = Long.TYPE;
        if (cls4.equals(cls)) {
            return Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Boolean.TYPE.equals(cls) || Double.TYPE.equals(cls)) {
            return false;
        }
        Class cls5 = Float.TYPE;
        if (cls5.equals(cls)) {
            return Double.TYPE.equals(cls2);
        }
        if (Character.TYPE.equals(cls)) {
            return cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Short.TYPE.equals(cls)) {
            return cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        if (Byte.TYPE.equals(cls)) {
            return Short.TYPE.equals(cls2) || cls3.equals(cls2) || cls4.equals(cls2) || cls5.equals(cls2) || Double.TYPE.equals(cls2);
        }
        return false;
    }

    /* renamed from: protected, reason: not valid java name */
    public static Class<?> m32726protected(Class<?> cls) {
        return (cls == null || !cls.isPrimitive()) ? cls : f28889try.get(cls);
    }

    /* renamed from: public, reason: not valid java name */
    public static String m32727public(String str) {
        return m32732switch(m32704case(str));
    }

    /* renamed from: return, reason: not valid java name */
    public static String m32728return(Class<?> cls) {
        return cls == null ? "" : m32732switch(cls.getName());
    }

    /* renamed from: static, reason: not valid java name */
    public static String m32729static(Object obj, String str) {
        return obj == null ? str : m32728return(obj.getClass());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m32730strictfp(Class<?> cls) {
        return (cls == null || cls.getEnclosingClass() == null) ? false : true;
    }

    /* renamed from: super, reason: not valid java name */
    public static String m32731super(Object obj, String str) {
        return obj == null ? str : m32713final(obj.getClass());
    }

    /* renamed from: switch, reason: not valid java name */
    public static String m32732switch(String str) {
        if (Cclass.A(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (str.startsWith("[")) {
            while (str.charAt(0) == '[') {
                str = str.substring(1);
                sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            }
            if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
                str = str.substring(1, str.length() - 1);
            }
            Map<String, String> map = f28886goto;
            if (map.containsKey(str)) {
                str = map.get(str);
            }
        }
        int iLastIndexOf = str.lastIndexOf(46);
        int iIndexOf = str.indexOf(36, iLastIndexOf != -1 ? iLastIndexOf + 1 : 0);
        String strSubstring = str.substring(iLastIndexOf + 1);
        if (iIndexOf != -1) {
            strSubstring = strSubstring.replace('$', f28883do);
        }
        return strSubstring + ((Object) sb);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static Class<?> m32733synchronized(Class<?> cls) {
        return f28882case.get(cls);
    }

    /* renamed from: this, reason: not valid java name */
    public static Class<?> m32734this(String str) throws ClassNotFoundException {
        return m32703break(str, true);
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m32735throw(String str) {
        if (Cclass.A(str)) {
            return "";
        }
        while (str.charAt(0) == '[') {
            str = str.substring(1);
        }
        if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
            str = str.substring(1);
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : str.substring(0, iLastIndexOf);
    }

    /* renamed from: throws, reason: not valid java name */
    public static String m32736throws(Class<?> cls) {
        return cls == null ? "" : cls.getSimpleName();
    }

    /* renamed from: transient, reason: not valid java name */
    public static Class<?>[] m32737transient(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            clsArr2[i] = m32726protected(clsArr[i]);
        }
        return clsArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static List<Class<?>> m32738try(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            arrayList.add(superclass);
        }
        return arrayList;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m32739volatile(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || m32721interface(cls);
    }

    /* renamed from: while, reason: not valid java name */
    public static Method m32740while(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        Method method = cls.getMethod(str, clsArr);
        if (Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
            return method;
        }
        ArrayList<Class> arrayList = new ArrayList();
        arrayList.addAll(m32715for(cls));
        arrayList.addAll(m32738try(cls));
        for (Class cls2 : arrayList) {
            if (Modifier.isPublic(cls2.getModifiers())) {
                try {
                    Method method2 = cls2.getMethod(str, clsArr);
                    if (Modifier.isPublic(method2.getDeclaringClass().getModifiers())) {
                        return method2;
                    }
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        throw new NoSuchMethodException("Can't find a public method for " + str + Cclass.f28652do + org.apache.commons.lang3.Cif.J2(clsArr));
    }
}
