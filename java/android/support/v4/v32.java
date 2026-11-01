package android.support.v4;

import java.io.File;
import org.apache.commons.lang3.Ccase;
import org.slf4j.LoggerFactory;

/* loaded from: classes3.dex */
public class v32 {
    public static final boolean A;
    public static final boolean B;
    public static final boolean C;
    public static final boolean D;
    public static final boolean E;
    public static final boolean F;
    public static final boolean G;
    public static final boolean H;
    public static final boolean I;

    /* renamed from: J, reason: collision with root package name */
    public static final boolean f36249J;
    public static final boolean K;
    public static final boolean L;
    public static final boolean M;
    public static final boolean N;
    public static final boolean O;
    public static final boolean P;
    public static final boolean Q;
    public static final String a;

    /* renamed from: abstract, reason: not valid java name */
    public static final String f7045abstract;
    public static final String b;
    public static final String c;

    /* renamed from: continue, reason: not valid java name */
    public static final String f7051continue;
    public static final String d;

    /* renamed from: default, reason: not valid java name */
    public static final String f7052default;

    /* renamed from: do, reason: not valid java name */
    private static final String f7053do = "Windows";
    public static final String e;

    /* renamed from: extends, reason: not valid java name */
    private static final Ccase f7055extends;
    public static final String f;

    /* renamed from: finally, reason: not valid java name */
    public static final String f7057finally;

    /* renamed from: for, reason: not valid java name */
    private static final String f7058for = "user.dir";
    public static final String g;
    public static final String h;
    public static final String i;

    /* renamed from: if, reason: not valid java name */
    private static final String f7060if = "user.home";

    /* renamed from: implements, reason: not valid java name */
    public static final String f7061implements;

    /* renamed from: instanceof, reason: not valid java name */
    public static final String f7063instanceof;

    /* renamed from: interface, reason: not valid java name */
    public static final String f7064interface;
    public static final boolean j;
    public static final boolean k;
    public static final boolean l;
    public static final boolean m;
    public static final boolean n;
    public static final boolean o;
    public static final boolean p;

    /* renamed from: package, reason: not valid java name */
    public static final String f7067package;

    /* renamed from: private, reason: not valid java name */
    public static final String f7068private;

    /* renamed from: protected, reason: not valid java name */
    public static final String f7069protected;
    public static final boolean q;
    public static final boolean r;
    public static final boolean s;

    /* renamed from: strictfp, reason: not valid java name */
    public static final String f7073strictfp;

    /* renamed from: synchronized, reason: not valid java name */
    public static final String f7076synchronized;
    public static final boolean t;

    /* renamed from: transient, reason: not valid java name */
    public static final String f7080transient;
    public static final boolean u;
    public static final boolean v;

    /* renamed from: volatile, reason: not valid java name */
    public static final String f7082volatile;
    public static final boolean w;
    public static final boolean x;
    public static final boolean y;
    public static final boolean z;

    /* renamed from: case, reason: not valid java name */
    public static final String f7047case = m8731case("awt.toolkit");

    /* renamed from: else, reason: not valid java name */
    public static final String f7054else = m8731case("file.encoding");

    /* renamed from: goto, reason: not valid java name */
    public static final String f7059goto = m8731case("file.separator");

    /* renamed from: this, reason: not valid java name */
    public static final String f7077this = m8731case("java.awt.fonts");

    /* renamed from: break, reason: not valid java name */
    public static final String f7046break = m8731case("java.awt.graphicsenv");

    /* renamed from: catch, reason: not valid java name */
    public static final String f7048catch = m8731case("java.awt.headless");

    /* renamed from: class, reason: not valid java name */
    public static final String f7049class = m8731case("java.awt.printerjob");

    /* renamed from: const, reason: not valid java name */
    public static final String f7050const = m8731case("java.class.path");

    /* renamed from: final, reason: not valid java name */
    public static final String f7056final = m8731case("java.class.version");

    /* renamed from: super, reason: not valid java name */
    public static final String f7074super = m8731case("java.compiler");

    /* renamed from: throw, reason: not valid java name */
    public static final String f7078throw = m8731case("java.endorsed.dirs");

    /* renamed from: while, reason: not valid java name */
    public static final String f7083while = m8731case("java.ext.dirs");

    /* renamed from: try, reason: not valid java name */
    private static final String f7081try = "java.home";

    /* renamed from: import, reason: not valid java name */
    public static final String f7062import = m8731case(f7081try);

    /* renamed from: new, reason: not valid java name */
    private static final String f7066new = "java.io.tmpdir";

    /* renamed from: native, reason: not valid java name */
    public static final String f7065native = m8731case(f7066new);

    /* renamed from: public, reason: not valid java name */
    public static final String f7070public = m8731case("java.library.path");

    /* renamed from: return, reason: not valid java name */
    public static final String f7071return = m8731case("java.runtime.name");

    /* renamed from: static, reason: not valid java name */
    public static final String f7072static = m8731case("java.runtime.version");

