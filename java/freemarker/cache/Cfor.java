package freemarker.cache;

import android.support.v4.on0;
import android.support.v4.w41;
import freemarker.template.utility.Csuper;
import java.net.URL;

/* renamed from: freemarker.cache.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends Cextends {

    /* renamed from: for, reason: not valid java name */
    private final ClassLoader f23345for;

    /* renamed from: if, reason: not valid java name */
    private final Class<?> f23346if;

    /* renamed from: new, reason: not valid java name */
    private final String f23347new;

    @Deprecated
    public Cfor() {
        this(null, true, null, on0.f4694final);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m27691goto(String str) {
        int length = str.length();
        for (int i = (length <= 0 || str.charAt(0) != '/') ? 0 : 1; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '/') {
                return true;
            }
            if (cCharAt == ':') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public ClassLoader m27692case() {
        return this.f23345for;
    }

    /* renamed from: else, reason: not valid java name */
    public Class m27693else() {
        return this.f23346if;
    }

    @Override // freemarker.cache.Cextends
    /* renamed from: if */
    public URL mo27680if(String str) {
        String str2 = this.f23347new + str;
        if (this.f23347new.equals(on0.f4694final) && !m27691goto(str2)) {
            return null;
        }
        Class<?> cls = this.f23346if;
        return cls != null ? cls.getResource(str2) : this.f23345for.getResource(str2);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Cpublic.m27756do(this));
        sb.append("(");
        if (this.f23346if != null) {
            str = "resourceLoaderClass=" + this.f23346if.getName();
        } else {
            str = "classLoader=" + Csuper.m29317instanceof(this.f23345for);
        }
        sb.append(str);
        sb.append(", basePackagePath=");
        sb.append(Csuper.m29330synchronized(this.f23347new));
        String str2 = "";
        if (this.f23346if != null && !this.f23347new.startsWith(on0.f4694final)) {
            str2 = " /* relatively to resourceLoaderClass pkg */";
        }
        sb.append(str2);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public String m27694try() {
        return this.f23347new;
    }

    @Deprecated
    public Cfor(Class<?> cls) {
        this(cls, "");
    }

    public Cfor(Class<?> cls, String str) {
        this(cls, false, null, str);
    }

    public Cfor(ClassLoader classLoader, String str) {
        this(null, true, classLoader, str);
    }

    private Cfor(Class<?> cls, boolean z, ClassLoader classLoader, String str) {
        if (!z) {
            w41.check("resourceLoaderClass", cls);
        }
        w41.check("basePackagePath", str);
        if (classLoader != null) {
            cls = null;
        } else if (cls == null) {
            cls = getClass();
        }
        this.f23346if = cls;
        if (cls == null && classLoader == null) {
            throw new w41("classLoader");
        }
        this.f23345for = classLoader;
        String strM27678do = Cextends.m27678do(str);
        if (classLoader != null && strM27678do.startsWith(on0.f4694final)) {
            strM27678do = strM27678do.substring(1);
        }
        this.f23347new = strM27678do;
    }
}
