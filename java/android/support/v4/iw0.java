package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class iw0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f2909do;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f2910if;

    public iw0(ta taVar, Csuper csuper) {
        this.f2909do = taVar;
        this.f2910if = csuper;
    }

    private iw0(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f2909do = ta.m7794case(csuper.mo33075final(0));
        this.f2910if = Csuper.m33129catch(csuper.mo33075final(1));
    }

    /* renamed from: try, reason: not valid java name */
    public static iw0 m3627try(Object obj) {
        if (obj instanceof iw0) {
            return (iw0) obj;
        }
        if (obj != null) {
            return new iw0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ta m3628case() {
        return this.f2909do;
    }

    /* renamed from: new, reason: not valid java name */
    public ta[] m3629new() {
        ta[] taVarArr = new ta[this.f2910if.size()];
        for (int i = 0; i != this.f2910if.size(); i++) {
            taVarArr[i] = ta.m7794case(this.f2910if.mo33075final(i));
        }
        return taVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2909do);
        cimport.m3516do(this.f2910if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
