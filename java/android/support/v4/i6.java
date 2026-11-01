package android.support.v4;

import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes3.dex */
public class i6 extends j6 {
    public static final X500NameStyle c = new i6();

    @Override // android.support.v4.k, org.bouncycastle.asn1.x500.X500NameStyle
    public boolean areEqual(tg2 tg2Var, tg2 tg2Var2) {
        oj1[] oj1VarArrM7888break = tg2Var.m7888break();
        oj1[] oj1VarArrM7888break2 = tg2Var2.m7888break();
        if (oj1VarArrM7888break.length != oj1VarArrM7888break2.length) {
            return false;
        }
        for (int i = 0; i != oj1VarArrM7888break.length; i++) {
            if (!m4170try(oj1VarArrM7888break[i], oj1VarArrM7888break2[i])) {
                return false;
            }
        }
        return true;
    }
}
