package android.support.v4;

import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class vt {

    /* renamed from: do, reason: not valid java name */
    private static final Set<String> f7341do;

    static {
        HashSet hashSet = new HashSet();
        f7341do = hashSet;
        hashSet.add("DES");
        hashSet.add("DESEDE");
        hashSet.add(OIWObjectIdentifiers.desCBC.m32795super());
        Ccatch ccatch = PKCSObjectIdentifiers.des_EDE3_CBC;
        hashSet.add(ccatch.m32795super());
        hashSet.add(ccatch.m32795super());
        hashSet.add(PKCSObjectIdentifiers.id_alg_CMS3DESwrap.m32795super());
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m8955do(String str) {
        return f7341do.contains(Cfor.m36356final(str));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8956if(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            bArr[i] = (byte) (((((b >> 7) ^ ((((((b >> 1) ^ (b >> 2)) ^ (b >> 3)) ^ (b >> 4)) ^ (b >> 5)) ^ (b >> 6))) ^ 1) & 1) | (b & 254));
        }
    }
}
