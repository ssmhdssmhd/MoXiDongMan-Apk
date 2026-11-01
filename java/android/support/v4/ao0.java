package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ao0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public tg2 f219do;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f220if;

    public ao0(tg2 tg2Var, BigInteger bigInteger) {
        this.f219do = tg2Var;
        this.f220if = new Cgoto(bigInteger);
    }

    private ao0(Csuper csuper) {
        this.f219do = tg2.m7884else(csuper.mo33075final(0));
        this.f220if = (Cgoto) csuper.mo33075final(1);
    }

    public ao0(org.bouncycastle.asn1.x509.Cgoto cgoto, BigInteger bigInteger) {
        this.f219do = tg2.m7884else(cgoto.toASN1Primitive());
        this.f220if = new Cgoto(bigInteger);
    }

    public ao0(org.bouncycastle.asn1.x509.Cgoto cgoto, Cgoto cgoto2) {
        this.f219do = tg2.m7884else(cgoto.toASN1Primitive());
        this.f220if = cgoto2;
    }

    /* renamed from: try, reason: not valid java name */
    public static ao0 m291try(Object obj) {
        if (obj instanceof ao0) {
            return (ao0) obj;
        }
        if (obj != null) {
            return new ao0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public tg2 m292case() {
        return this.f219do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m293new() {
        return this.f220if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f219do);
        cimport.m3516do(this.f220if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
