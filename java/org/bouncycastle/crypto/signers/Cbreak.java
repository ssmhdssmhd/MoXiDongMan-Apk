package org.bouncycastle.crypto.signers;

import android.support.v4.Cimport;
import android.support.v4.q3;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.crypto.signers.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak implements DSAEncoding {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f30346do = new Cbreak();

    @Override // org.bouncycastle.crypto.signers.DSAEncoding
    public BigInteger[] decode(BigInteger bigInteger, byte[] bArr) throws IOException {
        Csuper csuper = (Csuper) Cfinal.m33015else(bArr);
        if (csuper.size() == 2) {
            BigInteger bigIntegerM33904if = m33904if(bigInteger, csuper, 0);
            BigInteger bigIntegerM33904if2 = m33904if(bigInteger, csuper, 1);
            if (q3.m6362case(encode(bigInteger, bigIntegerM33904if, bigIntegerM33904if2), bArr)) {
                return new BigInteger[]{bigIntegerM33904if, bigIntegerM33904if2};
            }
        }
        throw new IllegalArgumentException("Malformed signature");
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m33902do(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger2.signum() < 0 || (bigInteger != null && bigInteger2.compareTo(bigInteger) >= 0)) {
            throw new IllegalArgumentException("Value out of range");
        }
        return bigInteger2;
    }

    @Override // org.bouncycastle.crypto.signers.DSAEncoding
    public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) throws IOException {
        Cimport cimport = new Cimport();
        m33903for(bigInteger, cimport, bigInteger2);
        m33903for(bigInteger, cimport, bigInteger3);
        return new n(cimport).m32764do(ASN1Encoding.DER);
    }

    /* renamed from: for, reason: not valid java name */
    public void m33903for(BigInteger bigInteger, Cimport cimport, BigInteger bigInteger2) {
        cimport.m3516do(new Cgoto(m33902do(bigInteger, bigInteger2)));
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m33904if(BigInteger bigInteger, Csuper csuper, int i) {
        return m33902do(bigInteger, ((Cgoto) csuper.mo33075final(i)).m33044final());
    }
}
