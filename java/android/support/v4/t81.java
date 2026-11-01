package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class t81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private jr0 f6447do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f6448for;

    /* renamed from: if, reason: not valid java name */
    private Cclass f6449if;

    public t81(jr0 jr0Var, Cclass cclass, Cclass cclass2) {
        this.f6447do = jr0Var;
        this.f6449if = cclass;
        this.f6448for = cclass2;
    }

    private t81(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f6447do = jr0.m4071case(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            if (cimport.getTagNo() == 0) {
                this.f6449if = (Cclass) cimport.m33065const();
            } else if (cimport.getTagNo() == 2) {
                this.f6448for = (Cclass) cimport.m33065const();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static t81 m7782new(Object obj) {
        if (obj instanceof t81) {
            return (t81) obj;
        }
        if (obj != null) {
            return new t81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cclass m7783case() {
        return this.f6449if;
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m7784else() {
        return this.f6448for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6447do);
        if (this.f6449if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f6449if));
        }
        cimport.m3516do(new org.bouncycastle.asn1.u(2, this.f6448for));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public jr0 m7785try() {
        return this.f6447do;
    }
}
