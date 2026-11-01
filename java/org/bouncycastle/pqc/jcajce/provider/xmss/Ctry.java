package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.bq1;
import android.support.v4.dq1;
import android.support.v4.yp1;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    /* renamed from: do, reason: not valid java name */
    public static Digest m36112do(Ccatch ccatch) {
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
    public static int m36113for(Digest digest) {
        boolean z = digest instanceof Xof;
        int digestSize = digest.getDigestSize();
        return z ? digestSize * 2 : digestSize;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m36114if(Digest digest) {
        int iM36113for = m36113for(digest);
        byte[] bArr = new byte[iM36113for];
        if (digest instanceof Xof) {
            ((Xof) digest).doFinal(bArr, 0, iM36113for);
        } else {
            digest.doFinal(bArr, 0);
        }
        return bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m36115new(Ccatch ccatch) {
        if (ccatch.equals(NISTObjectIdentifiers.id_sha256)) {
            return "SHA256";
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_sha512)) {
            return "SHA512";
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake128)) {
            return "SHAKE128";
        }
        if (ccatch.equals(NISTObjectIdentifiers.id_shake256)) {
            return "SHAKE256";
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + ccatch);
    }
}
