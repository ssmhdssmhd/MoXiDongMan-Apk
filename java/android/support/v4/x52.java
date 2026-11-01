package android.support.v4;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class x52 {
    /* renamed from: do, reason: not valid java name */
    public static void m9396do(String[] strArr) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("org.antlr.v4.gui.TestRig");
            System.err.println("Warning: TestRig moved to org.antlr.v4.gui.TestRig; calling automatically");
            try {
                cls.getMethod(freemarker.core.k.f23949while, String[].class).invoke(null, strArr);
            } catch (Exception unused) {
                System.err.println("Problems calling org.antlr.v4.gui.TestRig.main(args)");
            }
        } catch (ClassNotFoundException unused2) {
            System.err.println("Use of TestRig now requires the use of the tool jar, antlr-4.X-complete.jar");
            System.err.println("Maven users need group ID org.antlr and artifact ID antlr4");
        }
    }
}
