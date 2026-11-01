package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class dg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg0 f1039do;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f1040if;

    public dg(tg0 tg0Var, BigInteger bigInteger) {
        this(tg0Var, new Cgoto(bigInteger));
    }

    public dg(tg0 tg0Var, Cgoto cgoto) {
        this.f1039do = tg0Var;
        this.f1040if = cgoto;
    }

    private dg(Csuper csuper) {
        this.f1039do = tg0.m7877try(csuper.mo33075final(0));
        this.f1040if = Cgoto.m33040catch(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static dg m1330new(Object obj) {
        if (obj instanceof dg) {
            return (dg) obj;
        }
        if (obj != null) {
            return new dg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static dg m1331try(Cimport cimport, boolean z) {
        return m1330new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public tg0 m1332case() {
        return this.f1039do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m1333else() {
        return this.f1040if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1039do);
        cimport.m3516do(this.f1040if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
