package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class j50 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2972do;

    public j50(BigInteger bigInteger) {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(1L));
        cimport.m3516do(new org.bouncycastle.asn1.j(bArrM36313if));
        this.f2972do = new org.bouncycastle.asn1.n(cimport);
    }

    public j50(BigInteger bigInteger, ASN1Encodable aSN1Encodable) {
        this(bigInteger, null, aSN1Encodable);
    }

    public j50(BigInteger bigInteger, Cinstanceof cinstanceof, ASN1Encodable aSN1Encodable) {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(1L));
        cimport.m3516do(new org.bouncycastle.asn1.j(bArrM36313if));
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, aSN1Encodable));
        }
        if (cinstanceof != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, cinstanceof));
        }
        this.f2972do = new org.bouncycastle.asn1.n(cimport);
    }

    public j50(Csuper csuper) {
        this.f2972do = csuper;
    }

    /* renamed from: try, reason: not valid java name */
    private Cfinal m3723try(int i) {
        Enumeration enumerationMo33076super = this.f2972do.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable instanceof Cimport) {
                Cimport cimport = (Cimport) aSN1Encodable;
                if (cimport.getTagNo() == i) {
                    return cimport.m33065const().toASN1Primitive();
                }
            }
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cfinal m3724case() {
        return m3723try(0);
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m3725else() {
        return (Cinstanceof) m3723try(1);
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m3726new() {
        return new BigInteger(1, ((Cclass) this.f2972do.mo33075final(1)).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2972do;
    }
}
