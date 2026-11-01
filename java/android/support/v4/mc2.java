package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class mc2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private int f3881do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f3882if;

    public mc2(int i, BigInteger bigInteger) {
        this.f3881do = i;
        this.f3882if = bigInteger;
    }

    private mc2(Cimport cimport) {
        this.f3881do = cimport.getTagNo();
        this.f3882if = new BigInteger(1, Cclass.m32797class(cimport, false).mo5490const());
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m4902new() {
        byte[] byteArray = this.f3882if.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static mc2 m4903try(Object obj) {
        if (obj instanceof mc2) {
            return (mc2) obj;
        }
        if (obj != null) {
            return new mc2(Cimport.m33063catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m4904case() {
        return this.f3882if;
    }

    public int getTagNo() {
        return this.f3881do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f3881do, new org.bouncycastle.asn1.j(m4902new()));
    }
}
