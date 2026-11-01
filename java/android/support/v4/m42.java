package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class m42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f3836do;

    /* renamed from: if, reason: not valid java name */
    private final fr f3837if;

    public m42(ta taVar, fr frVar) {
        this.f3836do = taVar;
        this.f3837if = frVar;
    }

    private m42(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f3836do = ta.m7794case(csuper.mo33075final(0));
        this.f3837if = fr.m2388case(csuper.mo33075final(1));
    }

    /* renamed from: case, reason: not valid java name */
    public static m42 m4839case(Object obj) {
        if (obj instanceof m42) {
            return (m42) obj;
        }
        if (obj != null) {
            return new m42(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static m42 m4840else(Cimport cimport, boolean z) {
        return m4839case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public ta m4841new() {
        return this.f3836do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3836do);
        cimport.m3516do(this.f3837if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public fr m4842try() {
        return this.f3837if;
    }
}
