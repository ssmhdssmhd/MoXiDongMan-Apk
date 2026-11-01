package freemarker.core;

import android.support.v4.k52;
import android.support.v4.ul2;
import android.support.v4.vl2;
import androidx.core.app.NotificationCompat;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.utility.Cif;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class y4 {

    /* renamed from: do, reason: not valid java name */
    public static final String f24312do = "----";

    /* renamed from: for, reason: not valid java name */
    public static final Set<String> f24313for;

    /* renamed from: if, reason: not valid java name */
    public static final Set<String> f24314if;

    /* renamed from: new, reason: not valid java name */
    public static final Set<String> f24315new;

    static {
        TreeSet treeSet = new TreeSet();
        TreeSet treeSet2 = new TreeSet();
        TreeSet treeSet3 = new TreeSet();
        m28378do(treeSet, treeSet2, treeSet3, "assign");
        m28378do(treeSet, treeSet2, treeSet3, "attempt");
        m28383if(treeSet, treeSet2, treeSet3, "autoesc", k.f23944synchronized);
        m28378do(treeSet, treeSet2, treeSet3, "break");
        m28378do(treeSet, treeSet2, treeSet3, NotificationCompat.CATEGORY_CALL);
        m28378do(treeSet, treeSet2, treeSet3, "case");
        m28378do(treeSet, treeSet2, treeSet3, "comment");
        m28378do(treeSet, treeSet2, treeSet3, "compress");
        m28378do(treeSet, treeSet2, treeSet3, "continue");
        m28378do(treeSet, treeSet2, treeSet3, "default");
        m28378do(treeSet, treeSet2, treeSet3, "else");
        m28383if(treeSet, treeSet2, treeSet3, "elseif", "elseIf");
        m28378do(treeSet, treeSet2, treeSet3, "escape");
        m28378do(treeSet, treeSet2, treeSet3, "fallback");
        m28378do(treeSet, treeSet2, treeSet3, "flush");
        m28383if(treeSet, treeSet2, treeSet3, "foreach", "forEach");
        m28378do(treeSet, treeSet2, treeSet3, "ftl");
        m28378do(treeSet, treeSet2, treeSet3, "function");
        m28378do(treeSet, treeSet2, treeSet3, "global");
        m28378do(treeSet, treeSet2, treeSet3, "if");
        m28378do(treeSet, treeSet2, treeSet3, "import");
        m28378do(treeSet, treeSet2, treeSet3, "include");
        m28378do(treeSet, treeSet2, treeSet3, "items");
        m28378do(treeSet, treeSet2, treeSet3, "list");
        m28378do(treeSet, treeSet2, treeSet3, "local");
        m28378do(treeSet, treeSet2, treeSet3, "lt");
        m28378do(treeSet, treeSet2, treeSet3, "macro");
        m28378do(treeSet, treeSet2, treeSet3, "nested");
        m28383if(treeSet, treeSet2, treeSet3, "noautoesc", "noAutoEsc");
        m28383if(treeSet, treeSet2, treeSet3, "noescape", "noEscape");
        m28383if(treeSet, treeSet2, treeSet3, "noparse", "noParse");
        m28378do(treeSet, treeSet2, treeSet3, "nt");
        m28383if(treeSet, treeSet2, treeSet3, "outputformat", "outputFormat");
        m28378do(treeSet, treeSet2, treeSet3, "recover");
        m28378do(treeSet, treeSet2, treeSet3, "recurse");
        m28378do(treeSet, treeSet2, treeSet3, "return");
        m28378do(treeSet, treeSet2, treeSet3, "rt");
        m28378do(treeSet, treeSet2, treeSet3, "sep");
        m28378do(treeSet, treeSet2, treeSet3, "setting");
        m28378do(treeSet, treeSet2, treeSet3, "stop");
        m28378do(treeSet, treeSet2, treeSet3, "switch");
        m28378do(treeSet, treeSet2, treeSet3, ak.aH);
        m28378do(treeSet, treeSet2, treeSet3, "transform");
        m28378do(treeSet, treeSet2, treeSet3, "visit");
        f24314if = Collections.unmodifiableSet(treeSet);
        f24313for = Collections.unmodifiableSet(treeSet2);
        f24315new = Collections.unmodifiableSet(treeSet3);
    }

    private y4() {
    }

    /* renamed from: break, reason: not valid java name */
    public static b4 m28373break(b4 b4Var) {
        return b4Var.m27847synchronized();
    }

    /* renamed from: case, reason: not valid java name */
    public static void m28374case(String str, Class<?> cls, Collection<?> collection) {
        if (collection == null) {
            return;
        }
        for (Object obj : collection) {
            if (!cls.isInstance(obj)) {
                throw new IllegalArgumentException(str + " must be instances of " + Cif.m29270break(cls) + ", but one of them was a(n) " + Cif.m29273class(obj) + ".");
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Set<String> m28375catch(int i) {
        Set<String> setKeySet;
        if (i == 10) {
            setKeySet = Creturn.f24113const.keySet();
        } else if (i == 11) {
            setKeySet = Creturn.f24111catch;
        } else {
            if (i != 12) {
                throw new IllegalArgumentException("Unsupported naming convention constant: " + i);
            }
            setKeySet = Creturn.f24110break;
        }
        return Collections.unmodifiableSet(setKeySet);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m28376class(TemplateCollectionModel templateCollectionModel) {
        return (templateCollectionModel instanceof i1) && ((i1) templateCollectionModel).m28081if();
    }

    /* renamed from: const, reason: not valid java name */
    public static void m28377const(b4[] b4VarArr, boolean z, Writer writer) throws IOException {
        d0.b3(b4VarArr, z, writer);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m28378do(Set<String> set, Set<String> set2, Set<String> set3, String str) {
        set.add(str);
        set2.add(str);
        set3.add(str);
    }

    /* renamed from: else, reason: not valid java name */
    public static k52 m28379else(String str, TemplateException templateException) {
        return templateException instanceof k52 ? (k52) templateException : new vl2(ul2.m8518try(templateException), templateException.getCause(), templateException.getEnvironment(), str);
    }

    /* renamed from: final, reason: not valid java name */
    public static final void m28380final(k4 k4Var, String str) {
        k4Var.z(str);
    }

    /* renamed from: for, reason: not valid java name */
    public static final void m28381for(Cstatic cstatic) {
        try {
            new l4().mo28083do(cstatic);
        } catch (j4 e) {
            throw new RuntimeException("Template post-processing failed", e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static b4 m28382goto(b4 b4Var, int i) {
        return b4Var.m27835default(i);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m28383if(Set<String> set, Set<String> set2, Set<String> set3, String str, String str2) {
        set.add(str);
        set.add(str2);
        set2.add(str);
        set3.add(str2);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m28384new(b4 b4Var, StringBuilder sb) {
        d0.Z0(b4Var, sb);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m28385super(j0 j0Var, boolean z) {
        j0Var.e3(z);
    }

    /* renamed from: this, reason: not valid java name */
    public static b4[] m28386this(d0 d0Var) {
        return d0Var.O1();
    }

    /* renamed from: try, reason: not valid java name */
    public static final void m28387try(TemplateDirectiveBody templateDirectiveBody) throws d2 {
        d2.check(templateDirectiveBody);
    }
}
