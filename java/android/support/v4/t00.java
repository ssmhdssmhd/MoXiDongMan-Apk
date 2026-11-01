package android.support.v4;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class t00 {

    /* renamed from: do, reason: not valid java name */
    private static Set f6354do = new HashSet();

    /* renamed from: if, reason: not valid java name */
    private static Set f6358if = new HashSet();

    /* renamed from: for, reason: not valid java name */
    private static Set f6356for = new HashSet();

    /* renamed from: new, reason: not valid java name */
    private static Set f6359new = new HashSet();

    /* renamed from: try, reason: not valid java name */
    private static Set f6361try = new HashSet();

    /* renamed from: case, reason: not valid java name */
    private static Set f6350case = new HashSet();

    /* renamed from: else, reason: not valid java name */
    private static Set f6355else = new HashSet();

    /* renamed from: goto, reason: not valid java name */
    private static Set f6357goto = new HashSet();

    /* renamed from: this, reason: not valid java name */
    private static Set f6360this = new HashSet();

    /* renamed from: break, reason: not valid java name */
    private static Set f6349break = new HashSet();

    /* renamed from: catch, reason: not valid java name */
    private static Set f6351catch = new HashSet();

    /* renamed from: class, reason: not valid java name */
    private static Set f6352class = new HashSet();

    /* renamed from: const, reason: not valid java name */
    private static Map f6353const = new HashMap();

    static {
        f6354do.add("MD5");
        Set set = f6354do;
        Ccatch ccatch = PKCSObjectIdentifiers.md5;
        set.add(ccatch.m32795super());
        f6358if.add("SHA1");
        f6358if.add(qy0.f5539case);
        Set set2 = f6358if;
        Ccatch ccatch2 = OIWObjectIdentifiers.idSHA1;
        set2.add(ccatch2.m32795super());
        f6356for.add("SHA224");
        f6356for.add(qy0.f5542else);
        Set set3 = f6356for;
        Ccatch ccatch3 = NISTObjectIdentifiers.id_sha224;
        set3.add(ccatch3.m32795super());
        f6359new.add("SHA256");
        f6359new.add("SHA-256");
        Set set4 = f6359new;
        Ccatch ccatch4 = NISTObjectIdentifiers.id_sha256;
        set4.add(ccatch4.m32795super());
        f6361try.add("SHA384");
        f6361try.add(qy0.f5544this);
        Set set5 = f6361try;
        Ccatch ccatch5 = NISTObjectIdentifiers.id_sha384;
        set5.add(ccatch5.m32795super());
        f6350case.add("SHA512");
        f6350case.add("SHA-512");
        Set set6 = f6350case;
        Ccatch ccatch6 = NISTObjectIdentifiers.id_sha512;
        set6.add(ccatch6.m32795super());
        f6355else.add("SHA512(224)");
        f6355else.add("SHA-512(224)");
        Set set7 = f6355else;
        Ccatch ccatch7 = NISTObjectIdentifiers.id_sha512_224;
        set7.add(ccatch7.m32795super());
        f6357goto.add("SHA512(256)");
        f6357goto.add("SHA-512(256)");
        Set set8 = f6357goto;
        Ccatch ccatch8 = NISTObjectIdentifiers.id_sha512_256;
        set8.add(ccatch8.m32795super());
        f6360this.add("SHA3-224");
        Set set9 = f6360this;
        Ccatch ccatch9 = NISTObjectIdentifiers.id_sha3_224;
        set9.add(ccatch9.m32795super());
        f6349break.add("SHA3-256");
        Set set10 = f6349break;
        Ccatch ccatch10 = NISTObjectIdentifiers.id_sha3_256;
        set10.add(ccatch10.m32795super());
        f6351catch.add("SHA3-384");
        Set set11 = f6351catch;
        Ccatch ccatch11 = NISTObjectIdentifiers.id_sha3_384;
        set11.add(ccatch11.m32795super());
        f6352class.add("SHA3-512");
        Set set12 = f6352class;
        Ccatch ccatch12 = NISTObjectIdentifiers.id_sha3_512;
        set12.add(ccatch12.m32795super());
        f6353const.put("MD5", ccatch);
        f6353const.put(ccatch.m32795super(), ccatch);
        f6353const.put("SHA1", ccatch2);
        f6353const.put(qy0.f5539case, ccatch2);
        f6353const.put(ccatch2.m32795super(), ccatch2);
        f6353const.put("SHA224", ccatch3);
        f6353const.put(qy0.f5542else, ccatch3);
        f6353const.put(ccatch3.m32795super(), ccatch3);
        f6353const.put("SHA256", ccatch4);
        f6353const.put("SHA-256", ccatch4);
        f6353const.put(ccatch4.m32795super(), ccatch4);
        f6353const.put("SHA384", ccatch5);
        f6353const.put(qy0.f5544this, ccatch5);
        f6353const.put(ccatch5.m32795super(), ccatch5);
        f6353const.put("SHA512", ccatch6);
        f6353const.put("SHA-512", ccatch6);
        f6353const.put(ccatch6.m32795super(), ccatch6);
        f6353const.put("SHA512(224)", ccatch7);
        f6353const.put("SHA-512(224)", ccatch7);
        f6353const.put(ccatch7.m32795super(), ccatch7);
        f6353const.put("SHA512(256)", ccatch8);
        f6353const.put("SHA-512(256)", ccatch8);
        f6353const.put(ccatch8.m32795super(), ccatch8);
        f6353const.put("SHA3-224", ccatch9);
        f6353const.put(ccatch9.m32795super(), ccatch9);
        f6353const.put("SHA3-256", ccatch10);
        f6353const.put(ccatch10.m32795super(), ccatch10);
        f6353const.put("SHA3-384", ccatch11);
        f6353const.put(ccatch11.m32795super(), ccatch11);
        f6353const.put("SHA3-512", ccatch12);
        f6353const.put(ccatch12.m32795super(), ccatch12);
    }

    /* renamed from: do, reason: not valid java name */
    public static Digest m7670do(String str) {
        String strM36356final = Cfor.m36356final(str);
        if (f6358if.contains(strM36356final)) {
            return u00.m8176if();
        }
        if (f6354do.contains(strM36356final)) {
            return u00.m8172do();
        }
        if (f6356for.contains(strM36356final)) {
            return u00.m8174for();
        }
        if (f6359new.contains(strM36356final)) {
            return u00.m8177new();
        }
        if (f6361try.contains(strM36356final)) {
            return u00.m8179try();
        }
        if (f6350case.contains(strM36356final)) {
            return u00.m8168break();
        }
        if (f6355else.contains(strM36356final)) {
            return u00.m8170catch();
        }
        if (f6357goto.contains(strM36356final)) {
            return u00.m8171class();
        }
        if (f6360this.contains(strM36356final)) {
            return u00.m8169case();
        }
        if (f6349break.contains(strM36356final)) {
            return u00.m8173else();
        }
        if (f6351catch.contains(strM36356final)) {
            return u00.m8175goto();
        }
        if (f6352class.contains(strM36356final)) {
            return u00.m8178this();
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m7671for(String str, String str2) {
        return (f6358if.contains(str) && f6358if.contains(str2)) || (f6356for.contains(str) && f6356for.contains(str2)) || ((f6359new.contains(str) && f6359new.contains(str2)) || ((f6361try.contains(str) && f6361try.contains(str2)) || ((f6350case.contains(str) && f6350case.contains(str2)) || ((f6355else.contains(str) && f6355else.contains(str2)) || ((f6357goto.contains(str) && f6357goto.contains(str2)) || ((f6360this.contains(str) && f6360this.contains(str2)) || ((f6349break.contains(str) && f6349break.contains(str2)) || ((f6351catch.contains(str) && f6351catch.contains(str2)) || ((f6352class.contains(str) && f6352class.contains(str2)) || (f6354do.contains(str) && f6354do.contains(str2)))))))))));
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccatch m7672if(String str) {
        return (Ccatch) f6353const.get(str);
    }
}
