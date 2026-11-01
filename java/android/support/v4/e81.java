package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class e81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private t62 f1288do;

    /* renamed from: if, reason: not valid java name */
    private t62 f1289if;

    public e81(t62 t62Var, t62 t62Var2) {
        if (t62Var == null && t62Var2 == null) {
            throw new IllegalArgumentException("at least one of notBefore/notAfter must not be null.");
        }
        this.f1288do = t62Var;
        this.f1289if = t62Var2;
    }

    private e81(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            t62 t62VarM7733case = t62.m7733case(cimport, true);
            if (tagNo == 0) {
                this.f1288do = t62VarM7733case;
            } else {
                this.f1289if = t62VarM7733case;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static e81 m1687new(Object obj) {
        if (obj instanceof e81) {
            return (e81) obj;
        }
        if (obj != null) {
            return new e81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public t62 m1688case() {
        return this.f1288do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f1288do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f1288do));
        }
        if (this.f1289if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f1289if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public t62 m1689try() {
        return this.f1289if;
    }
}
