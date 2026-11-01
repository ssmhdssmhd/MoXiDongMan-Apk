package android.support.v4;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes3.dex */
public abstract class k implements X500NameStyle {
    /* renamed from: do, reason: not valid java name */
    private int m4167do(ASN1Encodable aSN1Encodable) {
        return dl0.m1404try(dl0.m1399import(aSN1Encodable)).hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public static Hashtable m4168if(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            hashtable2.put(objNextElement, hashtable.get(objNextElement));
        }
        return hashtable2;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m4169new(boolean z, oj1 oj1Var, oj1[] oj1VarArr) {
        if (z) {
            for (int length = oj1VarArr.length - 1; length >= 0; length--) {
                if (oj1VarArr[length] != null && m4170try(oj1Var, oj1VarArr[length])) {
                    oj1VarArr[length] = null;
                    return true;
                }
            }
        } else {
            for (int i = 0; i != oj1VarArr.length; i++) {
                if (oj1VarArr[i] != null && m4170try(oj1Var, oj1VarArr[i])) {
                    oj1VarArr[i] = null;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public boolean areEqual(tg2 tg2Var, tg2 tg2Var2) {
        oj1[] oj1VarArrM7888break = tg2Var.m7888break();
        oj1[] oj1VarArrM7888break2 = tg2Var2.m7888break();
        if (oj1VarArrM7888break.length != oj1VarArrM7888break2.length) {
            return false;
        }
        boolean z = (oj1VarArrM7888break[0].m5674new() == null || oj1VarArrM7888break2[0].m5674new() == null) ? false : !oj1VarArrM7888break[0].m5674new().m8232try().equals(oj1VarArrM7888break2[0].m5674new().m8232try());
        for (int i = 0; i != oj1VarArrM7888break.length; i++) {
            if (!m4169new(z, oj1VarArrM7888break[i], oj1VarArrM7888break2)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public int calculateHashCode(tg2 tg2Var) {
        oj1[] oj1VarArrM7888break = tg2Var.m7888break();
        int iHashCode = 0;
        for (int i = 0; i != oj1VarArrM7888break.length; i++) {
            if (oj1VarArrM7888break[i].m5673else()) {
                u4[] u4VarArrM5672case = oj1VarArrM7888break[i].m5672case();
                for (int i2 = 0; i2 != u4VarArrM5672case.length; i2++) {
                    iHashCode = (iHashCode ^ u4VarArrM5672case[i2].m8232try().hashCode()) ^ m4167do(u4VarArrM5672case[i2].m8231case());
                }
            } else {
                iHashCode = (iHashCode ^ oj1VarArrM7888break[i].m5674new().m8232try().hashCode()) ^ m4167do(oj1VarArrM7888break[i].m5674new().m8231case());
            }
        }
        return iHashCode;
    }

    /* renamed from: for */
    public ASN1Encodable mo3732for(Ccatch ccatch, String str) {
        return new org.bouncycastle.asn1.v(str);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public ASN1Encodable stringToValue(Ccatch ccatch, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return mo3732for(ccatch, str);
        }
        try {
            return dl0.m1405while(str, 1);
        } catch (IOException unused) {
            throw new Creturn("can't recode value for oid " + ccatch.m32795super());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m4170try(oj1 oj1Var, oj1 oj1Var2) {
        return dl0.m1390catch(oj1Var, oj1Var2);
    }
}
