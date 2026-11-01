package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class jr0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f3202do;

    /* renamed from: if, reason: not valid java name */
    private Cclass f3203if;

    public jr0(Ccatch ccatch, Cclass cclass) {
        this.f3202do = ccatch;
        this.f3203if = cclass;
    }

    private jr0(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3202do = (Ccatch) enumerationMo33076super.nextElement();
        this.f3203if = (Cclass) enumerationMo33076super.nextElement();
    }

    /* renamed from: case, reason: not valid java name */
    public static jr0 m4071case(Object obj) {
        if (obj instanceof jr0) {
            return (jr0) obj;
        }
        if (obj != null) {
            return new jr0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m4072new() {
        return this.f3202do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3202do);
        cimport.m3516do(this.f3203if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cclass m4073try() {
        return this.f3203if;
    }
}
