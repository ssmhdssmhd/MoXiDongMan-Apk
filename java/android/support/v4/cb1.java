package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cb1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f726do;

    private cb1(Csuper csuper) {
        this.f726do = csuper;
    }

    /* renamed from: new, reason: not valid java name */
    public static cb1 m839new(Object obj) {
        if (obj instanceof cb1) {
            return (cb1) obj;
        }
        if (obj != null) {
            return new cb1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f726do;
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto[] m840try() {
        int size = this.f726do.size();
        Cgoto[] cgotoArr = new Cgoto[size];
        for (int i = 0; i != size; i++) {
            cgotoArr[i] = Cgoto.m33040catch(this.f726do.mo33075final(i));
        }
        return cgotoArr;
    }
}
