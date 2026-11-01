package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class a72 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public xa1 f48do;

    /* renamed from: if, reason: not valid java name */
    public fr f49if;

    public a72(xa1 xa1Var, fr frVar) {
        this.f48do = xa1Var;
        this.f49if = frVar;
    }

    private a72(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f48do = xa1.m9444try(enumerationMo33076super.nextElement());
        if (enumerationMo33076super.hasMoreElements()) {
            this.f49if = fr.m2388case(enumerationMo33076super.nextElement());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static a72 m54new(Object obj) {
        if (obj instanceof a72) {
            return (a72) obj;
        }
        if (obj != null) {
            return new a72(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public fr m55case() {
        return this.f49if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f48do);
        fr frVar = this.f49if;
        if (frVar != null) {
            cimport.m3516do(frVar);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public xa1 m56try() {
        return this.f48do;
    }
}
