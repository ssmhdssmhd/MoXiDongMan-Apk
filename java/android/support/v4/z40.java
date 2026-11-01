package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.ec.Cdo;

/* loaded from: classes3.dex */
public class z40 {
    /* renamed from: do, reason: not valid java name */
    public static Enumeration m10070do() {
        return a50.m42case();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
    
        r0 = android.support.v4.a50.m45for(r8);
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static x40 m10071if(String str) {
        th2 th2VarM33363goto = Cdo.m33363goto(str);
        if (th2VarM33363goto == null) {
            try {
                th2VarM33363goto = Cdo.m33366this(new Ccatch(str));
            } catch (IllegalArgumentException unused) {
            }
            if (th2VarM33363goto == null && th2VarM33363goto == null) {
                try {
                    th2VarM33363goto = a50.m47new(new Ccatch(str));
                } catch (IllegalArgumentException unused2) {
                }
            }
        }
        if (th2VarM33363goto == null) {
            return null;
        }
        return new x40(str, th2VarM33363goto.m7909try(), th2VarM33363goto.m7906goto(), th2VarM33363goto.m7903catch(), th2VarM33363goto.m7908this(), th2VarM33363goto.m7904class());
    }
}
