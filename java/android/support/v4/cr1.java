package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cr1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private s41 f858do;

    /* renamed from: if, reason: not valid java name */
    private i10 f859if;

    public cr1(s41 s41Var, i10 i10Var) {
        this.f858do = s41Var;
        this.f859if = i10Var;
    }

    private cr1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
            if ((aSN1Encodable instanceof i10) || (aSN1Encodable instanceof ASN1String)) {
                this.f859if = i10.m3197new(aSN1Encodable);
            } else {
                if (!(aSN1Encodable instanceof s41) && !(aSN1Encodable instanceof Csuper)) {
                    throw new IllegalArgumentException("Invalid element in 'SPUserNotice': " + aSN1Encodable.getClass().getName());
                }
                this.f858do = s41.m7260try(aSN1Encodable);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static cr1 m1004try(Object obj) {
        if (obj instanceof cr1) {
            return (cr1) obj;
        }
        if (obj != null) {
            return new cr1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public s41 m1005case() {
        return this.f858do;
    }

    /* renamed from: new, reason: not valid java name */
    public i10 m1006new() {
        return this.f859if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        s41 s41Var = this.f858do;
        if (s41Var != null) {
            cimport.m3516do(s41Var);
        }
        i10 i10Var = this.f859if;
        if (i10Var != null) {
            cimport.m3516do(i10Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
