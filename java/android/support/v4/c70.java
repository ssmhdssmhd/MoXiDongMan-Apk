package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.Cdo;

/* loaded from: classes3.dex */
public class c70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f623do;

    /* renamed from: if, reason: not valid java name */
    private final ASN1Encodable f624if;

    public c70(Cdo cdo) {
        this.f623do = cdo;
        this.f624if = null;
    }

    public c70(Cdo cdo, tg0 tg0Var) {
        this.f623do = cdo;
        this.f624if = tg0Var;
    }

    public c70(Cdo cdo, org.bouncycastle.asn1.v vVar) {
        this.f623do = cdo;
        this.f624if = vVar;
    }

    private c70(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        this.f623do = Cdo.m33100try(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            boolean z = csuper.mo33075final(1) instanceof org.bouncycastle.asn1.v;
            aSN1EncodableMo33075final = csuper.mo33075final(1);
            if (!z) {
                aSN1EncodableMo33075final = tg0.m7877try(aSN1EncodableMo33075final);
            }
        } else {
            aSN1EncodableMo33075final = null;
        }
        this.f624if = aSN1EncodableMo33075final;
    }

    /* renamed from: try, reason: not valid java name */
    public static c70 m779try(Object obj) {
        if (obj instanceof c70) {
            return (c70) obj;
        }
        if (obj != null) {
            return new c70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cdo m780case() {
        return this.f623do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m781else() {
        return this.f624if != null;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m782goto() {
        return this.f624if instanceof org.bouncycastle.asn1.v;
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m783new() {
        return this.f624if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f623do);
        ASN1Encodable aSN1Encodable = this.f624if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
