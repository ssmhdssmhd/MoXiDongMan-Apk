package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class te extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    public static final int f6493new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f6494try = 2;

    /* renamed from: do, reason: not valid java name */
    private final b1 f6495do;

    /* renamed from: for, reason: not valid java name */
    private final b1 f6496for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f6497if;

    public te(b1 b1Var, int i, b1 b1Var2) {
        if (b1Var == null || b1Var2 == null) {
            throw new NullPointerException("AlgorithmIdentifiers cannot be null");
        }
        this.f6495do = b1Var;
        if (i == 1) {
            this.f6497if = b1Var2;
            this.f6496for = null;
        } else if (i == 2) {
            this.f6497if = null;
            this.f6496for = b1Var2;
        } else {
            throw new IllegalArgumentException("Unknown type: " + i);
        }
    }

    private te(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("Sequence wrong size: One of signatureAlgorithm or macAlgorithm must be present");
        }
        this.f6495do = b1.m418try(csuper.mo33075final(0));
        Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(1));
        if (cimportM33063catch.getTagNo() == 1) {
            this.f6497if = b1.m417case(cimportM33063catch, false);
            this.f6496for = null;
        } else if (cimportM33063catch.getTagNo() == 2) {
            this.f6497if = null;
            this.f6496for = b1.m417case(cimportM33063catch, false);
        } else {
            throw new IllegalArgumentException("Unknown tag found: " + cimportM33063catch.getTagNo());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static te m7832try(Object obj) {
        if (obj instanceof te) {
            return (te) obj;
        }
        if (obj != null) {
            return new te(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m7833case() {
        return this.f6496for;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m7834else() {
        return this.f6497if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m7835new() {
        return this.f6495do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6495do);
        if (this.f6497if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f6497if));
        }
        if (this.f6496for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f6496for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
