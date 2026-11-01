package android.support.v4;

import android.content.Context;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class aa {

    /* renamed from: do, reason: not valid java name */
    private static Context f63do;

    /* renamed from: if, reason: not valid java name */
    private static aa f64if;

    /* renamed from: case, reason: not valid java name */
    public static void m90case(Context context, aa aaVar) {
        f63do = context;
        f64if = aaVar;
    }

    /* renamed from: try, reason: not valid java name */
    public static aa m91try() {
        aa aaVar = f64if;
        if (aaVar != null) {
            return aaVar;
        }
        throw new RuntimeException("BlockCanaryContext not init");
    }

    /* renamed from: break, reason: not valid java name */
    public int mo92break() {
        return mo100goto();
    }

    /* renamed from: catch, reason: not valid java name */
    public int mo93catch() {
        return 99999;
    }

    /* renamed from: class, reason: not valid java name */
    public String mo94class() {
        return "UNKNOWN";
    }

    /* renamed from: const, reason: not valid java name */
    public String mo95const() {
        return "/blockcanary/";
    }

    /* renamed from: do, reason: not valid java name */
    public List<String> mo96do() {
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public void mo97else(Context context, da daVar) {
    }

    /* renamed from: final, reason: not valid java name */
    public String mo98final() {
        return "Unspecified";
    }

    /* renamed from: for, reason: not valid java name */
    public boolean mo99for() {
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public int mo100goto() {
        return 1000;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean mo101if() {
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    public void mo102import(File file) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: native, reason: not valid java name */
    public boolean mo103native(File[] fileArr, File file) {
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean mo104new() {
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public String mo105super() {
        return "0";
    }

    /* renamed from: this, reason: not valid java name */
    public Context m106this() {
        return f63do;
    }

    /* renamed from: throw, reason: not valid java name */
    public List<String> mo107throw() {
        return null;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m108while() {
        return true;
    }
}
