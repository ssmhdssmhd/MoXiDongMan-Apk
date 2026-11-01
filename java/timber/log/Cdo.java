package timber.log;

import android.support.v4.a41;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: timber.log.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Cfor[] f36236do;

    /* renamed from: for, reason: not valid java name */
    public static volatile Cfor[] f36237for;

    /* renamed from: if, reason: not valid java name */
    private static final List<Cfor> f36238if = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private static final Cfor f36239new = new C0574do();

    /* renamed from: timber.log.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0574do extends Cfor {
        @Override // timber.log.Cdo.Cfor
        /* renamed from: break, reason: not valid java name */
        public void mo39265break(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39265break(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: case, reason: not valid java name */
        public void mo39266case(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39266case(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: catch, reason: not valid java name */
        public void mo39267catch(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39267catch(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: class, reason: not valid java name */
        public void mo39268class(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39268class(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: default, reason: not valid java name */
        public void mo39269default(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39269default(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: do, reason: not valid java name */
        public void mo39270do(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39270do(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: extends, reason: not valid java name */
        public void mo39271extends(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39271extends(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: finally, reason: not valid java name */
        public void mo39272finally(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39272finally(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: for, reason: not valid java name */
        public void mo39273for(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39273for(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: if, reason: not valid java name */
        public void mo39274if(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39274if(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: import, reason: not valid java name */
        public void mo39275import(int i, Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39275import(i, th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: new, reason: not valid java name */
        public void mo39276new(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39276new(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: package, reason: not valid java name */
        public void mo39277package(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39277package(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: public, reason: not valid java name */
        public void mo39278public(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39278public(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: return, reason: not valid java name */
        public void mo39279return(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39279return(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: static, reason: not valid java name */
        public void mo39280static(Throwable th, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39280static(th, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: super, reason: not valid java name */
        public void mo39281super(int i, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: switch, reason: not valid java name */
        public void mo39282switch(String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39282switch(str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: throw, reason: not valid java name */
        public void mo39283throw(int i, String str, Object... objArr) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39283throw(i, str, objArr);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: throws, reason: not valid java name */
        public void mo39284throws(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39284throws(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: try, reason: not valid java name */
        public void mo39285try(Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39285try(th);
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: while, reason: not valid java name */
        public void mo39286while(int i, Throwable th) {
            for (Cfor cfor : Cdo.f36237for) {
                cfor.mo39286while(i, th);
            }
        }
    }

    /* renamed from: timber.log.do$for, reason: invalid class name */
    public static abstract class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final ThreadLocal<String> f36240do = new ThreadLocal<>();

        /* renamed from: goto, reason: not valid java name */
        private String m39287goto(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }

        /* renamed from: native, reason: not valid java name */
        private void m39288native(int i, Throwable th, String str, Object... objArr) {
            String strMo39292this = mo39292this();
            if (m39291final(strMo39292this, i)) {
                if (str != null && str.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    if (objArr.length > 0) {
                        str = m39290else(str, objArr);
                    }
                    if (th != null) {
                        str = str + "\n" + m39287goto(th);
                    }
                } else if (th == null) {
                    return;
                } else {
                    str = m39287goto(th);
                }
                mo39281super(i, strMo39292this, str, th);
            }
        }

        /* renamed from: break */
        public void mo39265break(String str, Object... objArr) {
            m39288native(4, null, str, objArr);
        }

        /* renamed from: case */
        public void mo39266case(Throwable th, String str, Object... objArr) {
            m39288native(6, th, str, objArr);
        }

        /* renamed from: catch */
        public void mo39267catch(Throwable th) {
            m39288native(4, th, null, new Object[0]);
        }

        /* renamed from: class */
        public void mo39268class(Throwable th, String str, Object... objArr) {
            m39288native(4, th, str, objArr);
        }

        @Deprecated
        /* renamed from: const, reason: not valid java name */
        public boolean m39289const(int i) {
            return true;
        }

        /* renamed from: default */
        public void mo39269default(Throwable th, String str, Object... objArr) {
            m39288native(5, th, str, objArr);
        }

        /* renamed from: do */
        public void mo39270do(String str, Object... objArr) {
            m39288native(3, null, str, objArr);
        }

        /* renamed from: else, reason: not valid java name */
        public String m39290else(String str, Object[] objArr) {
            return String.format(str, objArr);
        }

        /* renamed from: extends */
        public void mo39271extends(String str, Object... objArr) {
            m39288native(7, null, str, objArr);
        }

        /* renamed from: final, reason: not valid java name */
        public boolean m39291final(String str, int i) {
            return m39289const(i);
        }

        /* renamed from: finally */
        public void mo39272finally(Throwable th) {
            m39288native(7, th, null, new Object[0]);
        }

        /* renamed from: for */
        public void mo39273for(Throwable th, String str, Object... objArr) {
            m39288native(3, th, str, objArr);
        }

        /* renamed from: if */
        public void mo39274if(Throwable th) {
            m39288native(3, th, null, new Object[0]);
        }

        /* renamed from: import */
        public void mo39275import(int i, Throwable th, String str, Object... objArr) {
            m39288native(i, th, str, objArr);
        }

        /* renamed from: new */
        public void mo39276new(String str, Object... objArr) {
            m39288native(6, null, str, objArr);
        }

        /* renamed from: package */
        public void mo39277package(Throwable th, String str, Object... objArr) {
            m39288native(7, th, str, objArr);
        }

        /* renamed from: public */
        public void mo39278public(String str, Object... objArr) {
            m39288native(2, null, str, objArr);
        }

        /* renamed from: return */
        public void mo39279return(Throwable th) {
            m39288native(2, th, null, new Object[0]);
        }

        /* renamed from: static */
        public void mo39280static(Throwable th, String str, Object... objArr) {
            m39288native(2, th, str, objArr);
        }

        /* renamed from: super */
        public abstract void mo39281super(int i, String str, String str2, Throwable th);

        /* renamed from: switch */
        public void mo39282switch(String str, Object... objArr) {
            m39288native(5, null, str, objArr);
        }

        /* renamed from: this, reason: not valid java name */
        public String mo39292this() {
            String str = this.f36240do.get();
            if (str != null) {
                this.f36240do.remove();
            }
            return str;
        }

        /* renamed from: throw */
        public void mo39283throw(int i, String str, Object... objArr) {
            m39288native(i, null, str, objArr);
        }

        /* renamed from: throws */
        public void mo39284throws(Throwable th) {
            m39288native(5, th, null, new Object[0]);
        }

        /* renamed from: try */
        public void mo39285try(Throwable th) {
            m39288native(6, th, null, new Object[0]);
        }

        /* renamed from: while */
        public void mo39286while(int i, Throwable th) {
            m39288native(i, th, null, new Object[0]);
        }
    }

    /* renamed from: timber.log.do$if, reason: invalid class name */
    public static class Cif extends Cfor {

        /* renamed from: for, reason: not valid java name */
        private static final int f36241for = 23;

        /* renamed from: if, reason: not valid java name */
        private static final int f36242if = 4000;

        /* renamed from: new, reason: not valid java name */
        private static final int f36243new = 5;

        /* renamed from: try, reason: not valid java name */
        private static final Pattern f36244try = Pattern.compile("(\\$\\d+)+$");

        /* renamed from: private, reason: not valid java name */
        public String m39293private(StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = f36244try.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            String strSubstring = className.substring(className.lastIndexOf(46) + 1);
            return strSubstring.length() > 23 ? strSubstring.substring(0, 23) : strSubstring;
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: super */
        public void mo39281super(int i, String str, String str2, Throwable th) {
            int iMin;
            if (str2.length() < f36242if) {
                if (i == 7) {
                    Log.wtf(str, str2);
                    return;
                } else {
                    Log.println(i, str, str2);
                    return;
                }
            }
            int i2 = 0;
            int length = str2.length();
            while (i2 < length) {
                int iIndexOf = str2.indexOf(10, i2);
                if (iIndexOf == -1) {
                    iIndexOf = length;
                }
                while (true) {
                    iMin = Math.min(iIndexOf, i2 + f36242if);
                    String strSubstring = str2.substring(i2, iMin);
                    if (i == 7) {
                        Log.wtf(str, strSubstring);
                    } else {
                        Log.println(i, str, strSubstring);
                    }
                    if (iMin >= iIndexOf) {
                        break;
                    } else {
                        i2 = iMin;
                    }
                }
                i2 = iMin + 1;
            }
        }

        @Override // timber.log.Cdo.Cfor
        /* renamed from: this */
        public final String mo39292this() {
            String strMo39292this = super.mo39292this();
            if (strMo39292this != null) {
                return strMo39292this;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            if (stackTrace.length > 5) {
                return m39293private(stackTrace[5]);
            }
            throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
        }
    }

    static {
        Cfor[] cforArr = new Cfor[0];
        f36236do = cforArr;
        f36237for = cforArr;
    }

    private Cdo() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: break, reason: not valid java name */
    public static void m39236break(Throwable th) {
        f36239new.mo39267catch(th);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m39237case(Throwable th) {
        f36239new.mo39285try(th);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m39238catch(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39268class(th, str, objArr);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m39239class(int i, @a41 String str, Object... objArr) {
        f36239new.mo39283throw(i, str, objArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m39240const(int i, Throwable th) {
        f36239new.mo39286while(i, th);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m39241default(Throwable th) {
        f36239new.mo39284throws(th);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cfor m39242do() {
        return f36239new;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m39243else(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39266case(th, str, objArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m39244extends(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39269default(th, str, objArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m39245final(int i, Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39275import(i, th, str, objArr);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m39246finally(@a41 String str, Object... objArr) {
        f36239new.mo39271extends(str, objArr);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m39247for(Throwable th) {
        f36239new.mo39274if(th);
    }

    /* renamed from: goto, reason: not valid java name */
    public static List<Cfor> m39248goto() {
        List<Cfor> listUnmodifiableList;
        List<Cfor> list = f36238if;
        synchronized (list) {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        }
        return listUnmodifiableList;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m39249if(@a41 String str, Object... objArr) {
        f36239new.mo39270do(str, objArr);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m39250import() {
        int size;
        List<Cfor> list = f36238if;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m39251native(Cfor cfor) {
        List<Cfor> list = f36238if;
        synchronized (list) {
            if (!list.remove(cfor)) {
                throw new IllegalArgumentException("Cannot uproot tree which is not planted: " + cfor);
            }
            f36237for = (Cfor[]) list.toArray(new Cfor[list.size()]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m39252new(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39273for(th, str, objArr);
    }

    /* renamed from: package, reason: not valid java name */
    public static void m39253package(Throwable th) {
        f36239new.mo39272finally(th);
    }

    /* renamed from: private, reason: not valid java name */
    public static void m39254private(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39277package(th, str, objArr);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m39255public() {
        List<Cfor> list = f36238if;
        synchronized (list) {
            list.clear();
            f36237for = f36236do;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m39256return(@a41 String str, Object... objArr) {
        f36239new.mo39278public(str, objArr);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m39257static(Throwable th) {
        f36239new.mo39279return(th);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m39258super(Cfor cfor) {
        Objects.requireNonNull(cfor, "tree == null");
        if (cfor == f36239new) {
            throw new IllegalArgumentException("Cannot plant Timber into itself.");
        }
        List<Cfor> list = f36238if;
        synchronized (list) {
            list.add(cfor);
            f36237for = (Cfor[]) list.toArray(new Cfor[list.size()]);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m39259switch(Throwable th, @a41 String str, Object... objArr) {
        f36239new.mo39280static(th, str, objArr);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m39260this(@a41 String str, Object... objArr) {
        f36239new.mo39265break(str, objArr);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m39261throw(Cfor... cforArr) {
        Objects.requireNonNull(cforArr, "trees == null");
        for (Cfor cfor : cforArr) {
            Objects.requireNonNull(cfor, "trees contains null");
            if (cfor == f36239new) {
                throw new IllegalArgumentException("Cannot plant Timber into itself.");
            }
        }
        List<Cfor> list = f36238if;
        synchronized (list) {
            Collections.addAll(list, cforArr);
            f36237for = (Cfor[]) list.toArray(new Cfor[list.size()]);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m39262throws(@a41 String str, Object... objArr) {
        f36239new.mo39282switch(str, objArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m39263try(@a41 String str, Object... objArr) {
        f36239new.mo39276new(str, objArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static Cfor m39264while(String str) {
        for (Cfor cfor : f36237for) {
            cfor.f36240do.set(str);
        }
        return f36239new;
    }
}
