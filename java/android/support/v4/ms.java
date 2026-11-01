package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ms extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg2 f4020do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f4021for;

    /* renamed from: if, reason: not valid java name */
    private Cnative f4022if;

    public ms(tg2 tg2Var, Cnative cnative) {
        this(tg2Var, cnative, null);
    }

    public ms(tg2 tg2Var, Cnative cnative, BigInteger bigInteger) {
        this.f4020do = tg2Var;
        this.f4022if = cnative;
        if (bigInteger != null) {
            this.f4021for = new Cgoto(bigInteger);
        }
    }

    private ms(Csuper csuper) {
        if (csuper.size() < 2 || csuper.size() > 3) {
            throw new IllegalArgumentException();
        }
        this.f4020do = tg2.m7884else(csuper.mo33075final(0));
        this.f4022if = Cnative.m33086final(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            this.f4021for = Cgoto.m33040catch(csuper.mo33075final(2));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static ms m4991else(Object obj) {
        if (obj instanceof ms) {
            return (ms) obj;
        }
        if (obj != null) {
            return new ms(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m4992case() {
        Cgoto cgoto = this.f4021for;
        if (cgoto == null) {
            return null;
        }
        return cgoto.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public Cnative m4993new() {
        return this.f4022if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4020do.toASN1Primitive());
        cimport.m3516do(this.f4022if);
        Cgoto cgoto = this.f4021for;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg2 m4994try() {
        return this.f4020do;
    }
}
