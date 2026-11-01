package freemarker.template.utility;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;

/* renamed from: freemarker.template.utility.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst {

    /* renamed from: do, reason: not valid java name */
    private static final freemarker.log.Cif f25166do = freemarker.log.Cif.m29193break("freemarker.security");

    /* renamed from: freemarker.template.utility.const$do, reason: invalid class name */
    public static class Cdo implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f25167do;

        public Cdo(String str) {
            this.f25167do = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(this.f25167do);
        }
    }

    /* renamed from: freemarker.template.utility.const$for, reason: invalid class name */
    public static class Cfor implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f25168do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f25169if;

        public Cfor(String str, int i) {
            this.f25168do = str;
            this.f25169if = i;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return Integer.getInteger(this.f25168do, this.f25169if);
        }
    }

    /* renamed from: freemarker.template.utility.const$if, reason: invalid class name */
    public static class Cif implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f25170do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f25171if;

        public Cif(String str, String str2) {
            this.f25170do = str;
            this.f25171if = str2;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(this.f25170do, this.f25171if);
        }
    }

    private Cconst() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Integer m29257do(String str, int i) {
        try {
            return (Integer) AccessController.doPrivileged(new Cfor(str, i));
        } catch (AccessControlException unused) {
            f25166do.mo29187package("Insufficient permissions to read system property " + Csuper.m29330synchronized(str) + ", using default value " + i);
            return Integer.valueOf(i);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m29258for(String str, String str2) {
        try {
            return (String) AccessController.doPrivileged(new Cif(str, str2));
        } catch (AccessControlException unused) {
            f25166do.mo29187package("Insufficient permissions to read system property " + Csuper.b(str) + ", using default value " + Csuper.b(str2));
            return str2;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m29259if(String str) {
        return (String) AccessController.doPrivileged(new Cdo(str));
    }
}
