package android.support.v4;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.Cif;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
public class r80 {

    /* renamed from: do, reason: not valid java name */
    public static final String f5717do = " [wrapped] ";

    /* renamed from: if, reason: not valid java name */
    private static final String[] f5718if = {"getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable"};

    /* renamed from: break, reason: not valid java name */
    public static String[] m6822break(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, v32.f7063instanceof);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: case, reason: not valid java name */
    public static Throwable m6823case(Throwable th) {
        List<Throwable> listM6829final = m6829final(th);
        if (listM6829final.size() < 2) {
            return null;
        }
        return listM6829final.get(listM6829final.size() - 1);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String[] m6824catch(Throwable th) {
        return th == null ? Cif.f28724for : m6822break(m6825class(th));
    }

    /* renamed from: class, reason: not valid java name */
    public static String m6825class(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    /* renamed from: const, reason: not valid java name */
    public static int m6826const(Throwable th) {
        return m6829final(th).size();
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public static Throwable m6827do(Throwable th) {
        return m6832if(th, f5718if);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m6828else(Throwable th) {
        Throwable thM6823case = m6823case(th);
        if (thM6823case != null) {
            th = thM6823case;
        }
        return m6844try(th);
    }

    /* renamed from: final, reason: not valid java name */
    public static List<Throwable> m6829final(Throwable th) {
        ArrayList arrayList = new ArrayList();
        while (th != null && !arrayList.contains(th)) {
            arrayList.add(th);
            th = m6827do(th);
        }
        return arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    private static Throwable m6830for(Throwable th, String str) throws NoSuchMethodException, SecurityException {
        Method method;
        try {
            method = th.getClass().getMethod(str, new Class[0]);
        } catch (NoSuchMethodException | SecurityException unused) {
            method = null;
        }
        if (method != null && Throwable.class.isAssignableFrom(method.getReturnType())) {
            try {
                return (Throwable) method.invoke(th, new Object[0]);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String[] m6831goto(Throwable th) {
        List<String> listM6841this;
        if (th == null) {
            return Cif.f28724for;
        }
        Throwable[] thArrM6839super = m6839super(th);
        int length = thArrM6839super.length;
        ArrayList arrayList = new ArrayList();
        int i = length - 1;
        List<String> listM6841this2 = m6841this(thArrM6839super[i]);
        while (true) {
            length--;
            if (length < 0) {
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            if (length != 0) {
                listM6841this = m6841this(thArrM6839super[length - 1]);
                m6843throws(listM6841this2, listM6841this);
            } else {
                listM6841this = listM6841this2;
            }
            if (length == i) {
                arrayList.add(thArrM6839super[length].toString());
            } else {
                arrayList.add(f5717do + thArrM6839super[length].toString());
            }
            for (int i2 = 0; i2 < listM6841this2.size(); i2++) {
                arrayList.add(listM6841this2.get(i2));
            }
            listM6841this2 = listM6841this;
        }
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static Throwable m6832if(Throwable th, String[] strArr) {
        Throwable thM6830for;
        if (th == null) {
            return null;
        }
        if (strArr == null) {
            strArr = f5718if;
        }
        for (String str : strArr) {
            if (str != null && (thM6830for = m6830for(th, str)) != null) {
                return thM6830for;
            }
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m6833import(Throwable th, Class<?> cls, int i) {
        return m6842throw(th, cls, i, false);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m6834native(Throwable th, Class<?> cls) {
        return m6842throw(th, cls, 0, true);
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public static String[] m6835new() {
        return (String[]) Cif.m32429protected(f5718if);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m6836public(Throwable th, Class<?> cls, int i) {
        return m6842throw(th, cls, i, true);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m6837return(Throwable th) {
        m6838static(th, System.err);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m6838static(Throwable th, PrintStream printStream) {
        if (th == null) {
            return;
        }
        if (printStream == null) {
            throw new IllegalArgumentException("The PrintStream must not be null");
        }
        for (String str : m6831goto(th)) {
            printStream.println(str);
        }
        printStream.flush();
    }

    /* renamed from: super, reason: not valid java name */
    public static Throwable[] m6839super(Throwable th) {
        List<Throwable> listM6829final = m6829final(th);
        return (Throwable[]) listM6829final.toArray(new Throwable[listM6829final.size()]);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m6840switch(Throwable th, PrintWriter printWriter) {
        if (th == null) {
            return;
        }
        if (printWriter == null) {
            throw new IllegalArgumentException("The PrintWriter must not be null");
        }
        for (String str : m6831goto(th)) {
            printWriter.println(str);
        }
        printWriter.flush();
    }

    /* renamed from: this, reason: not valid java name */
    public static List<String> m6841this(Throwable th) {
        StringTokenizer stringTokenizer = new StringTokenizer(m6825class(th), v32.f7063instanceof);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf("at");
            if (iIndexOf != -1 && strNextToken.substring(0, iIndexOf).trim().isEmpty()) {
                z = true;
                arrayList.add(strNextToken);
            } else if (z) {
                break;
            }
        }
        return arrayList;
    }

    /* renamed from: throw, reason: not valid java name */
    private static int m6842throw(Throwable th, Class<?> cls, int i, boolean z) {
        if (th != null && cls != null) {
            if (i < 0) {
                i = 0;
            }
            Throwable[] thArrM6839super = m6839super(th);
            if (i >= thArrM6839super.length) {
                return -1;
            }
            if (z) {
                while (i < thArrM6839super.length) {
                    if (cls.isAssignableFrom(thArrM6839super[i].getClass())) {
                        return i;
                    }
                    i++;
                }
            } else {
                while (i < thArrM6839super.length) {
                    if (cls.equals(thArrM6839super[i].getClass())) {
                        return i;
                    }
                    i++;
                }
            }
        }
        return -1;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m6843throws(List<String> list, List<String> list2) {
        if (list == null || list2 == null) {
            throw new IllegalArgumentException("The List must not be null");
        }
        int size = list.size() - 1;
        for (int size2 = list2.size() - 1; size >= 0 && size2 >= 0; size2--) {
            if (list.get(size).equals(list2.get(size2))) {
                list.remove(size);
            }
            size--;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m6844try(Throwable th) {
        if (th == null) {
            return "";
        }
        return Ctry.m32729static(th, null) + ": " + Cclass.m32260package(th.getMessage());
    }

    /* renamed from: while, reason: not valid java name */
    public static int m6845while(Throwable th, Class<?> cls) {
        return m6842throw(th, cls, 0, false);
    }
}
