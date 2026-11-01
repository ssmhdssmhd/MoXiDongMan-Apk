package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f7115do;

    /* renamed from: for, reason: not valid java name */
    private final ASN1Encodable f7116for;

    /* renamed from: if, reason: not valid java name */
    private final Ccatch f7117if;

    public v81(ta taVar, Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7115do = taVar;
        this.f7117if = ccatch;
        this.f7116for = aSN1Encodable;
    }

    private v81(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f7115do = ta.m7794case(csuper.mo33075final(0));
        this.f7117if = Ccatch.m32790throw(csuper.mo33075final(1));
        this.f7116for = csuper.mo33075final(2);
    }

    /* renamed from: case, reason: not valid java name */
    public static v81 m8777case(Cimport cimport, boolean z) {
        return m8778try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static v81 m8778try(Object obj) {
        if (obj instanceof v81) {
            return (v81) obj;
        }
        if (obj != null) {
            return new v81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Ccatch m8779else() {
        return this.f7117if;
    }

    /* renamed from: goto, reason: not valid java name */
    public ASN1Encodable m8780goto() {
        return this.f7116for;
    }

    /* renamed from: new, reason: not valid java name */
    public ta m8781new() {
        return this.f7115do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7115do);
        cimport.m3516do(this.f7117if);
        cimport.m3516do(this.f7116for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
