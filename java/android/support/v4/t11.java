package android.support.v4;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.sec.Cdo;
import org.bouncycastle.asn1.sec.SECObjectIdentifiers;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class t11 {

    /* renamed from: do, reason: not valid java name */
    public static final Hashtable f6368do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    public static final Hashtable f6369if = new Hashtable();

    static {
        m7676do("B-571", SECObjectIdentifiers.sect571r1);
        m7676do("B-409", SECObjectIdentifiers.sect409r1);
        m7676do("B-283", SECObjectIdentifiers.sect283r1);
        m7676do("B-233", SECObjectIdentifiers.sect233r1);
        m7676do("B-163", SECObjectIdentifiers.sect163r2);
        m7676do("K-571", SECObjectIdentifiers.sect571k1);
        m7676do("K-409", SECObjectIdentifiers.sect409k1);
        m7676do("K-283", SECObjectIdentifiers.sect283k1);
        m7676do("K-233", SECObjectIdentifiers.sect233k1);
        m7676do("K-163", SECObjectIdentifiers.sect163k1);
        m7676do("P-521", SECObjectIdentifiers.secp521r1);
        m7676do("P-384", SECObjectIdentifiers.secp384r1);
        m7676do("P-256", SECObjectIdentifiers.secp256r1);
        m7676do("P-224", SECObjectIdentifiers.secp224r1);
        m7676do("P-192", SECObjectIdentifiers.secp192r1);
    }

    /* renamed from: case, reason: not valid java name */
    public static Ccatch m7675case(String str) {
        return (Ccatch) f6368do.get(Cfor.m36356final(str));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7676do(String str, Ccatch ccatch) {
        f6368do.put(str, ccatch);
        f6369if.put(ccatch, str);
    }

    /* renamed from: for, reason: not valid java name */
    public static th2 m7677for(Ccatch ccatch) {
        return Cdo.m33125this(ccatch);
    }

    /* renamed from: if, reason: not valid java name */
    public static th2 m7678if(String str) {
        Ccatch ccatch = (Ccatch) f6368do.get(Cfor.m36356final(str));
        if (ccatch != null) {
            return m7677for(ccatch);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m7679new(Ccatch ccatch) {
        return (String) f6369if.get(ccatch);
    }

    /* renamed from: try, reason: not valid java name */
    public static Enumeration m7680try() {
        return f6368do.keys();
    }
}
