package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cdo;

/* loaded from: classes3.dex */
public class fo1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f1913do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f1914for;

    /* renamed from: if, reason: not valid java name */
    private Csuper f1915if;

    private fo1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f1913do = Csuper.m33129catch(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            Csuper csuperM33130class = Csuper.m33130class(cimportM33063catch, true);
            if (tagNo == 0) {
                this.f1915if = csuperM33130class;
            } else {
                this.f1914for = csuperM33130class;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static fo1 m2375case(Object obj) {
        if (obj instanceof fo1) {
            return (fo1) obj;
        }
        if (obj != null) {
            return new fo1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m2376new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public dg[] m2377else() {
        Csuper csuper = this.f1915if;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        dg[] dgVarArr = new dg[size];
        for (int i = 0; i != size; i++) {
            dgVarArr[i] = dg.m1330new(this.f1915if.mo33075final(i));
        }
        return dgVarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public xa1[] m2378goto() {
        int size = this.f1913do.size();
        xa1[] xa1VarArr = new xa1[size];
        for (int i = 0; i != size; i++) {
            xa1VarArr[i] = xa1.m9444try(this.f1913do.mo33075final(i));
        }
        return xa1VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1913do);
        m2376new(cimport, 0, this.f1915if);
        m2376new(cimport, 1, this.f1914for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cdo[] m2379try() {
        Csuper csuper = this.f1914for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        Cdo[] cdoArr = new Cdo[size];
        for (int i = 0; i != size; i++) {
            cdoArr[i] = Cdo.m33207new(this.f1914for.mo33075final(i));
        }
        return cdoArr;
    }
}
