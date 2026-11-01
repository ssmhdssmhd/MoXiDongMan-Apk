package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class m91 extends Cbreak implements PKCSObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private xq0 f3860do;

    /* renamed from: if, reason: not valid java name */
    private u70 f3861if;

    public m91(xq0 xq0Var, u70 u70Var) {
        this.f3860do = xq0Var;
        this.f3861if = u70Var;
    }

    private m91(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        Csuper csuperM33129catch = Csuper.m33129catch(((ASN1Encodable) enumerationMo33076super.nextElement()).toASN1Primitive());
        ASN1Encodable aSN1EncodableMo33075final = csuperM33129catch.mo33075final(0);
        Ccatch ccatch = PKCSObjectIdentifiers.id_PBKDF2;
        if (aSN1EncodableMo33075final.equals(ccatch)) {
            this.f3860do = new xq0(ccatch, t91.m7786new(csuperM33129catch.mo33075final(1)));
        } else {
            this.f3860do = xq0.m9563try(csuperM33129catch);
        }
        this.f3861if = u70.m8272try(enumerationMo33076super.nextElement());
    }

    /* renamed from: try, reason: not valid java name */
    public static m91 m4870try(Object obj) {
        if (obj instanceof m91) {
            return (m91) obj;
        }
        if (obj != null) {
            return new m91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public xq0 m4871case() {
        return this.f3860do;
    }

    /* renamed from: new, reason: not valid java name */
    public u70 m4872new() {
        return this.f3861if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3860do);
        cimport.m3516do(this.f3861if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
