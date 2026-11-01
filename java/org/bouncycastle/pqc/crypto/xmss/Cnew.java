package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.bq1;
import android.support.v4.dq1;
import android.support.v4.yp1;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static Map<String, Ccatch> f32437do;

    static {
        HashMap map = new HashMap();
        f32437do = map;
        map.put("SHA-256", NISTObjectIdentifiers.id_sha256);
        f32437do.put("SHA-512", NISTObjectIdentifiers.id_sha512);
        f32437do.put("SHAKE128", NISTObjectIdentifiers.id_shake128);
        f32437do.put("SHAKE256", NISTObjectIdentifiers.id_shake256);
    }

    /* renamed from: do, reason: not valid java name */
    public static Digest m35911do(Ccatch ccatch) {
        if (ccatch.equals(NISTObjectIdentifiers.id_sha256)) {
            return new yp1();
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_sha512)) {
            return new bq1();
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake128)) {
            return new dq1(128);
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake256)) {
            return new dq1(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ccatch);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m35912for(Digest digest) {
        boolean z = digest instanceof Xof;
        int digestSize = digest.getDigestSize();
        return z ? digestSize * 2 : digestSize;
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccatch m35913if(String str) {
        Ccatch ccatch = f32437do.get(str);
        if (ccatch != null) {
            return ccatch;
        }
        throw new IllegalArgumentException("unrecognized digest name: " + str);
    }
}
