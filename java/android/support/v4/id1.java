package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class id1 extends Cbreak implements PKCSObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private er f2673do;

    /* renamed from: if, reason: not valid java name */
    private yw0 f2674if;

    public id1(er erVar, yw0 yw0Var) {
        this.f2674if = null;
        this.f2673do = erVar;
        this.f2674if = yw0Var;
    }

    private id1(Csuper csuper) {
        this.f2674if = null;
        if (Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().intValue() != 3) {
            throw new IllegalArgumentException("wrong version for PFX PDU");
        }
        this.f2673do = er.m1996case(csuper.mo33075final(1));
        if (csuper.size() == 3) {
            this.f2674if = yw0.m9974new(csuper.mo33075final(2));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static id1 m3381try(Object obj) {
        if (obj instanceof id1) {
            return (id1) obj;
        }
        if (obj != null) {
            return new id1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public yw0 m3382case() {
        return this.f2674if;
    }

    /* renamed from: new, reason: not valid java name */
    public er m3383new() {
        return this.f2673do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(3L));
        cimport.m3516do(this.f2673do);
        yw0 yw0Var = this.f2674if;
        if (yw0Var != null) {
            cimport.m3516do(yw0Var);
        }
        return new Cpackage(cimport);
    }
}
