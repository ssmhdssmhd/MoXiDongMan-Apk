package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class zf extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f8524do;

    private zf(Csuper csuper) {
        this.f8524do = csuper;
    }

    /* renamed from: new, reason: not valid java name */
    public static zf m10164new(Object obj) {
        if (obj instanceof zf) {
            return (zf) obj;
        }
        if (obj != null) {
            return new zf(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f8524do;
    }

    /* renamed from: try, reason: not valid java name */
    public ng[] m10165try() {
        int size = this.f8524do.size();
        ng[] ngVarArr = new ng[size];
        for (int i = 0; i != size; i++) {
            ngVarArr[i] = ng.m5238case(this.f8524do.mo33075final(i));
        }
        return ngVarArr;
    }
}
