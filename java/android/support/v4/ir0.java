package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ir0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private xa1 f2828do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f2829for;

    /* renamed from: if, reason: not valid java name */
    private se f2830if;

    /* renamed from: new, reason: not valid java name */
    private Csuper f2831new;

    private ir0(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2828do = xa1.m9444try(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f2830if = se.m7371new(cimportM33063catch.m33065const());
            } else if (tagNo == 1) {
                this.f2829for = Csuper.m33129catch(cimportM33063catch.m33065const());
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("unknown tag number: " + cimportM33063catch.getTagNo());
                }
                this.f2831new = Csuper.m33129catch(cimportM33063catch.m33065const());
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static ir0 m3547case(Object obj) {
        if (obj instanceof ir0) {
            return (ir0) obj;
        }
        if (obj != null) {
            return new ir0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m3548new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public ah[] m3549else() {
        Csuper csuper = this.f2831new;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        ah[] ahVarArr = new ah[size];
        for (int i = 0; i != size; i++) {
            ahVarArr[i] = ah.m245try(this.f2831new.mo33075final(i));
        }
        return ahVarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public se m3550goto() {
        return this.f2830if;
    }

    /* renamed from: this, reason: not valid java name */
    public xa1 m3551this() {
        return this.f2828do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2828do);
        m3548new(cimport, 0, this.f2830if);
        m3548new(cimport, 1, this.f2829for);
        m3548new(cimport, 2, this.f2831new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public se[] m3552try() {
        Csuper csuper = this.f2829for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        se[] seVarArr = new se[size];
        for (int i = 0; i != size; i++) {
            seVarArr[i] = se.m7371new(this.f2829for.mo33075final(i));
        }
        return seVarArr;
    }
}
