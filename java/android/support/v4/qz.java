package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class qz extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final bo0 f5551do;

    /* renamed from: if, reason: not valid java name */
    private final Cclass f5552if;

    public qz(bo0 bo0Var, byte[] bArr) {
        this.f5551do = bo0Var;
        this.f5552if = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
    }

    private qz(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() == 1) {
            this.f5551do = null;
            aSN1EncodableMo33075final = csuper.mo33075final(0);
        } else {
            if (csuper.size() != 2) {
                throw new IllegalArgumentException("sequence wrong length for DhSigStatic");
            }
            this.f5551do = bo0.m601new(csuper.mo33075final(0));
            aSN1EncodableMo33075final = csuper.mo33075final(1);
        }
        this.f5552if = Cclass.m32796catch(aSN1EncodableMo33075final);
    }

    public qz(byte[] bArr) {
        this(null, bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static qz m6690try(Object obj) {
        if (obj instanceof qz) {
            return (qz) obj;
        }
        if (obj != null) {
            return new qz(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public bo0 m6691case() {
        return this.f5551do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m6692new() {
        return q3.m6371final(this.f5552if.mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        bo0 bo0Var = this.f5551do;
        if (bo0Var != null) {
            cimport.m3516do(bo0Var);
        }
        cimport.m3516do(this.f5552if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
