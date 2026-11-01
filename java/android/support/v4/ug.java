package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class ug extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final fe1[] f6882do;

    public ug(fe1 fe1Var) {
        this.f6882do = new fe1[]{fe1Var};
    }

    private ug(Csuper csuper) {
        this.f6882do = new fe1[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            this.f6882do[i] = fe1.m2258new(csuper.mo33075final(i));
        }
    }

    public ug(fe1[] fe1VarArr) {
        this.f6882do = m8432new(fe1VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static ug m8430case(Object obj) {
        if (obj instanceof ug) {
            return (ug) obj;
        }
        if (obj != null) {
            return new ug(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static ug m8431else(Cimport cimport, boolean z) {
        return m8430case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private fe1[] m8432new(fe1[] fe1VarArr) {
        fe1[] fe1VarArr2 = new fe1[fe1VarArr.length];
        System.arraycopy(fe1VarArr, 0, fe1VarArr2, 0, fe1VarArr.length);
        return fe1VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static ug m8433try(y90 y90Var) {
        return m8430case(y90Var.m9791this(Cif.f29328public));
    }

    /* renamed from: goto, reason: not valid java name */
    public fe1 m8434goto(Ccatch ccatch) {
        int i = 0;
        while (true) {
            fe1[] fe1VarArr = this.f6882do;
            if (i == fe1VarArr.length) {
                return null;
            }
            if (ccatch.equals(fe1VarArr[i].m2260try())) {
                return this.f6882do[i];
            }
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public fe1[] m8435this() {
        return m8432new(this.f6882do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f6882do);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.f6882do.length; i++) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.f6882do[i]);
        }
        return "CertificatePolicies: [" + ((Object) stringBuffer) + "]";
    }
}
