package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public class i40 {
    /* renamed from: do, reason: not valid java name */
    public static Enumeration m3264do() {
        return j40.m3721new();
    }

    /* renamed from: if, reason: not valid java name */
    public static x40 m3265if(String str) {
        e40 e40VarM3718do = j40.m3718do(str);
        if (e40VarM3718do == null) {
            try {
                e40VarM3718do = j40.m3720if(new Ccatch(str));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (e40VarM3718do == null) {
            return null;
        }
        return new x40(str, e40VarM3718do.m1646do(), e40VarM3718do.m1648if(), e40VarM3718do.m1650try(), e40VarM3718do.m1647for(), e40VarM3718do.m1645case());
    }
}
