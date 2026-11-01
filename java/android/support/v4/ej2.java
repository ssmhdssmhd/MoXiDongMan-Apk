package android.support.v4;

import com.google.common.escape.Cfor;
import com.google.common.escape.Cnew;

@ki0
@o8
/* loaded from: classes2.dex */
public class ej2 {

    /* renamed from: do, reason: not valid java name */
    private static final char f1508do = 0;

    /* renamed from: for, reason: not valid java name */
    private static final Cfor f1509for;

    /* renamed from: if, reason: not valid java name */
    private static final char f1510if = 31;

    /* renamed from: new, reason: not valid java name */
    private static final Cfor f1511new;

    /* renamed from: try, reason: not valid java name */
    private static final Cfor f1512try;

    static {
        Cnew.Cfor cforM16607if = Cnew.m16607if();
        cforM16607if.m16613new((char) 0, (char) 65533);
        cforM16607if.m16614try("�");
        for (char c = 0; c <= 31; c = (char) (c + 1)) {
            if (c != '\t' && c != '\n' && c != '\r') {
                cforM16607if.m16612if(c, "�");
            }
        }
        cforM16607if.m16612if(ca2.f679for, "&amp;");
        cforM16607if.m16612if(ca2.f687new, "&lt;");
        cforM16607if.m16612if(ca2.f702try, "&gt;");
        f1511new = cforM16607if.m16611for();
        cforM16607if.m16612if('\'', "&apos;");
        cforM16607if.m16612if(ca2.f674do, "&quot;");
        f1509for = cforM16607if.m16611for();
        cforM16607if.m16612if('\t', "&#x9;");
        cforM16607if.m16612if('\n', "&#xA;");
        cforM16607if.m16612if(wk.f7547for, "&#xD;");
        f1512try = cforM16607if.m16611for();
    }

    private ej2() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cfor m1928do() {
        return f1512try;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfor m1929if() {
        return f1511new;
    }
}
