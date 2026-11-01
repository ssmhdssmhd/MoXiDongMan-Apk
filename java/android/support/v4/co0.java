package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class co0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public ug0 f837do;

    /* renamed from: for, reason: not valid java name */
    public Cinstanceof f838for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f839if;

    public co0(tg2 tg2Var, BigInteger bigInteger) {
        this(new ug0(new tg0(tg2Var)), new Cgoto(bigInteger));
    }

    public co0(ug0 ug0Var, BigInteger bigInteger) {
        this(ug0Var, new Cgoto(bigInteger));
    }

    public co0(ug0 ug0Var, Cgoto cgoto) {
        this.f837do = ug0Var;
        this.f839if = cgoto;
    }

    private co0(Csuper csuper) {
        if (csuper.size() != 2 && csuper.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f837do = ug0.m8436case(csuper.mo33075final(0));
        this.f839if = Cgoto.m33040catch(csuper.mo33075final(1));
        if (csuper.size() == 3) {
            this.f838for = Cinstanceof.m33068public(csuper.mo33075final(2));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static co0 m980new(Object obj) {
        if (obj instanceof co0) {
            return (co0) obj;
        }
        if (obj != null) {
            return new co0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static co0 m981try(Cimport cimport, boolean z) {
        return m980new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public ug0 m982case() {
        return this.f837do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m983else() {
        return this.f838for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m984goto() {
        return this.f839if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f837do);
        cimport.m3516do(this.f839if);
        Cinstanceof cinstanceof = this.f838for;
        if (cinstanceof != null) {
            cimport.m3516do(cinstanceof);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
