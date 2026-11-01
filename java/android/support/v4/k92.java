package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableIterable;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.jvm.internal.markers.KMutableSet;

/* loaded from: classes3.dex */
public class k92 {
    public static void a(String str) {
        throw m4315instanceof(new ClassCastException(str));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m4297abstract(Object obj) {
        return (obj instanceof Iterable) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableIterable));
    }

    /* renamed from: break, reason: not valid java name */
    public static ListIterator m4298break(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableListIterator)) {
            a(str);
        }
        return m4327switch(obj);
    }

    /* renamed from: case, reason: not valid java name */
    public static Iterator m4299case(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableIterator)) {
            a(str);
        }
        return m4323return(obj);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Map m4300catch(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap)) {
            m4328synchronized(obj, "kotlin.collections.MutableMap");
        }
        return m4331throws(obj);
    }

    /* renamed from: class, reason: not valid java name */
    public static Map m4301class(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap)) {
            a(str);
        }
        return m4331throws(obj);
    }

    /* renamed from: const, reason: not valid java name */
    public static Map.Entry m4302const(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap.Entry)) {
            m4328synchronized(obj, "kotlin.collections.MutableMap.MutableEntry");
        }
        return m4304default(obj);
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m4303continue(Object obj) {
        return (obj instanceof Iterator) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableIterator));
    }

    /* renamed from: default, reason: not valid java name */
    public static Map.Entry m4304default(Object obj) {
        try {
            return (Map.Entry) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Collection m4305do(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableCollection)) {
            m4328synchronized(obj, "kotlin.collections.MutableCollection");
        }
        return m4317native(obj);
    }

    /* renamed from: else, reason: not valid java name */
    public static List m4306else(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableList)) {
            m4328synchronized(obj, "kotlin.collections.MutableList");
        }
        return m4324static(obj);
    }

    /* renamed from: extends, reason: not valid java name */
    public static Set m4307extends(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Map.Entry m4308final(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap.Entry)) {
            a(str);
        }
        return m4304default(obj);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m4309finally(Object obj) {
        if (obj instanceof FunctionBase) {
            return ((FunctionBase) obj).getArity();
        }
        if (obj instanceof Function0) {
            return 0;
        }
        if (obj instanceof Function1) {
            return 1;
        }
        if (obj instanceof Function2) {
            return 2;
        }
        if (obj instanceof Function3) {
            return 3;
        }
        if (obj instanceof Function4) {
            return 4;
        }
        if (obj instanceof Function5) {
            return 5;
        }
        if (obj instanceof Function6) {
            return 6;
        }
        if (obj instanceof Function7) {
            return 7;
        }
        if (obj instanceof Function8) {
            return 8;
        }
        if (obj instanceof Function9) {
            return 9;
        }
        if (obj instanceof Function10) {
            return 10;
        }
        if (obj instanceof Function11) {
            return 11;
        }
        if (obj instanceof Function12) {
            return 12;
        }
        if (obj instanceof Function13) {
            return 13;
        }
        if (obj instanceof Function14) {
            return 14;
        }
        if (obj instanceof Function15) {
            return 15;
        }
        if (obj instanceof Function16) {
            return 16;
        }
        if (obj instanceof Function17) {
            return 17;
        }
        if (obj instanceof Function18) {
            return 18;
        }
        if (obj instanceof Function19) {
            return 19;
        }
        if (obj instanceof Function20) {
            return 20;
        }
        if (obj instanceof Function21) {
            return 21;
        }
        return obj instanceof Function22 ? 22 : -1;
    }

    /* renamed from: for, reason: not valid java name */
    public static Iterable m4310for(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableIterable)) {
            m4328synchronized(obj, "kotlin.collections.MutableIterable");
        }
        return m4322public(obj);
    }

    /* renamed from: goto, reason: not valid java name */
    public static List m4311goto(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableList)) {
            a(str);
        }
        return m4324static(obj);
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection m4312if(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableCollection)) {
            a(str);
        }
        return m4317native(obj);
    }

    /* renamed from: implements, reason: not valid java name */
    private static <T extends Throwable> T m4313implements(T t) {
        return (T) Csuper.m30689package(t, k92.class.getName());
    }

    /* renamed from: import, reason: not valid java name */
    public static Object m4314import(Object obj, int i, String str) {
        if (obj != null && !m4319package(obj, i)) {
            a(str);
        }
        return obj;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static ClassCastException m4315instanceof(ClassCastException classCastException) {
        throw ((ClassCastException) m4313implements(classCastException));
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m4316interface(Object obj) {
        return (obj instanceof Map) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap));
    }

    /* renamed from: native, reason: not valid java name */
    public static Collection m4317native(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Iterable m4318new(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableIterable)) {
            a(str);
        }
        return m4322public(obj);
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m4319package(Object obj, int i) {
        return (obj instanceof Function) && m4309finally(obj) == i;
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m4320private(Object obj) {
        return (obj instanceof Collection) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableCollection));
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m4321protected(Object obj) {
        return (obj instanceof Map.Entry) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap.Entry));
    }

    /* renamed from: public, reason: not valid java name */
    public static Iterable m4322public(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static Iterator m4323return(Object obj) {
        try {
            return (Iterator) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static List m4324static(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m4325strictfp(Object obj) {
        return (obj instanceof List) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableList));
    }

    /* renamed from: super, reason: not valid java name */
    public static Set m4326super(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableSet)) {
            m4328synchronized(obj, "kotlin.collections.MutableSet");
        }
        return m4307extends(obj);
    }

    /* renamed from: switch, reason: not valid java name */
    public static ListIterator m4327switch(Object obj) {
        try {
            return (ListIterator) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m4328synchronized(Object obj, String str) {
        a((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    /* renamed from: this, reason: not valid java name */
    public static ListIterator m4329this(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableListIterator)) {
            m4328synchronized(obj, "kotlin.collections.MutableListIterator");
        }
        return m4327switch(obj);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Set m4330throw(Object obj, String str) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableSet)) {
            a(str);
        }
        return m4307extends(obj);
    }

    /* renamed from: throws, reason: not valid java name */
    public static Map m4331throws(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throw m4315instanceof(e);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m4332transient(Object obj) {
        return (obj instanceof Set) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableSet));
    }

    /* renamed from: try, reason: not valid java name */
    public static Iterator m4333try(Object obj) {
        if ((obj instanceof KMappedMarker) && !(obj instanceof KMutableIterator)) {
            m4328synchronized(obj, "kotlin.collections.MutableIterator");
        }
        return m4323return(obj);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m4334volatile(Object obj) {
        return (obj instanceof ListIterator) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableListIterator));
    }

    /* renamed from: while, reason: not valid java name */
    public static Object m4335while(Object obj, int i) {
        if (obj != null && !m4319package(obj, i)) {
            m4328synchronized(obj, "kotlin.jvm.functions.Function" + i);
        }
        return obj;
    }
}
