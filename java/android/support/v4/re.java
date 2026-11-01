package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Cif;

/* loaded from: classes3.dex */
public class re extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cif f5764do;

    /* renamed from: for, reason: not valid java name */
    private final ASN1Encodable f5765for;

    /* renamed from: if, reason: not valid java name */
    private final Ccatch f5766if;

    public re(Cif cif, Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f5764do = cif;
        this.f5766if = ccatch;
        this.f5765for = aSN1Encodable;
    }

    private re(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f5764do = Cif.m32837try(csuper.mo33075final(0));
        this.f5766if = Ccatch.m32790throw(csuper.mo33075final(1));
        this.f5765for = csuper.mo33075final(2);
    }

    /* renamed from: else, reason: not valid java name */
    public static re m6935else(Object obj) {
        if (obj instanceof re) {
            return (re) obj;
        }
        if (obj != null) {
            return new re(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m6936case() {
        return this.f5766if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cif m6937new() {
        return this.f5764do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5764do);
        cimport.m3516do(this.f5766if);
        cimport.m3516do(this.f5765for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m6938try() {
        return this.f5765for;
    }
}
