package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class nr0 {
    /* renamed from: do, reason: not valid java name */
    public static byte[] m5356do(b1 b1Var, ASN1Encodable aSN1Encodable) {
        try {
            return m5358if(new Cdo(b1Var, aSN1Encodable.toASN1Primitive()));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m5357for(b1 b1Var, ASN1Encodable aSN1Encodable) {
        try {
            return m5360try(new Ctry(b1Var, aSN1Encodable));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m5358if(Cdo cdo) {
        try {
            return cdo.m32764do(ASN1Encoding.DER);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m5359new(b1 b1Var, byte[] bArr) {
        try {
            return m5360try(new Ctry(b1Var, bArr));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m5360try(Ctry ctry) {
        try {
            return ctry.m32764do(ASN1Encoding.DER);
        } catch (Exception unused) {
            return null;
        }
    }
}
