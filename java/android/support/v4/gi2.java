package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gi2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f2146do;

    /* renamed from: for, reason: not valid java name */
    private final b1 f2147for;

    /* renamed from: if, reason: not valid java name */
    private final int f2148if;

    public gi2(int i, b1 b1Var) {
        this.f2146do = new Cgoto(0L);
        this.f2148if = i;
        this.f2147for = b1Var;
    }

    private gi2(Csuper csuper) {
        this.f2146do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f2148if = Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue();
        this.f2147for = b1.m418try(csuper.mo33075final(2));
    }

    /* renamed from: try, reason: not valid java name */
    public static gi2 m2697try(Object obj) {
        if (obj instanceof gi2) {
            return (gi2) obj;
        }
        if (obj != null) {
            return new gi2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m2698case() {
        return this.f2147for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m2699new() {
        return this.f2148if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2146do);
        cimport.m3516do(new Cgoto(this.f2148if));
        cimport.m3516do(this.f2147for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
