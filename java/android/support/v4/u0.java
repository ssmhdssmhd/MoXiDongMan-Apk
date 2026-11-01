package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg0 f6717do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f6718for;

    /* renamed from: if, reason: not valid java name */
    private f21 f6719if;

    public u0(tg0 tg0Var, f21 f21Var, qf1[] qf1VarArr) {
        this.f6717do = tg0Var;
        this.f6719if = f21Var;
        this.f6718for = new org.bouncycastle.asn1.n(qf1VarArr);
    }

    private u0(Csuper csuper) {
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
        if (aSN1Encodable instanceof Cimport) {
            Cimport cimport = (Cimport) aSN1Encodable;
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f6717do = tg0.m7871case(cimport, true);
            } else {
                if (tagNo != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + cimport.getTagNo());
                }
                this.f6719if = f21.m2121try(cimport, true);
            }
            aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
        }
        if (aSN1Encodable instanceof Cimport) {
            Cimport cimport2 = (Cimport) aSN1Encodable;
            if (cimport2.getTagNo() != 1) {
                throw new IllegalArgumentException("Bad tag number: " + cimport2.getTagNo());
            }
            this.f6719if = f21.m2121try(cimport2, true);
            aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
        }
        this.f6718for = Csuper.m33129catch(aSN1Encodable);
        if (enumerationMo33076super.hasMoreElements()) {
            throw new IllegalArgumentException("Bad object encountered: " + enumerationMo33076super.nextElement().getClass());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static u0 m8164try(Object obj) {
        if (obj == null || (obj instanceof u0)) {
            return (u0) obj;
        }
        if (obj instanceof Csuper) {
            return new u0((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public f21 m8165case() {
        return this.f6719if;
    }

    /* renamed from: else, reason: not valid java name */
    public qf1[] m8166else() {
        qf1[] qf1VarArr = new qf1[this.f6718for.size()];
        Enumeration enumerationMo33076super = this.f6718for.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            qf1VarArr[i] = qf1.m6548try(enumerationMo33076super.nextElement());
            i++;
        }
        return qf1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public tg0 m8167new() {
        return this.f6717do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f6717do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f6717do));
        }
        if (this.f6719if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f6719if));
        }
        cimport.m3516do(this.f6718for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
