package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import freemarker.core.b2;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

@ki0(emulated = true)
/* renamed from: com.google.common.base.native, reason: invalid class name */
/* loaded from: classes.dex */
final class Cnative {

    /* renamed from: for, reason: not valid java name */
    private static final String f13677for = "guava.gwt.emergency_reenable_rpc";

    /* renamed from: do, reason: not valid java name */
    private static final Logger f13676do = Logger.getLogger(Cnative.class.getName());

    /* renamed from: if, reason: not valid java name */
    private static final PatternCompiler f13678if = m15110case();

    /* renamed from: com.google.common.base.native$if, reason: invalid class name */
    public static final class Cif implements PatternCompiler {
        private Cif() {
        }

        @Override // com.google.common.base.PatternCompiler
        public Ccase compile(String str) {
            return new Cconst(Pattern.compile(str));
        }

        @Override // com.google.common.base.PatternCompiler
        public boolean isPcreLike() {
            return true;
        }
    }

    private Cnative() {
    }

    /* renamed from: break, reason: not valid java name */
    public static Cnew m15109break(Cnew cnew) {
        return cnew.m15150implements();
    }

    /* renamed from: case, reason: not valid java name */
    private static PatternCompiler m15110case() {
        return new Cif();
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m15111catch(@b51 String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: class, reason: not valid java name */
    public static long m15112class() {
        return System.nanoTime();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m15113do() {
        if (!Boolean.parseBoolean(System.getProperty(f13677for, b2.f23511if))) {
            throw new UnsupportedOperationException(Cdefault.m15043try("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", f13677for, "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static void m15114else(ServiceConfigurationError serviceConfigurationError) {
        f13676do.log(Level.WARNING, "Error loading regex compiler, falling back to next option", (Throwable) serviceConfigurationError);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m15115for(@b51 String str) {
        if (m15111catch(str)) {
            return null;
        }
        return str;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m15116goto(@b51 String str) {
        return str == null ? "" : str;
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccase m15117if(String str) {
        af1.m205continue(str);
        return f13678if.compile(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m15118new(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m15119this() {
        return f13678if.isPcreLike();
    }

    /* renamed from: try, reason: not valid java name */
    public static <T extends Enum<T>> Cwhile<T> m15120try(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = Cgoto.m15102do(cls).get(str);
        return weakReference == null ? Cwhile.absent() : Cwhile.of(cls.cast(weakReference.get()));
    }
}
