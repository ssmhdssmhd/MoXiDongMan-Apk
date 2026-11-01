package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class n50 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f4120do;

    /* renamed from: if, reason: not valid java name */
    private co0 f4121if;

    private n50(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f4120do = Cclass.m32796catch(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f4121if = co0.m980new(csuper.mo33075final(1));
        }
    }

    public n50(byte[] bArr) {
        this.f4120do = new org.bouncycastle.asn1.j(bArr);
    }

    public n50(byte[] bArr, co0 co0Var) {
        this.f4120do = new org.bouncycastle.asn1.j(bArr);
        this.f4121if = co0Var;
    }

    /* renamed from: try, reason: not valid java name */
    public static n50 m5089try(Object obj) {
        if (obj instanceof n50) {
            return (n50) obj;
        }
        if (obj != null) {
            return new n50(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public co0 m5090case() {
        return this.f4121if;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5091new() {
        return this.f4120do.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4120do);
        co0 co0Var = this.f4121if;
        if (co0Var != null) {
            cimport.m3516do(co0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
