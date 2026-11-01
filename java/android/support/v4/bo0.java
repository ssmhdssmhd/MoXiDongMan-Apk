package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bo0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg2 f499do;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f500if;

    public bo0(bh2 bh2Var) {
        this.f499do = bh2Var.m549else();
        this.f500if = bh2Var.m551goto();
    }

    public bo0(rg rgVar) {
        this.f499do = rgVar.m6961else();
        this.f500if = rgVar.m6963goto();
    }

    public bo0(tg2 tg2Var, BigInteger bigInteger) {
        this.f499do = tg2Var;
        this.f500if = new Cgoto(bigInteger);
    }

    public bo0(Csuper csuper) {
        this.f499do = tg2.m7884else(csuper.mo33075final(0));
        this.f500if = (Cgoto) csuper.mo33075final(1);
    }

    public bo0(org.bouncycastle.asn1.x509.Cgoto cgoto, BigInteger bigInteger) {
        this.f499do = tg2.m7884else(cgoto);
        this.f500if = new Cgoto(bigInteger);
    }

    public bo0(org.bouncycastle.asn1.x509.Cgoto cgoto, Cgoto cgoto2) {
        this.f499do = tg2.m7884else(cgoto);
        this.f500if = cgoto2;
    }

    /* renamed from: new, reason: not valid java name */
    public static bo0 m601new(Object obj) {
        if (obj instanceof bo0) {
            return (bo0) obj;
        }
        if (obj != null) {
            return new bo0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cgoto m602case() {
        return this.f500if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f499do);
        cimport.m3516do(this.f500if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg2 m603try() {
        return this.f499do;
    }
}