    /* renamed from: switch, reason: not valid java name */
    public static final String f7075switch = m8731case("java.specification.name");

    /* renamed from: throws, reason: not valid java name */
    public static final String f7079throws = m8731case("java.specification.vendor");

    static {
        String strM8731case = m8731case("java.specification.version");
        f7052default = strM8731case;
        f7055extends = Ccase.get(strM8731case);
        f7057finally = m8731case("java.util.prefs.PreferencesFactory");
        f7067package = m8731case("java.vendor");
        f7068private = m8731case(LoggerFactory.JAVA_VENDOR_PROPERTY);
        f7045abstract = m8731case("java.version");
        f7051continue = m8731case("java.vm.info");
        f7073strictfp = m8731case("java.vm.name");
        f7082volatile = m8731case("java.vm.specification.name");
        f7064interface = m8731case("java.vm.specification.vendor");
        f7069protected = m8731case("java.vm.specification.version");
        f7080transient = m8731case("java.vm.vendor");
        f7061implements = m8731case("java.vm.version");
        f7063instanceof = m8731case("line.separator");
        f7076synchronized = m8731case("os.arch");
        a = m8731case("os.name");
        b = m8731case("os.version");
        c = m8731case("path.separator");
        d = m8731case(m8731case("user.country") == null ? "user.region" : "user.country");
        e = m8731case(f7058for);
        f = m8731case(f7060if);
        g = m8731case("user.language");
        h = m8731case("user.name");
        i = m8731case("user.timezone");
        j = m8737for("1.1");
        k = m8737for("1.2");
        l = m8737for("1.3");
        m = m8737for("1.4");
        n = m8737for("1.5");
        o = m8737for("1.6");
        p = m8737for("1.7");
        q = m8737for("1.8");
        boolean zM8742try = m8742try("AIX");
        r = zM8742try;
        boolean zM8742try2 = m8742try("HP-UX");
        s = zM8742try2;
        t = m8742try("OS/400");
        boolean zM8742try3 = m8742try("Irix");
        u = zM8742try3;
        boolean z2 = m8742try("Linux") || m8742try("LINUX");
        v = z2;
        w = m8742try("Mac");
        boolean zM8742try4 = m8742try("Mac OS X");
        x = zM8742try4;
        boolean zM8742try5 = m8742try("FreeBSD");
        y = zM8742try5;
        boolean zM8742try6 = m8742try("OpenBSD");
        z = zM8742try6;
        boolean zM8742try7 = m8742try("NetBSD");
        A = zM8742try7;
        B = m8742try("OS/2");
        boolean zM8742try8 = m8742try("Solaris");
        C = zM8742try8;
        boolean zM8742try9 = m8742try("SunOS");
        D = zM8742try9;
        E = zM8742try || zM8742try2 || zM8742try3 || z2 || zM8742try4 || zM8742try8 || zM8742try9 || zM8742try5 || zM8742try6 || zM8742try7;
        F = m8742try(f7053do);
        G = m8740new(f7053do, "5.0");
        H = m8740new(f7053do, "5.2");
        I = m8740new("Windows Server 2008", "6.1");
        f36249J = m8740new("Windows 9", "4.0");
        K = m8740new("Windows 9", "4.1");
        L = m8740new(f7053do, "4.9");
        M = m8742try("Windows NT");
        N = m8740new(f7053do, "5.1");
        O = m8740new(f7053do, "6.0");
        P = m8740new(f7053do, "6.1");
        Q = m8740new(f7053do, "6.2");
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m8730break(Ccase ccase) {
        return f7055extends.atLeast(ccase);
    }

    /* renamed from: case, reason: not valid java name */
    private static String m8731case(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            System.err.println("Caught a SecurityException reading the system property '" + str + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m8732catch(String str, String str2) {
        if (str == null) {
            return false;
        }
        return str.startsWith(str2);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m8733class(String str, String str2, String str3, String str4) {
        return str != null && str2 != null && str.startsWith(str3) && str2.startsWith(str4);
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m8734const(String str, String str2) {
        if (str == null) {
            return false;
        }
        return str.startsWith(str2);
    }

    /* renamed from: do, reason: not valid java name */
    public static File m8735do() {
        return new File(System.getProperty(f7081try));
    }

    /* renamed from: else, reason: not valid java name */
    public static File m8736else() {
        return new File(System.getProperty(f7058for));
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m8737for(String str) {
        return m8732catch(f7052default, str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static File m8738goto() {
        return new File(System.getProperty(f7060if));
    }

    /* renamed from: if, reason: not valid java name */
    public static File m8739if() {
        return new File(System.getProperty(f7066new));
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m8740new(String str, String str2) {
        return m8733class(a, b, str, str2);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m8741this() {
        String str = f7048catch;
        if (str != null) {
            return str.equals(Boolean.TRUE.toString());
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m8742try(String str) {
        return m8734const(a, str);
    }
}
