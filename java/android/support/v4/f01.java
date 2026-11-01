package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Cdo;
import org.bouncycastle.asn1.cmc.Cif;

/* loaded from: classes3.dex */
public class f01 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cif f1644do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f1645for;

    /* renamed from: if, reason: not valid java name */
    private final Cdo f1646if;

    /* renamed from: new, reason: not valid java name */
    private final og f1647new;

    public f01(Cif cif, Cdo cdo, boolean z, og ogVar) {
        this.f1644do = cif;
        this.f1646if = cdo;
        this.f1645for = z;
        this.f1647new = ogVar;
    }

    private f01(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() != 4 && csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f1644do = Cif.m32837try(csuper.mo33075final(0));
        this.f1646if = Cdo.m32819try(csuper.mo33075final(1));
        if (csuper.size() == 4) {
            this.f1645for = Cfor.m33019const(csuper.mo33075final(2)).m33022throw();
            aSN1EncodableMo33075final = csuper.mo33075final(3);
        } else {
            this.f1645for = true;
            aSN1EncodableMo33075final = csuper.mo33075final(2);
        }
        this.f1647new = og.m5627try(aSN1EncodableMo33075final);
    }

    /* renamed from: case, reason: not valid java name */
    public static f01 m2080case(Object obj) {
        if (obj instanceof f01) {
            return (f01) obj;
        }
        if (obj != null) {
            return new f01(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cif m2081else() {
        return this.f1644do;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m2082goto() {
        return this.f1645for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo m2083new() {
        return this.f1646if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1644do);
        cimport.m3516do(this.f1646if);
        boolean z = this.f1645for;
        if (!z) {
            cimport.m3516do(Cfor.m33021super(z));
        }
        cimport.m3516do(this.f1647new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public og m2084try() {
        return this.f1647new;
    }
}
