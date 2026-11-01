package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cdo;

/* loaded from: classes3.dex */
public class we extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f7502do;

    private we(Csuper csuper) {
        this.f7502do = csuper;
    }

    public we(Cdo cdo) {
        this.f7502do = new org.bouncycastle.asn1.n(cdo);
    }

    /* renamed from: try, reason: not valid java name */
    public static we m9125try(Object obj) {
        if (obj instanceof we) {
            return (we) obj;
        }
        if (obj != null) {
            return new we(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo[] m9126new() {
        int size = this.f7502do.size();
        Cdo[] cdoArr = new Cdo[size];
        for (int i = 0; i != size; i++) {
            cdoArr[i] = Cdo.m33207new(this.f7502do.mo33075final(i));
        }
        return cdoArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7502do;
    }
}
