package android.support.v4;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x9.Cdo;

/* loaded from: classes3.dex */
public class a50 {
    /* renamed from: case, reason: not valid java name */
    public static Enumeration m42case() {
        Vector vector = new Vector();
        m43do(vector, Cdo.m33303try());
        m43do(vector, org.bouncycastle.asn1.sec.Cdo.m33117catch());
        m43do(vector, t11.m7680try());
        m43do(vector, org.bouncycastle.asn1.teletrust.Cdo.m33142else());
        m43do(vector, org.bouncycastle.asn1.anssi.Cdo.m32759this());
        m43do(vector, j40.m3721new());
        m43do(vector, org.bouncycastle.asn1.gm.Cdo.m33038this());
        return vector.elements();
    }

    /* renamed from: do, reason: not valid java name */
    private static void m43do(Vector vector, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            vector.addElement(enumeration.nextElement());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Ccatch m44else(String str) {
        Ccatch ccatchM33298case = Cdo.m33298case(str);
        if (ccatchM33298case == null) {
            ccatchM33298case = org.bouncycastle.asn1.sec.Cdo.m33118class(str);
        }
        if (ccatchM33298case == null) {
            ccatchM33298case = t11.m7675case(str);
        }
        if (ccatchM33298case == null) {
            ccatchM33298case = org.bouncycastle.asn1.teletrust.Cdo.m33144goto(str);
        }
        if (ccatchM33298case == null) {
            ccatchM33298case = org.bouncycastle.asn1.anssi.Cdo.m32751break(str);
        }
        if (ccatchM33298case == null) {
            ccatchM33298case = j40.m3722try(str);
        }
        return ccatchM33298case == null ? org.bouncycastle.asn1.gm.Cdo.m33030break(str) : ccatchM33298case;
    }

    /* renamed from: for, reason: not valid java name */
    public static th2 m45for(String str) {
        th2 th2VarM33301if = Cdo.m33301if(str);
        if (th2VarM33301if == null) {
            th2VarM33301if = org.bouncycastle.asn1.sec.Cdo.m33122goto(str);
        }
        if (th2VarM33301if == null) {
            th2VarM33301if = t11.m7678if(str);
        }
        if (th2VarM33301if == null) {
            th2VarM33301if = org.bouncycastle.asn1.teletrust.Cdo.m33146new(str);
        }
        if (th2VarM33301if == null) {
            th2VarM33301if = org.bouncycastle.asn1.anssi.Cdo.m32752case(str);
        }
        if (th2VarM33301if == null) {
            th2VarM33301if = m46if(j40.m3718do(str));
        }
        return th2VarM33301if == null ? org.bouncycastle.asn1.gm.Cdo.m33031case(str) : th2VarM33301if;
    }

    /* renamed from: if, reason: not valid java name */
    private static th2 m46if(e40 e40Var) {
        if (e40Var == null) {
            return null;
        }
        return new th2(e40Var.m1646do(), e40Var.m1648if(), e40Var.m1650try(), e40Var.m1647for(), e40Var.m1645case());
    }

    /* renamed from: new, reason: not valid java name */
    public static th2 m47new(Ccatch ccatch) {
        th2 th2VarM33300for = Cdo.m33300for(ccatch);
        if (th2VarM33300for == null) {
            th2VarM33300for = org.bouncycastle.asn1.sec.Cdo.m33125this(ccatch);
        }
        if (th2VarM33300for == null) {
            th2VarM33300for = org.bouncycastle.asn1.teletrust.Cdo.m33148try(ccatch);
        }
        if (th2VarM33300for == null) {
            th2VarM33300for = org.bouncycastle.asn1.anssi.Cdo.m32754else(ccatch);
        }
        if (th2VarM33300for == null) {
            th2VarM33300for = m46if(j40.m3720if(ccatch));
        }
        return th2VarM33300for == null ? org.bouncycastle.asn1.gm.Cdo.m33033else(ccatch) : th2VarM33300for;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m48try(Ccatch ccatch) {
        String strM33302new = Cdo.m33302new(ccatch);
        if (strM33302new == null) {
            strM33302new = org.bouncycastle.asn1.sec.Cdo.m33115break(ccatch);
        }
        if (strM33302new == null) {
            strM33302new = t11.m7679new(ccatch);
        }
        if (strM33302new == null) {
            strM33302new = org.bouncycastle.asn1.teletrust.Cdo.m33140case(ccatch);
        }
        if (strM33302new == null) {
            strM33302new = org.bouncycastle.asn1.anssi.Cdo.m32756goto(ccatch);
        }
        if (strM33302new == null) {
            strM33302new = j40.m3719for(ccatch);
        }
        if (strM33302new == null) {
            strM33302new = org.bouncycastle.asn1.gm.Cdo.m33035goto(ccatch);
        }
        return strM33302new == null ? org.bouncycastle.crypto.ec.Cdo.m33356break(ccatch) : strM33302new;
    }
}
