package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class i01 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private zn0 f2576do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f2577for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f2578if;

    public i01(zn0 zn0Var, int i, int i2) {
        this.f2576do = zn0Var;
        this.f2578if = new Cgoto(i);
        this.f2577for = new Cgoto(i2);
    }

    private i01(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2576do = zn0.m10250try(enumerationMo33076super.nextElement());
        this.f2578if = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f2577for = Cgoto.m33040catch(enumerationMo33076super.nextElement());
    }

    /* renamed from: else, reason: not valid java name */
    public static i01 m3181else(Object obj) {
        if (obj instanceof i01) {
            return (i01) obj;
        }
        if (obj != null) {
            return new i01(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m3182case() {
        return this.f2577for.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m3183new() {
        return this.f2578if.m33044final();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2576do);
        cimport.m3516do(this.f2578if);
        cimport.m3516do(this.f2577for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public zn0 m3184try() {
        return this.f2576do;
    }
}
