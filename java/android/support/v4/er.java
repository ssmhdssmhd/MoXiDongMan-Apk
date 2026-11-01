package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cvolatile;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class er extends Cbreak implements PKCSObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f1564do;

    /* renamed from: for, reason: not valid java name */
    private boolean f1565for;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f1566if;

    public er(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f1565for = true;
        this.f1564do = ccatch;
        this.f1566if = aSN1Encodable;
    }

    private er(Csuper csuper) {
        this.f1565for = true;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f1564do = (Ccatch) enumerationMo33076super.nextElement();
        if (enumerationMo33076super.hasMoreElements()) {
            this.f1566if = ((Cimport) enumerationMo33076super.nextElement()).m33065const();
        }
        this.f1565for = csuper instanceof Cpackage;
    }

    /* renamed from: case, reason: not valid java name */
    public static er m1996case(Object obj) {
        if (obj instanceof er) {
            return (er) obj;
        }
        if (obj != null) {
            return new er(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m1997new() {
        return this.f1566if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1564do);
        ASN1Encodable aSN1Encodable = this.f1566if;
        if (aSN1Encodable != null) {
            cimport.m3516do(new Cvolatile(true, 0, aSN1Encodable));
        }
        return this.f1565for ? new Cpackage(cimport) : new org.bouncycastle.asn1.d0(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m1998try() {
        return this.f1564do;
    }
}
