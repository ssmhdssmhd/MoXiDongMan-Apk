package org.bouncycastle.asn1.anssi;

import android.support.v4.th2;
import android.support.v4.uh2;
import android.support.v4.vh2;
import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.asn1.anssi.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static uh2 f28901do = new C0397do();

    /* renamed from: if, reason: not valid java name */
    public static final Hashtable f28903if = new Hashtable();

    /* renamed from: for, reason: not valid java name */
    public static final Hashtable f28902for = new Hashtable();

    /* renamed from: new, reason: not valid java name */
    public static final Hashtable f28904new = new Hashtable();

    /* renamed from: org.bouncycastle.asn1.anssi.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0397do extends uh2 {
        @Override // android.support.v4.uh2
        /* renamed from: do */
        public th2 mo8457do() {
            BigInteger bigIntegerM32760try = Cdo.m32760try("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C03");
            BigInteger bigIntegerM32760try2 = Cdo.m32760try("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C00");
            BigInteger bigIntegerM32760try3 = Cdo.m32760try("EE353FCA5428A9300D4ABA754A44C00FDFEC0C9AE4B1A1803075ED967B7BB73F");
            BigInteger bigIntegerM32760try4 = Cdo.m32760try("F1FD178C0B3AD58F10126DE8CE42435B53DC67E140D2BF941FFDD459C6D655E1");
            BigInteger bigIntegerValueOf = BigInteger.valueOf(1L);
            Cif cifM32755for = Cdo.m32755for(new Cif.Ccase(bigIntegerM32760try, bigIntegerM32760try2, bigIntegerM32760try3, bigIntegerM32760try4, bigIntegerValueOf));
            return new th2(cifM32755for, new vh2(cifM32755for, Cfor.m36332if("04B6B3D4C356C139EB31183D4749D423958C27D2DCAF98B70164C97A2DD98F5CFF6142E0F7C8B204911F9271F0F3ECEF8C2701C307E8E4C9E183115A1554062CFB")), bigIntegerM32760try4, bigIntegerValueOf, (byte[]) null);
        }
    }

    static {
        m32758new("FRP256v1", ANSSIObjectIdentifiers.FRP256v1, f28901do);
    }

    /* renamed from: break, reason: not valid java name */
    public static Ccatch m32751break(String str) {
        return (Ccatch) f28903if.get(org.bouncycastle.util.Cfor.m36349break(str));
    }

    /* renamed from: case, reason: not valid java name */
    public static th2 m32752case(String str) {
        Ccatch ccatchM32751break = m32751break(str);
        if (ccatchM32751break == null) {
            return null;
        }
        return m32754else(ccatchM32751break);
    }

    /* renamed from: else, reason: not valid java name */
    public static th2 m32754else(Ccatch ccatch) {
        uh2 uh2Var = (uh2) f28902for.get(ccatch);
        if (uh2Var == null) {
            return null;
        }
        return uh2Var.m8458if();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static Cif m32755for(Cif cif) {
        return cif;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m32756goto(Ccatch ccatch) {
        return (String) f28904new.get(ccatch);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m32758new(String str, Ccatch ccatch, uh2 uh2Var) {
        f28903if.put(org.bouncycastle.util.Cfor.m36349break(str), ccatch);
        f28904new.put(ccatch, str);
        f28902for.put(ccatch, uh2Var);
    }

    /* renamed from: this, reason: not valid java name */
    public static Enumeration m32759this() {
        return f28904new.elements();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static BigInteger m32760try(String str) {
        return new BigInteger(1, Cfor.m36332if(str));
    }
}
