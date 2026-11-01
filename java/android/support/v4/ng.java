package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ng extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f4222do;

    /* renamed from: for, reason: not valid java name */
    private xa1 f4223for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f4224if;

    private ng(Csuper csuper) {
        this.f4222do = Cclass.m32796catch(csuper.mo33075final(0));
        this.f4224if = Cgoto.m33040catch(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            this.f4223for = xa1.m9444try(csuper.mo33075final(2));
        }
    }

    public ng(byte[] bArr, BigInteger bigInteger) {
        this.f4222do = new org.bouncycastle.asn1.j(bArr);
        this.f4224if = new Cgoto(bigInteger);
    }

    public ng(byte[] bArr, BigInteger bigInteger, xa1 xa1Var) {
        this.f4222do = new org.bouncycastle.asn1.j(bArr);
        this.f4224if = new Cgoto(bigInteger);
        this.f4223for = xa1Var;
    }

    /* renamed from: case, reason: not valid java name */
    public static ng m5238case(Object obj) {
        if (obj instanceof ng) {
            return (ng) obj;
        }
        if (obj != null) {
            return new ng(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public xa1 m5239else() {
        return this.f4223for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m5240new() {
        return this.f4222do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4222do);
        cimport.m3516do(this.f4224if);
        xa1 xa1Var = this.f4223for;
        if (xa1Var != null) {
            cimport.m3516do(xa1Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m5241try() {
        return this.f4224if;
    }
}
