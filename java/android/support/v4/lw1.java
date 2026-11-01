package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class lw1 {

    /* renamed from: do, reason: not valid java name */
    private static Map f3788do;

    static {
        HashMap map = new HashMap();
        f3788do = map;
        map.put(PKCSObjectIdentifiers.des_EDE3_CBC.m32795super(), hn0.m3072for(192));
        f3788do.put(NISTObjectIdentifiers.id_aes128_CBC, hn0.m3072for(128));
        f3788do.put(NISTObjectIdentifiers.id_aes192_CBC, hn0.m3072for(192));
        f3788do.put(NISTObjectIdentifiers.id_aes256_CBC, hn0.m3072for(256));
        f3788do.put(NTTObjectIdentifiers.id_camellia128_cbc, hn0.m3072for(128));
        f3788do.put(NTTObjectIdentifiers.id_camellia192_cbc, hn0.m3072for(192));
        f3788do.put(NTTObjectIdentifiers.id_camellia256_cbc, hn0.m3072for(256));
    }

    /* renamed from: do, reason: not valid java name */
    public static int m4796do(Ccatch ccatch) {
        Integer num = (Integer) f3788do.get(ccatch);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
