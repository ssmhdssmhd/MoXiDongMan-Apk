package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class s90 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f6047do;

    /* renamed from: if, reason: not valid java name */
    private final ASN1Encodable f6048if;

    public s90(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6047do = ccatch;
        this.f6048if = aSN1Encodable;
    }

    private s90(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("Sequence must be 2 elements.");
        }
        this.f6047do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f6048if = csuper.mo33075final(1);
    }

    /* renamed from: case, reason: not valid java name */
    public static s90 m7305case(Object obj) {
        if (obj instanceof s90) {
            return (s90) obj;
        }
        if (!(obj instanceof ASN1Encodable)) {
            if (obj instanceof byte[]) {
                return m7305case(Csuper.m33129catch(obj));
            }
            return null;
        }
        Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        if (aSN1Primitive instanceof Csuper) {
            return new s90((Csuper) aSN1Primitive);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m7306new() {
        return this.f6047do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(new ASN1Encodable[]{this.f6047do, this.f6048if});
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m7307try() {
        return this.f6048if;
    }
}
