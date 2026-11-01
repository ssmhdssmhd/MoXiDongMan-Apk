package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class p81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f4876do;

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof f4877if;

    public p81(b1 b1Var, byte[] bArr) {
        this.f4876do = b1Var;
        this.f4877if = new Cinstanceof(bArr);
    }

    public p81(Csuper csuper) {
        this.f4876do = b1.m418try(csuper.mo33075final(0));
        this.f4877if = (Cinstanceof) csuper.mo33075final(1);
    }

    /* renamed from: case, reason: not valid java name */
    public static p81 m5913case(Cimport cimport, boolean z) {
        return m5914try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static p81 m5914try(Object obj) {
        if (obj instanceof p81) {
            return (p81) obj;
        }
        if (obj != null) {
            return new p81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m5915else() {
        return this.f4877if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m5916new() {
        return this.f4876do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4876do);
        cimport.m3516do(this.f4877if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
